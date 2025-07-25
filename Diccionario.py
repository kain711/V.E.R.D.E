import streamlit as st
from PIL import Image
import os
import pandas as pd
from datos_nueva_planta import formulario_registrar_planta_bd
from sqlalchemy import create_engine

# === CONEXIÓN UNA SOLA VEZ ===
#DB_URL = 'postgresql+psycopg2://proyectofinal:rZGqCr99dLsIrdk3gyh9Rd2CloMxJd8Z@dpg-d1r5hlbe5dus73ea3utg-a.oregon-postgres.render.com/verde_db'
#engine = create_engine(DB_URL)

# ===========================
def mostrar_datos_planta(nombre_planta, engine):
    query = f"""
    SELECT 
      v.id_variedad,
      v.nombre AS nombre_variedad,
      p.nombre_comun,
      p.nombre_cientifico, p.tipo,
      f.nombre_familia,
      ts.tipo_suelo,
      ca.ph_min, ca.ph_max, ca.temp_min, ca.temp_max, ca.humedad_optima, ca.altitud_min, ca.altitud_max,
      ug.latitud, ug.longitud, ug.region, ug.provincia, ug.canton, ug.parroquia, ug.descripcion AS ubicacion_desc,
      m.nombre AS nombre_mercado, m.direccion AS direccion_mercado, rv.precio_unitario, rv.unidad,
      u.nombre AS uso, vu.enlace AS enlace_uso,
      tr.nombre AS riesgo, vr.nivel, vr.descripcion AS riesgo_desc,
      t.tipo AS tipo_temporada, t.nombre AS nombre_temporada, t.mes_inicio, t.mes_fin, vt.condiciones
    FROM variedad v
    JOIN planta p ON v.id_planta = p.id_planta
    LEFT JOIN familia f ON p.id_familia = f.id_familia
    LEFT JOIN variedad_ambiente va ON va.id_variedad = v.id_variedad
    LEFT JOIN caracteristica_ambiental ca ON va.id_caract = ca.id_caract
    LEFT JOIN tipo_suelo ts ON ca.id_tipo_suelo = ts.id_tipo_suelo
    LEFT JOIN variedad_ubicacion vu2 ON v.id_variedad = vu2.id_variedad
    LEFT JOIN ubicacion_geografica ug ON vu2.id_ubicacion = ug.id_ubicacion
    LEFT JOIN registro_venta rv ON v.id_variedad = rv.id_variedad
    LEFT JOIN mercado m ON rv.id_mercado = m.id_mercado
    LEFT JOIN variedad_uso vu ON vu.id_variedad = v.id_variedad
    LEFT JOIN uso u ON vu.id_uso = u.id_uso
    LEFT JOIN variedad_riesgo vr ON vr.id_variedad = v.id_variedad
    LEFT JOIN tipo_riesgo tr ON vr.id_riesgo = tr.id_riesgo
    LEFT JOIN variedad_temporada vt ON vt.id_variedad = v.id_variedad
    LEFT JOIN temporada t ON vt.id_temporada = t.id_temporada
    WHERE LOWER(p.nombre_comun) = LOWER('{nombre_planta}') OR LOWER(p.nombre_cientifico) = LOWER('{nombre_planta}')
    """
    df = pd.read_sql(query, engine)

    if df.empty:
        st.warning("No se encontraron datos para la planta indicada.")
        return

    row0 = df.iloc[0]
    st.header(f"🌿 {row0['nombre_comun']} ({row0['nombre_cientifico']})")
    
    st.write(f"**Tipo:** {row0['tipo']} | **Familia:** {row0['nombre_familia']}")

    # Características ambientales
    st.subheader("🧪 Características ambientales")
    st.markdown(
        f"- **Tipo de suelo:** {row0['tipo_suelo']}\n"
        f"- **pH óptimo:** {row0['ph_min']} - {row0['ph_max']}\n"
        f"- **Temperatura:** {row0['temp_min']}°C - {row0['temp_max']}°C\n"
        f"- **Humedad óptima:** {row0['humedad_optima']}%\n"
        f"- **Altitud:** {row0['altitud_min']} - {row0['altitud_max']} m.s.n.m."
    )

    # Mapa de ubicaciones
    ubic = df[['latitud', 'longitud']].dropna().drop_duplicates()
    # 🔄 Cambia los nombres a inglés para Streamlit
    ubic = ubic.rename(columns={'latitud': 'latitude', 'longitud': 'longitude'})
    
    if not ubic.empty:
        st.subheader("🗺️ Ubicaciones donde crece")
        st.map(ubic)
    else:
        st.info("No hay ubicaciones registradas para mostrar en el mapa.")

    # Mercados y precios
    df_mercado = df[['nombre_mercado', 'direccion_mercado', 'precio_unitario', 'unidad']].drop_duplicates().dropna(subset=['nombre_mercado'])
    if not df_mercado.empty:
        st.subheader("🛒 Mercados donde se vende")
        st.dataframe(df_mercado)
    else:
        st.info("No hay mercados registrados para esta variedad.")

    # Usos y enlaces
    st.subheader("🧑‍🍳 Usos principales")
    usos = df[['uso', 'enlace_uso']].drop_duplicates().dropna(subset=['uso'])
    for _, uso in usos.iterrows():
        if pd.notnull(uso['enlace_uso']):
            if "youtube.com" in uso['enlace_uso']:
                st.write(f"**{uso['uso']}**")
                st.video(uso['enlace_uso'])
            else:
                st.markdown(f"- **{uso['uso']}:** [Ver recurso]({uso['enlace_uso']})", unsafe_allow_html=True)
        else:
            st.write(f"- **{uso['uso']}**")

    # Riesgos
    st.subheader("⚠️ Riesgos asociados")
    riesgos = df[['riesgo', 'nivel', 'riesgo_desc']].drop_duplicates().dropna(subset=['riesgo'])
    if not riesgos.empty:
        for _, r in riesgos.iterrows():
            nivel = {1: "Bajo", 2: "Medio", 3: "Alto"}.get(r['nivel'], r['nivel'])
            st.markdown(f"- **{r['riesgo']} ({nivel})**: {r['riesgo_desc']}")
    else:
        st.write("No hay riesgos registrados.")

    # Temporadas
    st.subheader("🌱 Temporadas de siembra/cosecha")
    temporadas = df[['tipo_temporada', 'nombre_temporada', 'mes_inicio', 'mes_fin', 'condiciones']].drop_duplicates().dropna(subset=['tipo_temporada'])
    if not temporadas.empty:
        for _, t in temporadas.iterrows():
            st.markdown(
                f"- **{t['tipo_temporada'].capitalize()}** ({t['nombre_temporada']}): "
                f"de mes {t['mes_inicio']} a {t['mes_fin']} | {t['condiciones']}"
            )
    else:
        st.write("No hay temporadas registradas para esta variedad.")

# =======================



# ==========================
def inicio_diccionario(engine_bd):
    st.title("🌿 Carrusel de Plantas")

    # Lista de plantas (orden alfabético)
    plantas = sorted([
        "Achocha", "Altamisa", "Cedron", "Pushasha",
        "Romero", "Ruda", "Tomate de arbol", "Torongil"
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
    ruta_imagen = os.path.join("plantas_img", f"{planta_actual}.png")
    if os.path.exists(ruta_imagen):
        st.image(Image.open(ruta_imagen), use_column_width=True)
    else:
        st.warning("⚠️ Imagen no encontrada.")

 
    
    if st.button("🔍 Ver detalles"):
        mostrar_datos_planta(planta_actual, engine_bd)
    st.markdown("---" * 50)
    st.markdown("## No es lo que buscabas? Puedes agregar una nueva planta al diccionario.")
    
    # Agregar nueva planta
    st.subheader("Formulario para registrar nueva planta")
    if "show_form" not in st.session_state:
        st.session_state.show_form = False

    if st.button("Agregar nueva planta"):
        st.session_state.show_form = True

    if st.session_state.show_form:
        formulario_registrar_planta_bd(engine_bd)
    st.markdown("---" * 50)
 
        
