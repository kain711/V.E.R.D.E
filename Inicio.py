import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
from remove_bg import *
from modelo_predictor import predecir_etiquetas
from PIL import Image
import os
from google_drive_uploader import   subir_a_drive_con_servicio
from modelo_predictor import predecir_etiquetas
FOLDER_ID = "1W43Xxmuz-VobzdRfoTwvqRUw4z7ToN-w"
st.set_page_config(
    page_title="V.E.R.D.E. 🌱 | Reconocimiento de Plantas",
    page_icon="🌿",
    layout="wide",
    initial_sidebar_state="expanded"
)
#cambiar color de fondo
st.markdown(
    """
  
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



# Título central y subtítulo con énfasis
st.markdown("<h1 style='text-align: center; color: #2e7d32;'>🌿 V.E.R.D.E.</h1>", unsafe_allow_html=True)
st.markdown("<h3 style='text-align: center; color: #555;'>Visión Ecológica para el Reconocimiento de Diversas Especies</h3>", unsafe_allow_html=True)

# Frase inspiradora
st.markdown("<p style='text-align: center; font-size:18px; color: #777;'>Identifica, aprende y protege.</p>", unsafe_allow_html=True)


def inicio():
    
    
    st.write("Esta es la página de inicio de la aplicación. Aqui puedes subir una foto de una planta y descubrir sus beneficios.")
    st.write("Para comenzar, haz clic en el botón 'Subir foto'.")
    
def subir_foto():
    uploaded_file = st.file_uploader("📷 Elige una foto de la planta", type=["jpg", "jpeg", "png"])
    
    FOLDER_ID = "1J7PURzLitSdQ1lrL9aiac_-l_vimFhfQ"

    if uploaded_file is not None:
        imagen = Image.open(uploaded_file)
        #imagen.save("temp.jpg")

        #enlace = subir_a_drive_con_servicio("temp.jpg", uploaded_file.name, FOLDER_ID)
        st.success("✅ Imagen subida a Google Drive")
        #st.markdown(f"[🔗 Ver imagen]({enlace})")
        #obtener etiquetas de la imagen
        #mostrar la predicción
        etiquetas = predecir_etiquetas(imagen)
        st.write("### Etiquetas Predichas:")
        if etiquetas:
            for etiqueta in etiquetas:
                st.write(f"- {etiqueta}")
                #formatar la etiqueta para mostrar si es medicinal o comestible
                if etiqueta.startswith("medicinal_"):
                    etiqueta_formateada = etiqueta.replace("medicinal_", "Medicinal: ").title()
                else:
                    etiqueta_formateada = etiqueta.replace("_", " ").title()
                st.write(f"- {etiqueta_formateada}")
        else:
            st.write("No se pudieron predecir etiquetas para esta imagen.")
               



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