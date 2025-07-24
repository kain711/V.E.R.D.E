import streamlit as st
import pandas as pd
import os
from datetime import datetime

def formulario_registrar_planta_csv(engine, 
                                   csv_file="registro_plantas.csv", 
                                   images_dir="plantas_nuevas_img"):
    # Crear carpeta si no existe
    if not os.path.exists(images_dir):
        os.makedirs(images_dir)

    familias = pd.read_sql("SELECT id_familia, nombre_familia FROM familia", engine)
    usos_lista = pd.read_sql("SELECT id_uso, nombre FROM uso", engine)

    with st.form("registrar_nueva_planta"):
        # --- DATOS PLANTA ---
        nombre_comun = st.text_input("Nombre común de la planta", max_chars=100)
        nombre_cientifico = st.text_input("Nombre científico", max_chars=100)
        st.text("Si no conoces el nombre científico, puedes dejarlo en blanco.")
        tipo = st.selectbox("Tipo de planta", ["Hierba", "Arbusto", "Árbol", "Enredadera","Otro"])
        familia_nombre = st.selectbox("Familia", familias['nombre_familia'])
        id_familia = familias.loc[familias['nombre_familia'] == familia_nombre, 'id_familia'].iloc[0]
        descripcion = st.text_area("Descripción general de la planta", height=80)
        imagen = st.file_uploader("Imagen (opcional)", type=["png","jpg","jpeg"])
        
        usos_seleccionados = st.multiselect("Usos principales", usos_lista['nombre'])
        id_usos = usos_lista.loc[usos_lista['nombre'].isin(usos_seleccionados), 'id_uso'].tolist()
        
        # --- UBICACIÓN ---
        st.markdown("#### Ubicación inicial")
        latitud = st.number_input("Latitud", format="%.6f")
        longitud = st.number_input("Longitud", format="%.6f")
        altitud = st.number_input("Altitud (opcional)", min_value=0, value=2500)
        region = st.selectbox("Región", ["Sierra", "Costa", "Amazonia", "Insular"])
        provincia = st.text_input("Provincia")
        canton = st.text_input("Cantón")
        parroquia = st.text_input("Parroquia")
        descripcion_ubic = st.text_area("Descripción del lugar", height=40)
        
        enviar = st.form_submit_button("Registrar planta")

    if enviar:
        st.success("¡Se presionó el botón de registrar planta!") 
        # Guardar imagen localmente
        if imagen is not None:
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            ext = os.path.splitext(imagen.name)[1]
            imagen_filename = f"{nombre_comun.replace(' ', '_')}_{timestamp}{ext}"
            imagen_path = os.path.join(images_dir, imagen_filename)
            with open(imagen_path, "wb") as f:
                f.write(imagen.getbuffer())
        else:
            imagen_filename = ""

        # Guardar datos en CSV
    nueva_fila = {
            "nombre_comun": nombre_comun,
            "nombre_cientifico": nombre_cientifico,
            "tipo": tipo,
            "id_familia": id_familia,
            "familia_nombre": familia_nombre,
            "descripcion": descripcion,
            "imagen_archivo": imagen_filename,
            "usos": ",".join(map(str, id_usos)),
            "latitud": latitud,
            "longitud": longitud,
            "altitud": altitud,
            "region": region,
            "provincia": provincia,
            "canton": canton,
            "parroquia": parroquia,
            "descripcion_ubic": descripcion_ubic,
            "fecha_registro": datetime.now().isoformat()
        }

    if os.path.exists(csv_file):
            df_existente = pd.read_csv(csv_file)
            df_nuevo = pd.concat([df_existente, pd.DataFrame([nueva_fila])], ignore_index=True)
    else:
            df_nuevo = pd.DataFrame([nueva_fila])
    df_nuevo.to_csv(csv_file, index=False)

    st.success(f"¡Planta '{nombre_comun}' registrada localmente en CSV y la imagen guardada!")
    st.write(pd.DataFrame([nueva_fila]))

