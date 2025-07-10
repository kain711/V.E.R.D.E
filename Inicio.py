import streamlit as st
import FAQ
from Diccionario import inicio_diccionario
from remove_bg import *
from modelo_predictor import predecir_etiquetas

def inicio():
    st.title("Bienvenido a la página de inicio de V.E.R.D.E")
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
                st.success(f"🌿 La planta parece ser: **{clases}** con una confianza de {conf:.2%}")
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