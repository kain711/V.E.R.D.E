import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
from remove_bg import *
from modelo_predictor import predecir

def inicio():
    st.title("Bienvenido a la página de inicio de V.E.R.D.E")
    st.write("Esta es la página de inicio de la aplicación. Aqui puedes subir una foto de una planta y descubrir sus beneficios.")
    st.write("Para comenzar, haz clic en el botón 'Subir foto'.")
    
def subir_foto():
    uploaded_file=st.file_uploader("Elige una foto",type=["jpg","jpeg","png"])
    if uploaded_file is not None:
        st.image(uploaded_file, caption="Foto subida.", use_column_width=True)
        st.write("La foto ha sido subida correctamente.")
        st.write("Ahora puedes explorar los beneficios de la planta.")
        foto_procesada=procesar_img(uploaded_file)
        st.image(foto_procesada,caption="Foto procesada",use_column_width=True)
        st.write("Esta es la foto que usa el algorimo de ML para detectar la planta")
        clase, conf = predecir(foto_procesada)
        st.success(f"🌿 La planta parece ser: **{clase}** con una confianza de {conf:.2%}")


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