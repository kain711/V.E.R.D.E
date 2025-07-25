from sqlalchemy import text
from datetime import datetime
import streamlit as st

def formulario_sugerencias(engine):
    correo_usuario = st.text_input("Introduce tu correo electrónico", key="correo_usuario")

    if correo_usuario:
        try:
            with engine.connect() as conn:
                query_usuario = text("""
                    SELECT id_usuario 
                    FROM usuario 
                    WHERE correo = :correo_usuario
                """)
                result = conn.execute(query_usuario, {"correo_usuario": correo_usuario})
                usuario = result.fetchone()
                
                if usuario:
                    id_usuario = usuario[0]
                else:
                    st.error("Correo no registrado en el sistema.")
                    return

            with st.form("form_sugerencias"):
                st.subheader("Sugerencias sobre el modelo predictor")
                comentario_usuario = st.text_area("Comentario adicional", height=100, key="comentario_usuario")
                precision_modelo = st.number_input("Precisión del modelo (0 a 1)", min_value=0.0, max_value=1.0, value=0.85, key="precision_modelo")
                calificacion_usuario = st.slider("Calificación del usuario", min_value=1, max_value=5, value=3, key="calificacion_usuario")
                submit_button = st.form_submit_button("Enviar sugerencia")

            if submit_button:
                # Comprobamos qué datos estamos enviando
                st.write({
                    "id_usuario": id_usuario,
                    "fecha": datetime.now(),
                    "comentario_usuario": comentario_usuario,
                    "precision_modelo": precision_modelo,
                    "calificacion_usuario": calificacion_usuario
                })

                try:
                    with engine.connect() as conn:
                        insert_reconocimiento = text("""
                            INSERT INTO reconocimiento (id_usuario, fecha, comentario_usuario, precision_modelo, calificacion_usuario)
                            VALUES (:id_usuario, :fecha, :comentario_usuario, :precision_modelo, :calificacion_usuario)
                        """)
                        conn.execute(insert_reconocimiento, {
                            "id_usuario": id_usuario,
                            "fecha": datetime.now(),
                            "comentario_usuario": comentario_usuario,
                            "precision_modelo": precision_modelo,
                            "calificacion_usuario": calificacion_usuario
                        })

                    st.success("¡Gracias por tu sugerencia! Tu opinión es muy valiosa.")

                except Exception as e:
                    st.error(f"Hubo un error al guardar tu sugerencia en la base de datos: {e}")
                    
        except Exception as e:
            st.error(f"Hubo un error al conectar con la base de datos: {e}")
    else:
        st.warning("Por favor, ingresa tu correo electrónico.")
