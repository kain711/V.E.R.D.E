import streamlit as st
import pandas as pd
from sqlalchemy import text
from datetime import datetime

def formulario_sugerencias(engine):
    # Solicitar el correo electrónico
    correo_usuario = st.text_input("Introduce tu correo electrónico")
    
    # Validación del correo
    if correo_usuario:
        # Consulta el id_usuario basado en el correo
        query_usuario = text("""
            SELECT id_usuario 
            FROM usuario 
            WHERE correo = :correo_usuario
        """)
        result = engine.execute(query_usuario, {"correo_usuario": correo_usuario})
        usuario = result.fetchone()
        
        if usuario:
            id_usuario = usuario['id_usuario']
        else:
            st.error("Correo no registrado en el sistema.")
            return
        
        # Mostrar los campos de sugerencias
        with st.form("form_sugerencias"):
            st.subheader("Sugerencias sobre el modelo predictor")

            # Campos de entrada
            comentario_usuario = st.text_area("Comentario adicional", height=100)
            precision_modelo = st.number_input("Precisión del modelo (0 a 1)", min_value=0.0, max_value=1.0, value=0.85)
            calificacion_usuario = st.slider("Calificación del usuario", min_value=1, max_value=5, value=3)

            # Botón para enviar
            submit_button = st.form_submit_button("Enviar sugerencia")

        if submit_button:
            # Insertar en la tabla 'reconocimiento' con los datos
            try:
                insert_reconocimiento = text("""
                    INSERT INTO reconocimiento (id_usuario, fecha, comentario_usuario, precision_modelo, calificacion_usuario)
                    VALUES (:id_usuario, :fecha, :comentario_usuario, :precision_modelo, :calificacion_usuario)
                """)
                engine.execute(insert_reconocimiento, {
                    "id_usuario": id_usuario,
                    "fecha": datetime.now(),
                    "comentario_usuario": comentario_usuario,
                    "precision_modelo": precision_modelo,
                    "calificacion_usuario": calificacion_usuario
                })
                
                st.success("¡Gracias por tu sugerencia! Tu opinión es muy valiosa.")
            except Exception as e:
                st.error(f"Hubo un error al guardar tu sugerencia: {e}")
    else:
        st.warning("Por favor, ingresa tu correo electrónico.")
