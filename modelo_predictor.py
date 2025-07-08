import tensorflow as tf
import numpy as np
from PIL import Image

# Cargar el modelo una sola vez
modelo = tf.keras.models.load_model("modelo_cnn_9clases.h5")

# Clases en el orden exacto del entrenamiento
clases = ['Acchocha','Altamizo', 'Torongil', 'cedron', 'pushasha', 'romero', 'ruda', 'sabila', 'tomate'] 

def predecir(imagen):
    # Asegurar tamaño correcto
    imagen = imagen.resize((100, 100))
    imagen = imagen.convert("RGB")
    img_array = np.array(imagen) / 255.0
    img_array = np.expand_dims(img_array, axis=0)
    
    # Predicción
    pred = modelo.predict(img_array)
    clase_predicha = clases[np.argmax(pred)]
    confianza = np.max(pred)
    
    return clase_predicha, confianza

