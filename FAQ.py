import streamlit as st
from PIL import Image

import matplotlib.pyplot as plt
import time

#Configuraciones para personalización
FUENTE = "Arial"
TAM_TEXTO = "20px"
TAM_TITULO = "25px"
TAM_IMAGEN = 200  # Ancho en píxeles de las imágenes de integrantes
def inicio_faq():
#  Estilo CSS personalizado
    st.markdown(f"""
        <style>
        html, body, [class*="css"]  {{
            font-family: {FUENTE};
            font-size: {TAM_TEXTO};
        }}
        h1 {{
            font-size: {TAM_TITULO};
        }}
        </style>
    """, unsafe_allow_html=True)

    # Título principal
    st.title("V.E.R.D.E")

    # Descripción del proyecto
    st.write(
        "Desarrollar un sistema inteligente de reconocimiento de plantas locales, "
        "utilizando técnicas avanzadas de procesamiento de imágenes y algoritmos de "
        "aprendizaje automático supervisado, que permita la identificación y "
        "clasificación automática de especies vegetales pertenecientes a la ciudad de Cuenca."
    )

    #Datos del equipo
    integrantes = [
        {
            "nombre": "Alexis Matute",
            "imagen": "Contactos/imajen.1.png",
            "correo": "alexis.matute.est@tecazuay.edu.ec",
            "genero": "Masculino",
            "edad": 18,
            "aporte": "Desarrollo del modelo de clasificación de especies."
        },
        {
            "nombre": "Andres Mejia",
            "imagen": "Contactos/imajen.2.png",
            "correo": "jose.mejia.est@tecazuay.edu.ec",
            "genero": "Masculino",
            "edad": 23,
            "aporte": "Diseño de la interfaz y procesamiento de imágenes."
        },
        {
            "nombre": "Paulo Tenecela",
            "imagen": "Contactos/imajen.3.png",
            "correo": "paulo.tenecela.est@tecazuay.edu.ec",
            "genero": "Masculino",
            "edad": 25,
            "aporte": "Recolección de datos y validación del sistema."
        }
    ]

    # Mostrar integrantes
    cols = st.columns(3)
    for col, integrante in zip(cols, integrantes):
        with col:
            st.image(Image.open(integrante["imagen"]), width=TAM_IMAGEN)
            st.markdown(f"### {integrante['nombre']}")
            st.write(f"📧 Correo: {integrante['correo']}")
            st.write(f"👤 Género: {integrante['genero']}")
            st.write(f"🎂 Edad: {integrante['edad']} años")
            st.write(f"🧩 Aporte: {integrante['aporte']}")

    # Analizador de archivos
    