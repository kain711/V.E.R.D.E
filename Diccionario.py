import streamlit as st
from PIL import Image
import os

def mostrar_formulario_planta():
    """Muestra un formulario para agregar una nueva planta y maneja el envío."""
    st.subheader("Formulario para Nueva Planta")
    st.write("Completa los siguientes campos para registrar una nueva planta en el diccionario.")

    # Usar st.form para agrupar los campos y tener un único botón de envío
    with st.form(key="nueva_planta_form", clear_on_submit=True):
        # --- Campos del formulario ---
        imagen_planta = st.file_uploader("Sube una imagen de la planta", type=["jpg", "jpeg", "png"])
        nombre_planta = st.text_input("Nombre de la planta")
        nombre_cientifico = st.text_input("Nombre científico de la planta")
        

        st.markdown("---")
        st.markdown("##### Datos Geográficos")
        latitud = st.number_input("Latitud", format="%.6f")
        longitud = st.number_input("Longitud", format="%.6f")
        region = st.selectbox("Región", ["Amazonia", "Andes", "Costa", "Selva", "Sierra"])
        altura_snm = st.number_input("Altura sobre el nivel del mar (metros)", min_value=0, step=1)
        categoria = st.selectbox("Categoría", ["Comestible", "Medicinal", "Ambas"])

        st.markdown("---")
        st.markdown("##### Condiciones ambientales donde prospera la planta")
        temperatura=st.number_input("Temperatura °C",format="%.2f")
        ph_suelo=st.number_input("PH del suelo",format="%.2f")
        tipo_suelo=st.selectbox("Tipo de suelo",["Arcilloso","","Arenoso","Loamoso","Otro(especifique)"])
        nivel_humedad=st.number_input("Nivel de humedad",format="%.2f")
        
        # --- Botón de envío del formulario ---
        submitted = st.form_submit_button("Guardar Planta")

        if submitted:
            # --- Validación y Recopilación de Datos ---
            if not nombre_planta or not imagen_planta:
                st.error("Por favor, completa al menos el nombre y sube una imagen.")
            else:
                # Aquí iría la lógica para guardar en la base de datos
                st.success(f"¡Planta '{nombre_planta}' guardada exitosamente!")
                st.info("La funcionalidad de guardado en la base de datos aún no está implementada.")
                # Opcional: Ocultar el formulario después de guardar
                st.session_state.show_form = False
                st.experimental_rerun()

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
        st.session_state.show_form = True

    # Mostrar el formulario si el estado es verdadero
    if "show_form" in st.session_state and st.session_state.show_form:
        mostrar_formulario_planta()
