import streamlit as st
from PIL import Image
import os

def inicio_diccionario():
    st.title("🌿 Carrusel de Plantas")

    # Lista de plantas (orden alfabético)
    plantas = sorted([
        "Acchocha", "Altamizo", "Cedron", "Pushasha",
        "Romero", "Ruda", "Tomate", "Torongil"
    ])

    # Estado del índice actual
    if "planta_index" not in st.session_state:
        st.session_state.planta_index = 0

    # Navegación
    col1, col2, col3 = st.columns([1, 2, 1])
    with col1:
        if st.button("⬅️ Anterior"):
            st.session_state.planta_index = (st.session_state.planta_index - 1) % len(plantas)
    with col3:
        if st.button("Siguiente ➡️"):
            st.session_state.planta_index = (st.session_state.planta_index + 1) % len(plantas)
    with col2:
        st.button("🔍 Ver detalles", disabled=True)

    # Planta actual
    planta_actual = plantas[st.session_state.planta_index]
    st.subheader(f"📘 {planta_actual}")
    

    # Ruta de imagen (debes tener una imagen por planta con ese nombre en plantas_img/)
    ruta_imagen = os.path.join("plantas_img", f"{planta_actual}.png")
    if os.path.exists(ruta_imagen):
        st.image(Image.open(ruta_imagen), use_column_width=True)
    else:
        st.warning("⚠️ Imagen no encontrada.")

    # Botón de acción (a implementar después)
    
    st.markdown("---" * 50)
    st.markdown("## No es lo que buscabas? Puedes agregar una nueva planta al diccionario.")
    # Agregar nueva planta
    if st.button("Agregar nueva planta"):
        st.write("Funcionalidad de agregar planta aún no implementada.")
        # Aquí podrías implementar la lógica para agregar una nueva planta al diccionario.
        # Podrías usar un formulario para ingresar el nombre, imagen y descripción de la planta.
        #st.write("Para ingresar una nueva planta, ingresa sus datos en el formulario a continuación:")
        
        # imagen_planta = st.file_uploader("Sube una imagen de la planta", type=["jpg", "jpeg", "png"])
        # if imagen_planta is not None:
        #     nombre_planta = st.text_input("Nombre de la planta")
        #
        #     nombre_cientifico = st.text_input("Nombre científico de la planta")
        
        #aqui usar una consulta a la base de datos para ver si ya existe
    
        
        #     st.image(imagen_planta, caption="Imagen de la planta", use_column_width=True)
        #     descripcion_planta = st.text_area("Descripción de la planta")