import streamlit as st
from FAQ import formulario_sugerencias
from Diccionario import inicio_diccionario
from PIL import Image
from modelo_predictor import predecir_etiquetas
from sqlalchemy import create_engine
from pathlib import Path
import pandas as pd
#obtener la ruta absoluta del directorio actual
script_dir = Path(__file__).parent
#construir la ruta completa a la base de datos
db_path = script_dir / "VERDE.db"
#crear el enginie usando la ruta absoluta
#DB_URL = 'postgresql+psycopg2://proyectofinal:rZGqCr99dLsIrdk3gyh9Rd2CloMxJd8Z@dpg-d1r5hlbe5dus73ea3utg-a.oregon-postgres.render.com/verde_db'
engine= create_engine(f'sqlite:///{db_path}')


st.set_page_config(
    page_title="V.E.R.D.E. 🌱 | Reconocimiento de Plantas",
    page_icon="🌿",
    layout="wide",
    initial_sidebar_state="expanded"
)
# Banner superior si lo tienes (ej. banner.png en el mismo folder)
st.image("banner.png", use_column_width=True)

# Título central y subtítulo con énfasis
st.markdown("<h1 style='text-align: center; color: #2e7d32;'>🌿 V.E.R.D.E.</h1>", unsafe_allow_html=True)
st.markdown("<h3 style='text-align: center; color: #555;'>Visión Ecológica para el Reconocimiento de Diversas Especies</h3>", unsafe_allow_html=True)

# Frase inspiradora
st.markdown("<p style='text-align: center; font-size:18px; color: #777;'>Identifica, aprende y protege la flora que nos rodea.</p>", unsafe_allow_html=True)
with st.sidebar:
    st.header("🌱 Navegación")
    opcion = st.radio("Ir a:", ["Inicio", "Reconocimiento", "Diccionario", "FAQ"])
    
    st.markdown("---")
    st.caption("Proyecto académico • Big Data 2025")

def inicio():
   #agregar descripción del proyecto
   st.markdown("""
# 🌿 Bienvenido a **V.E.R.D.E.**
### _Visión Electrónica para el Reconocimiento y Detección de Especies_

---

🔍 **¿Qué hace nuestro sistema?**  
Con solo una **foto de una planta**, nuestro sistema identifica su **su categoria**, y te dice si es **comestible**, **medicinal**, o ambas.

🧠 Gracias a un modelo de inteligencia artificial entrenado con imágenes reales, V.E.R.D.E. reconoce especies locales con precisión y rapidez.

📸 **Toma una foto, descubre su poder.**

---

🌱 Ideal para:
- Agricultores
- Estudiantes
- Docentes
- Curiosos de la naturaleza

""", unsafe_allow_html=True)


def subir_foto():
    uploaded_file = st.file_uploader("Elige una foto", type=["jpg", "jpeg", "png"])
    
    if uploaded_file is not None:
        # Convertir el archivo subido a una imagen PIL
        try:
            imagen = Image.open(uploaded_file)
            ancho, alto = imagen.size

            nuevo_ancho = 500
            nuevo_alto = int(alto * nuevo_ancho / ancho)
            img_n= imagen.resize((nuevo_ancho, nuevo_alto), Image.LANCZOS)

            st.image(img_n, caption="Foto subida.", use_column_width=True,width=100)
            st.write("La foto ha sido subida correctamente.")
            
            
            with st.spinner("Procesando imagen..."):
                # Aquí puedes agregar cualquier procesamiento adicional si es necesario
                

            # Llamada a la función de predicción
                clases, conf = predecir_etiquetas(imagen)

            # Verificar si la predicción fue exitosa
            if clases and conf is not None:
                pred_text="\n".join(
                    f"- {label}: {conf[label]*100:.2f}%" for label in clases
                )
                st.success(f"🌿La planta parece ser :\n{pred_text}")
            else:
                st.error("⚠️ No se pudo realizar la predicción.")
        
        except Exception as e:
            st.error(f"Error al procesar la imagen: {e}")
            return
    st.markdown("---" * 50)
    st.markdown("V.E.R.D.E esta en constante evolución. Si los datos presentados son erroneos, por favor reportalo en la seccion de **FAQ**.")
   
    
#*************Inicio de la pagina********************
if __name__=="__main__":
   
    inicio()
    if opcion=="Reconocimiento":
        subir_foto()
    elif opcion=="Diccionario":
        inicio_diccionario(engine)
    elif opcion=="FAQ":
        formulario_sugerencias(engine)