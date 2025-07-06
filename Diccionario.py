import streamlit as st


"""
ruta_imagenes = "G:\VERDE-Vision-electronica-de-reconocimiento-de-especies\pagina_web\imagenes_dicc"
imagenes = sorted([img for img in os.listdir(ruta_imagenes) if img.lower().endswith(".jpg")])

def inicio_diccionario():
    st.header("Diccionario de beneficios")
    st.write("Selecciona una planta para ver sus beneficios.")
    

    # Obtener la lista de imágenes
    imagenes = sorted([img for img in os.listdir(ruta_imagenes) if img.lower().endswith(".jpg")])

    if not imagenes:
        st.warning("No se encontraron imágenes en la carpeta.")
        return

    # Inicializar índice del carrusel
    if "indice_diccionario" not in st.session_state:
        st.session_state.indice_diccionario = 0

    # Imagen actual
    imagen_actual = imagenes[st.session_state.indice_diccionario]
    st.image(os.path.join(ruta_imagenes, imagen_actual), use_column_width=True)

    # Nombre de la especie a partir del nombre del archivo
    especie_actual = imagen_actual.split("_")[0].lower()

    # Botón para mostrar info
    if st.button("Ver información de la planta 🌱"):
        info = df_info[df_info['especie'].str.lower() == especie_actual]

        if not info.empty:
            planta = info.iloc[0]
            with st.expander(f"🌼 {planta['nombre_comun']} ({planta['especie']})"):
                st.markdown(f"**Nombre común:** {planta['nombre_comun']}")
                st.markdown(f"**Nombre científico:** {planta['especie']}")
                st.markdown(f"**Descripción:** {planta['descripcion']}")
        else:
            st.info("No se encontró información registrada para esta planta.")

    # Controles de navegación
    col1, col2, col3 = st.columns([1, 2, 1])

    with col1:
        if st.button("⬅️ Anterior"):
            if st.session_state.indice_diccionario > 0:
                st.session_state.indice_diccionario -= 1

    with col3:
        if st.button("Siguiente ➡️"):
            if st.session_state.indice_diccionario < len(imagenes) - 1:
                st.session_state.indice_diccionario += 1

    # Indicador de posición
    st.caption(f"Imagen {st.session_state.indice_diccionario + 1} de {len(imagenes)}")
"""

def inicio_diccionario():
    st.title("🌿 Diccionario de Plantas Locales")

    # Cargar la información desde el archivo CSV
    #df_info = pd.read_csv("plantas_info.csv")  # columnas: especie,nombre_comun,descripcion

    # Carpeta de imágenes
    ruta_imagenes = r"G:\VERDE-Vision-electronica-de-reconocimiento-de-especies\pagina_web\imagenes_dicc"
  