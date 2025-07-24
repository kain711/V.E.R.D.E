import streamlit as st
import pandas as pd
from sqlalchemy import text
from datetime import datetime
import os

def formulario_registrar_planta_bd(engine, carpeta_imagenes="plantas_img"):
    # Carga familias y usos
    familias = pd.read_sql("SELECT id_familia, nombre_familia FROM familia", engine)
    usos_lista = pd.read_sql("SELECT id_uso, nombre FROM uso", engine)

    with st.form("registrar_nueva_planta_bd"):
        nombre_comun = st.text_input("Nombre común de la planta *", max_chars=100)
        nombre_cientifico = st.text_input("Nombre científico *", max_chars=100)
        tipo = st.selectbox("Tipo de planta *", ["Hierba", "Arbusto", "Árbol", "Enredadera", "Otro"])
        familia_nombre = st.selectbox("Familia *", familias['nombre_familia'])
        id_familia = familias.loc[familias['nombre_familia'] == familia_nombre, 'id_familia'].iloc[0]
        id_familia = int(familias.loc[familias['nombre_familia'] == familia_nombre, 'id_familia'].iloc[0])

        descripcion = st.text_area("Descripción general de la planta", height=80)
        imagen = st.file_uploader("Imagen (opcional)", type=["png","jpg","jpeg"])
        
        usos_seleccionados = st.multiselect("Usos principales *", usos_lista['nombre'])
        id_usos = usos_lista.loc[usos_lista['nombre'].isin(usos_seleccionados), 'id_uso'].tolist()
        
        # --- UBICACIÓN ---
        st.markdown("#### Ubicación inicial")
        latitud = st.number_input("Latitud", format="%.6f")
        longitud = st.number_input("Longitud", format="%.6f")
        altitud = st.number_input("Altitud (opcional)", min_value=0, value=2500)
        region = st.selectbox("Región", ["Sierra", "Costa", "Amazonia", "Insular"])
        provincia = st.text_input("Provincia")
        canton = st.text_input("Cantón *")
        parroquia = st.text_input("Parroquia *")
        descripcion_ubic = st.text_area("Descripción del lugar", height=40)
        
        enviar = st.form_submit_button("Registrar planta")

    # -------- VALIDACIÓN Y GUARDADO --------
    if enviar:
        errores = []
        if not nombre_comun.strip():
            errores.append("El nombre común es obligatorio.")
        if not nombre_cientifico.strip():
            errores.append("El nombre científico es obligatorio.")
        if not usos_seleccionados:
            errores.append("Debes seleccionar al menos un uso principal.")
        if not parroquia.strip():
            errores.append("La parroquia es obligatoria.")
        if not canton.strip():
            errores.append("El cantón es obligatorio.")

        if errores:
            for e in errores:
                st.error(e)
            return

   
        
        # --- Guardar planta ---
        with engine.begin() as conn:
            insert_planta = text("""
                INSERT INTO planta (nombre_comun, nombre_cientifico, tipo, id_familia, fecha_registro)
                VALUES (:nombre_comun, :nombre_cientifico, :tipo, :id_familia, :fecha_registro)
                RETURNING id_planta
            """)
            res = conn.execute(insert_planta, {
                "nombre_comun": nombre_comun,
                "nombre_cientifico": nombre_cientifico,
                "tipo": tipo,
                "id_familia": id_familia,
                
                "fecha_registro": datetime.now().date()
            })
            id_planta = res.scalar()

            # --- Guardar variedad inicial (opcional: puedes ajustar) ---
            insert_variedad = text("""
                INSERT INTO variedad (id_planta, nombre, descripcion, estado, id_origen)
                VALUES (:id_planta, :nombre, :descripcion, :estado, :id_origen)
                RETURNING id_variedad
            """)
            res = conn.execute(insert_variedad, {
                "id_planta": id_planta,
                "nombre": nombre_comun,  # misma que la planta por defecto
                "descripcion": descripcion,
                "estado": "activo",
                "id_origen": 1  # Ajusta si tienes selección de origen
            })
            id_variedad = res.scalar()

            # --- Guardar ubicación geográfica y enlace ---
            insert_ubic = text("""
                 INSERT INTO ubicacion_geografica (latitud, longitud, altitud_msnm, region, parroquia, canton, provincia, descripcion)
                  VALUES (:latitud, :longitud, :altitud, :region, :parroquia, :canton, :provincia, :descripcion_ubic)
                RETURNING id_ubicacion
                        """)
            res = conn.execute(insert_ubic, {
                "latitud": latitud,
                "longitud": longitud,
                "altitud": altitud,
                "region": region,
                "parroquia": parroquia,
                "canton": canton,
                "provincia": provincia,
                "descripcion_ubic": descripcion_ubic
                                            })
            id_ubicacion = res.scalar()  # Obtiene el id_ubicacion generado automáticamente

            # Relacionar variedad con ubicación
            insert_var_ubic = text("""
                INSERT INTO variedad_ubicacion (id_variedad, id_ubicacion, tipo_sitio, frecuencia, observaciones, fecha_registro)
                VALUES (:id_variedad, :id_ubicacion, '', '', '', :fecha_registro)
            """)
            conn.execute(insert_var_ubic, {
                "id_variedad": id_variedad,
                "id_ubicacion": id_ubicacion,
                "fecha_registro": datetime.now().date()
            })

            # Guardar los usos principales
            for id_uso in id_usos:
                insert_var_uso = text("""
                    INSERT INTO variedad_uso (id_variedad, id_uso)
                    VALUES (:id_variedad, :id_uso)
                    ON CONFLICT DO NOTHING
                """)
                conn.execute(insert_var_uso, {"id_variedad": id_variedad, "id_uso": id_uso})

        st.success("¡Planta registrada exitosamente en la base de datos!")
        st.session_state.show_form = False
        st.experimental_rerun()
