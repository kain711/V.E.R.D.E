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

    # Planta actual
    planta_actual = plantas[st.session_state.planta_index]
    st.subheader(f"📘 {planta_actual}")

    # Ruta de imagen (debes tener una imagen por planta con ese nombre en plantas_img/)
    ruta_imagen = os.path.join("plantas_img", f"{planta_actual}.jpg")
    if os.path.exists(ruta_imagen):
        st.image(Image.open(ruta_imagen), use_column_width=True)
    else:
        st.warning("⚠️ Imagen no encontrada.")

    # Botón de acción (a implementar después)
    st.button("🔍 Ver detalles", disabled=True)
