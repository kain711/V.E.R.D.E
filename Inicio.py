import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
from PIL import Image
from modelo_predictor import predecir_etiquetas
#from PIL import Image
#configuracion inicial de la pagina

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
            st.image(imagen, caption="Foto subida.", use_column_width=True)
            st.write("La foto ha sido subida correctamente.")
            st.write("Ahora puedes explorar los beneficios de la planta.")
            
            # Mostrar la imagen procesada (opcional)
            st.image(imagen, caption="Foto procesada", use_column_width=True)
            st.write("Esta es la foto que usa el algoritmo de ML para detectar la planta")
            
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
    st.markdown("V.E.R.D.E esta en constante evolución. Si los datos presentados son erroneos, por favor reportalo en el formulario a continuacion")
   
    #crear formulario de reporte
    st.subheader("Formulario de Reporte de Error")
    with st.form("formulario_reporte"):
        st.write("Nombre de la planta que ingresaste:")
        nombre_planta = st.text_input("Nombre de la planta", "")
        categoria_entregada = st.text_input("Categoria entregada por el sistema(toma en cuenta el porcentje mas alto)", "")
        categoria_correcta = st.text_input("Categoria correcta", "")
        calificacion_sistema = st.slider("Calificación del sistema (1-5)", 1, 5, 3)
        comentarios = st.text_area("Comentarios adicionales", "")
        
        # --- Botón de envío del formulario ---
        submitted = st.form_submit_button("Enviar Reporte")
        if submitted:
            # Aquí iría la lógica para guardar en la base de datos o enviar el reporte
            st.success("¡Reporte enviado exitosamente! Gracias por ayudarnos a mejorar V.E.R.D.E.")
            # Opcional: Ocultar el formulario después de enviar
            #st.session_state.show_form = False
            st.experimental_rerun()

#*************Inicio de la pagina********************
if __name__=="__main__":
    #st.sidebar.title("Menú")
    #pagina=st.sidebar.radio("Selecciona una página",["Inicio","Diccionario","FAQ"])
    inicio()
    if opcion=="Reconocimiento":
        #inicio()
        subir_foto()
    elif opcion=="Diccionario":
        inicio_diccionario()
    elif opcion=="FAQ":
        FAQ.inicio_faq()