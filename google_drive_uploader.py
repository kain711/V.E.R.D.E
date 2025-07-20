# Tu archivo principal (ej: app.py)

import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
# from remove_bg import *  # Descomenta si la usas
from modelo_predictor import predecir_etiquetas
from PIL import Image
import os

# Importa la función que acabamos de crear
from google_drive_uploader import subir_a_drive_con_servicio

# Define el ID de la carpeta de Drive en un solo lugar
FOLDER_ID = "1J7PURzLitSdQ1lrL9aiac_-l_vimFhfQ"

# Configuración de la página
st.set_page_config(
    page_title="V.E.R.D.E. 🌱 | Reconocimiento de Plantas",
    page_icon="🌿",
    layout="wide",
    initial_sidebar_state="expanded"
)

# Estilos CSS (sin cambios)
st.markdown(
    """
    <style>
    .block-container {
        background-color: rgba(255, 255, 255, 0.75);
        backdrop-filter: blur(4px);
        padding: 2rem;
        border-radius: 10px;
    }
    </style>
    """,
    unsafe_allow_html=True
)

# Títulos (sin cambios)
st.markdown("<h1 style='text-align: center; color: #2e7d32;'>🌿 V.E.R.D.E.</h1>", unsafe_allow_html=True)
st.markdown("<h3 style='text-align: center; color: #555;'>Visión Ecológica para el Reconocimiento de Diversas Especies</h3>", unsafe_allow_html=True)
st.markdown("<p style='text-align: center; font-size:18px; color: #777;'>Identifica, aprende y protege.</p>", unsafe_allow_html=True)


def inicio():
    st.write("Esta es la página de inicio de la aplicación. Aqui puedes subir una foto de una planta y descubrir sus beneficios.")
    st.write("Para comenzar, haz clic en el botón 'Subir foto'.")
    
def subir_foto():
    uploaded_file = st.file_uploader("📷 Elige una foto de la planta", type=["jpg", "jpeg", "png"])
    
    if uploaded_file is not None:
        try:
            # Cargar imagen con PIL para la predicción
            imagen_pil = Image.open(uploaded_file)
            
            # Mostrar la imagen cargada en la app
            st.image(imagen_pil, caption="🌿 Imagen cargada", use_column_width=True)

            # --- CAMBIOS IMPORTANTES AQUÍ ---
            # Sube el archivo directamente desde la memoria, sin guardarlo temporalmente.
            # .getvalue() lee los datos del archivo subido como bytes.
            with st.spinner("Subiendo imagen a Google Drive..."):
                bytes_de_imagen = uploaded_file.getvalue()
                enlace_drive = subir_a_drive_con_servicio(bytes_de_imagen, uploaded_file.name, FOLDER_ID)

            # Si la subida fue exitosa, muestra el enlace
            if enlace_drive:
                st.success("✅ Imagen subida a Google Drive")
                st.markdown(f"[🔗 Ver imagen en Drive]({enlace_drive})")
            # --- FIN DE LOS CAMBIOS ---

            # Botón para hacer predicción (usa la imagen ya cargada en memoria)
            if st.button("🔍 Obtener detalles planta"):
                with st.spinner("Analizando la planta..."):
                    clases, conf = predecir_etiquetas(imagen_pil)
                    if clases and conf:
                        resultado = "\n".join(f"- {label}: {conf[label]*100:.2f}%" for label in clases)
                        st.success(f"🌿 La planta parece ser:\n{resultado}")
                    else:
                        st.warning("⚠️ No se pudo realizar la predicción.")
        except Exception as e:
            st.error(f"❌ Error al procesar la imagen: {e}")


#*************Inicio de la pagina********************
if __name__=="__main__":
    with st.sidebar:
        st.header("🌱 Navegación")
        opcion = st.radio("Ir a:", ["Inicio", "Diccionario", "FAQ"])
        st.markdown("---")
        st.caption("Proyecto académico • Big Data 2025")
    
    if opcion=="Inicio":
        inicio()
        subir_foto()
    elif opcion=="Diccionario":
        inicio_diccionario()
    elif opcion=="FAQ":
        FAQ.inicio_faq()
