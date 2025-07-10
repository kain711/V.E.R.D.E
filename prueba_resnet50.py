import os
import numpy as np
import tensorflow as tf
from tensorflow.keras.applications import ResNet50
from tensorflow.keras.models import Model
from tensorflow.keras.layers import GlobalAveragePooling2D, Dense, Dropout
from tensorflow.keras.preprocessing.image import ImageDataGenerator
from tensorflow.keras.callbacks import EarlyStopping
from sklearn.utils import class_weight
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.metrics import classification_report, confusion_matrix
import pandas as pd
from tensorflow.keras.preprocessing.image import img_to_array

# ----------- CONFIGURACIÓN GENERAL -----------

ruta_dataset = r"G:\train_data_complete"  # Ruta al conjunto de datos
input_shape = (100, 100, 3)  # Imágenes RGB sin fondo
batch_size = 16
epochs = 30

# ----------- CARGAR MODELO PREENTRENADO (ResNet50) -----------

base_model = ResNet50(weights='imagenet', include_top=False, input_shape=input_shape)

# Congelar las capas base para evitar sobreajuste durante el entrenamiento inicial
base_model.trainable = False

# Añadir nuevas capas para el ajuste fino (fine-tuning)
x = base_model.output
x = GlobalAveragePooling2D()(x)
x = Dense(1024, activation='relu')(x)
x = Dropout(0.3)(x)  # Dropout para prevenir sobreajuste
x = Dense(len(os.listdir(os.path.join(ruta_dataset, "train"))), activation='softmax')(x)  # Número de clases

# Crear el modelo final
model = Model(inputs=base_model.input, outputs=x)

# ----------- COMPILACIÓN -----------

model.compile(
    loss='categorical_crossentropy',
    optimizer='adam',
    metrics=['accuracy']
)

# ----------- FUNCIÓN PARA AGREGAR RUIDO A LA IMAGEN -----------

def agregar_ruido(imagen, intensidad=0.1):
    """Añadir ruido gaussiano a la imagen"""
    imagen_array = np.array(imagen)
    ruido = np.random.normal(0, intensidad, imagen_array.shape)  # Ruido gaussiano
    imagen_ruidosa = np.clip(imagen_array + ruido, 0, 255)  # Añadir el ruido y asegurar que los valores estén entre 0 y 255
    return img_to_array(imagen_ruidosa)

# ----------- GENERADORES Y AUMENTACIÓN DE DATOS -----------

train_gen = ImageDataGenerator(
    rescale=1./255,
    rotation_range=30,  # Mayor rango de rotación
    zoom_range=0.2,  # Mayor zoom
    width_shift_range=0.2,  # Desplazamiento horizontal mayor
    height_shift_range=0.2,  # Desplazamiento vertical mayor
    shear_range=0.2,  # Cortar aleatoriamente
    horizontal_flip=True,
    vertical_flip=True,  # Agregar volteo vertical
    fill_mode='nearest',  # Rellenar con el valor de píxel más cercano
    preprocessing_function=lambda x: agregar_ruido(x)  # Añadir ruido a las imágenes
)

val_gen = ImageDataGenerator(rescale=1./255)  # Solo reescalado para validación

# Cargar los datos de entrenamiento y validación
train_data = train_gen.flow_from_directory(
    os.path.join(ruta_dataset, "train"),
    target_size=(100, 100),
    batch_size=batch_size,
    class_mode='categorical',
    shuffle=True
)

val_data = val_gen.flow_from_directory(
    os.path.join(ruta_dataset, "validation"),
    target_size=(100, 100),
    batch_size=batch_size,
    class_mode='categorical',
    shuffle=False
)

# ----------- CALCULAR PESOS DE CLASE -----------

y_train_labels = train_data.classes
pesos = class_weight.compute_class_weight(
    class_weight='balanced',
    classes=np.unique(y_train_labels),
    y=y_train_labels
)
class_weights = dict(enumerate(pesos))
print("🧮 Pesos de clase aplicados:", class_weights)

# ----------- ENTRENAMIENTO -----------

early_stop = EarlyStopping(patience=5, restore_best_weights=True)

history = model.fit(
    train_data,
    validation_data=val_data,
    epochs=epochs,
    class_weight=class_weights,  # Pesos de clases aplicados durante el entrenamiento
    callbacks=[early_stop]
)

# ----------- GUARDAR MODELO -----------

model.save("modelo_resnet50_9clases_con_ruido.h5")
print("✅ Modelo guardado como modelo_resnet50_9clases_con_ruido.h5")

# Guardar historial del entrenamiento
pd.DataFrame(history.history).to_csv("historial_entrenamiento_resnet_con_ruido.csv")

# ----------- REPORTE DE MÉTRICAS -----------

# Predicción
val_data.reset()
y_true = val_data.classes
y_pred_probs = model.predict(val_data, verbose=0)
y_pred = np.argmax(y_pred_probs, axis=1)  # Usar np.argmax para obtener la clase con la probabilidad más alta

# Etiquetas de clase
class_labels = list(val_data.class_indices.keys())

# Reporte de clasificación
print("📊 Reporte de clasificación:")
print(classification_report(y_true, y_pred, target_names=class_labels))

# Matriz de Confusión
cm = confusion_matrix(y_true, y_pred)
plt.figure(figsize=(7, 6))
sns.heatmap(cm, annot=True, fmt='d', cmap='Blues',
            xticklabels=class_labels,
            yticklabels=class_labels)
plt.xlabel('Predicción')
plt.ylabel('Etiqueta real')
plt.title('Matriz de Confusión - Validación')
plt.tight_layout()
plt.show()
