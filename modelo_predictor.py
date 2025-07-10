"""
import tensorflow as tf
import numpy as np
from PIL import Image

# Cargar el modelo una sola vez
modelo = tf.keras.models.load_model("modelo_multietiqueta.h5")

# Clases en el orden exacto del entrenamiento
clases = ['Acchocha','Altamizo', 'Torongil', 'cedron', 'pushasha', 'romero', 'ruda', 'sabila', 'tomate'] 

def predecir(imagen):
    try:
        imagen = imagen.convert("RGB")
        # Asegurar tamaño correcto
        imagen = imagen.resize((100, 100))
        img_array = np.array(imagen) / 255.0
        img_array = np.expand_dims(img_array, axis=0)
    
        # Predicción
        pred = modelo.predict(img_array)
        clase_predicha = clases[np.argmax(pred)]
        confianza = np.max(pred)

        return clase_predicha, confianza
    except Exception as e:
        print(f"Error al procesar la imagen: {e}")
        return None, None
"""
import numpy as np
from PIL import Image
import tensorflow as tf

# Cargar el modelo una sola vez
modelo = tf.keras.models.load_model("modelo_multietiqueta.h5")

# Clases en el orden exacto del entrenamiento
clases = ['Acchocha', 'Altamizo', 'Torongil', 'cedron', 'pushasha', 'romero', 'ruda', 'sabila', 'tomate']

def predecir_multietiqueta(imagen, umbral=0.5):
    try:
        imagen = imagen.convert("RGB")
        imagen = imagen.resize((100, 100))
        img_array = np.array(imagen) / 255.0
        img_array = np.expand_dims(img_array, axis=0)

        predicciones = modelo.predict(img_array)[0]  # vector de prob. para cada clase
        clases_predichas = [clase for clase, prob in zip(clases, predicciones) if prob >= umbral]
        resultado_detallado = {clase: float(prob) for clase, prob in zip(clases, predicciones)}

        return clases_predichas, resultado_detallado
    except Exception as e:
        print(f"Error al procesar la imagen: {e}")
        return None, None
