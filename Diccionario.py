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
   pass
import streamlit as st
import psycopg2
from PIL import Image
import os

# --- Configuración inicial ---
st.set_page_config(layout="centered", page_title="Diccionario de Plantas")

# --- Conexión a PostgreSQL ---
def obtener_detalles_planta(nombre_planta):
    try:
        conn = psycopg2.connect(
            host="localhost",
            port="5432",
            database="Verde_DB",
            user="soporte",      # <-- Cambia si es diferente
            password="soporte"  # <-- Cambia por tu contraseña real
        )
        cursor = conn.cursor()
        cursor.execute("""
            SELECT nombre, categoria, usos, lugar_geografico, region, caracteristicas_crecimiento
            FROM plantas
            WHERE nombre = %s
        """, (nombre_planta,))
        resultado = cursor.fetchone()
        cursor.close()
        conn.close()
        return resultado
    except Exception as e:
        st.error(f"Error al consultar la base de datos: {e}")
        return None

# --- Lista de plantas ordenadas alfabéticamente ---
plantas = sorted([
    "Acchocha", "Altamizo", "Cedron", "Pushasha",
    "Romero", "Ruda", "Tomate", "Torongil"
])  # Puedes cargar esta lista desde la BD si lo prefieres

# --- Inicializar estado ---
if "planta_index" not in st.session_state:
    st.session_state.planta_index = 0

# --- Navegación del carrusel ---
col1, col2, col3 = st.columns([1, 2, 1])
with col1:
    if st.button("⬅️ Anterior"):
        st.session_state.planta_index = (st.session_state.planta_index - 1) % len(plantas)
with col3:
    if st.button("Siguiente ➡️"):
        st.session_state.planta_index = (st.session_state.planta_index + 1) % len(plantas)

# --- Mostrar imagen e info ---
planta_actual = plantas[st.session_state.planta_index]
st.subheader(f"🌿 {planta_actual}")

# Mostrar imagen
ruta_imagen = os.path.join("plantas_img", f"{planta_actual}.jpg")
if os.path.exists(ruta_imagen):
    st.image(Image.open(ruta_imagen), use_column_width=True)
else:
    st.warning("Imagen no disponible.")

# --- Botón de detalles ---
if st.button("🔍 Ver detalles"):
    detalles = obtener_detalles_planta(planta_actual)
    if detalles:
        nombre, categoria, usos, lugar_geo, region, caracteristicas = detalles
        st.markdown(f"**Categoría:** {categoria}")
        st.markdown(f"**Usos:** {usos}")
        st.markdown(f"**Lugar geográfico (lat/long):** {lugar_geo}")
        st.markdown(f"**Región:** {region}")
        st.markdown(f"**Características de crecimiento:** {caracteristicas}")

  