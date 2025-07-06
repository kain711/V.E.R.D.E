import streamlit as st
from PIL import Image
import pandas as pd
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
    st.title(" Analizador de Archivos de Datos")
    archivo = st.file_uploader("Sube un archivo CSV o Excel", type=["csv", "xlsx", "xls"])

    if archivo is not None:
        with st.spinner("🦫 El capibara está procesando tus datos... por favor espera... 🧠💻"):
            time.sleep(1)
            try:
                if archivo.name.endswith(".csv"):
                    df = pd.read_csv(archivo)
                else:
                    df = pd.read_excel(archivo)

                st.success(f"✅ Archivo cargado: {archivo.name}")
                st.subheader("📋 Vista previa de los datos")
                st.dataframe(df)

                st.subheader("📈 Estadísticas generales")
                st.write(df.describe())

                columnas = df.select_dtypes(include=["object", "category"]).columns.tolist()
                columnas_numericas = df.select_dtypes(include=["int64", "float64"]).columns.tolist()

                if columnas:
                    opcion_barra = st.selectbox("📊 Selecciona columna categórica (barras)", columnas)
                    if opcion_barra:
                        conteo = df[opcion_barra].value_counts()
                        fig, ax = plt.subplots()
                        conteo.plot(kind="bar", ax=ax)
                        ax.set_ylabel("Frecuencia")
                        ax.set_title(f"Distribución de {opcion_barra}")
                        st.pyplot(fig)

                if columnas:
                    opcion_pastel = st.selectbox("🥧 Selecciona columna (pastel)", columnas, key="pastel")
                    if opcion_pastel:
                        conteo = df[opcion_pastel].value_counts()
                        fig2, ax2 = plt.subplots()
                        conteo.plot(kind="pie", autopct="%1.1f%%", ax=ax2)
                        ax2.set_ylabel("")
                        ax2.set_title(f"Distribución de {opcion_pastel}")
                        st.pyplot(fig2)

                if columnas_numericas:
                    opcion_histograma = st.selectbox("📈 Selecciona columna numérica (histograma)", columnas_numericas)
                    if opcion_histograma:
                        fig3, ax3 = plt.subplots()
                        df[opcion_histograma].hist(bins=20, ax=ax3)
                        ax3.set_title(f"Histograma de {opcion_histograma}")
                        st.pyplot(fig3)

            except Exception as e:
                st.error(f"❌ Error al procesar el archivo: {e}")
    else:
        st.info("📂 Por favor, sube un archivo para comenzar.")