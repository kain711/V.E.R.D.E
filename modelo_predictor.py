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

# Nombres de las etiquetas en el mismo orden que se entrenó el modelo
etiquetas = ['comestible', 'medicinal']

def predecir_etiquetas(imagen, umbral=0.5):
    try:
        imagen = imagen.convert("RGB")
        imagen = imagen.resize((100, 100))
        img_array = np.array(imagen) / 255.0
        img_array = np.expand_dims(img_array, axis=0)

        # Predicción
        predicciones = modelo.predict(img_array)[0]  # vector de tamaño 2
        resultado = {etiqueta: float(prob) for etiqueta, prob in zip(etiquetas, predicciones)}
        etiquetas_activadas = [etiqueta for etiqueta, prob in resultado.items() if prob >= umbral]

        return etiquetas_activadas, resultado
    except Exception as e:
        print(f"Error al procesar la imagen: {e}")
        return None, None
