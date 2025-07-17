import streamlit as st
from PIL import Image
import os
import psycopg2 

def mostrar_formulario_planta():
    #Conectar a la base de datos
    #DB_URL='postgresql://proyectofinal:rZGqCr99dLsIrdk3gyh9Rd2CloMxJd8Z@dpg-d1r5hlbe5dus73ea3utg-a.oregon-postgres.render.com/verde_db'
    # === CONECTAR A LA BASE DE DATOS ===
    #conn = psycopg2.connect(DB_URL)
    #cur = conn.cursor()
    
    """Muestra un formulario para agregar una nueva planta y maneja el envío."""
    st.subheader("Formulario para Nueva Planta")
    st.write("Completa los siguientes campos para registrar una nueva planta en el diccionario.")
    if "show_form" not in st.session_state:
        st.session_state.show_form = True
    
    # Usar st.form para agrupar los campos y tener un único botón de envío
    with st.form(key="nueva_planta_form", clear_on_submit=True):
        # --- Campos del formulario ---
        st.write("----"*100)
        st.write("Datos generales de la planta")
        imagen_planta = st.file_uploader("Sube una imagen de la planta", type=["jpg", "jpeg", "png"])
        nombre_planta = st.text_input("Nombre comun de la planta")
        nombre_cientifico = st.text_input("Nombre científico de la planta")
        familia=st.text_input("Familia de la planta")
        #en categoria puede seleccionar mas de una categoria
        categoria = st.multiselect("Categorías de la planta", ["Medicinal", "Comestible", "Decorativa", "Aromática", "Tóxica", "Otro"])
        descripcion = st.text_area("Descripción de la planta", height=100)
        st.write("----"*100)
        st.write("Caracteristicas ambientales")
        tipo_suelo = st.selectbox("Tipo de suelo", ["Arcilloso", "Arenoso", "Franco", "Pedregoso"])
        ph_suelo = st.slider("pH del suelo", 0.0, 14.0, 7.0)
        humedad_suelo = st.slider("Humedad del suelo (%)", 0, 100, 50)
        temperatura_optima = st.slider("Temperatura óptima (°C)", 0, 50, 20)  
        luz_necesaria = st.selectbox("Nivel de luz necesario", ["Baja", "Media", "Alta"])
        st.write("----"*100)
        st.write("Datos de Ubicacacion")
        #longitud y latitud
        latitud = st.number_input("Latitud", format="%.6f", step=0.000001, value=0.0)
        longitud = st.number_input("Longitud", format="%.6f", step=0.0)
        #altura sobre el nivel del mar
        altura = st.number_input("Altura sobre el nivel del mar (m)", min_value=0, value=0)
        region= st.selectbox("Región geográfica", ["Sierra", "Costa", "Amazonia", "Insular"])
        
        temporada_siembra = st.selectbox("Temporada de siembra", ["Primavera", "Verano", "Otoño", "Invierno"])
        # Temporada de floración y cosecha
        temporada_floracion = st.selectbox("Temporada de floración", ["Primavera", "Verano", "Otoño", "Invierno"])
        temporada_cosecha = st.selectbox("Temporada de cosecha", ["Primavera", "Verano", "Otoño", "Invierno"])
        
        
        #comprobar si el nombre ingresado ya existe en la base de datos
        
        

        
        
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
                #st.session_state.show_form = False
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
        mostrar_formulario_planta()
    
 
        
