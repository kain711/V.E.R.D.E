import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
from remove_bg import *
from modelo_predictor import predecir_etiquetas
st.set_page_config(page_title="V.E.R.D.E:Visión Ecológica para el Reconocimiento de Diversas Especies", page_icon="🌿", layout="wide")
 
def inicio():
    #formatear pagina principal
   
    st.image("banner.png", use_column_width=True)

    st.subheader("Identifica,aprende, protege ")
    #st.title("Bienvenido a la página de inicio de V.E.R.D.E")
    
    st.write("Esta es la página de inicio de la aplicación. Aqui puedes subir una foto de una planta y descubrir sus beneficios.")
    st.write("Para comenzar, haz clic en el botón 'Subir foto'.")
    
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



#*************Inicio de la pagina********************
if __name__=="__main__":
    st.sidebar.title("Menú")
    pagina=st.sidebar.radio("Selecciona una página",["Inicio","Diccionario","FAQ"])
    if pagina=="Inicio":
        inicio()
        subir_foto()
    elif pagina=="Diccionario":
        inicio_diccionario()
    elif pagina=="FAQ":
        FAQ.inicio_faq()