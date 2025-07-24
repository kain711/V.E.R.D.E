from sqlalchemy import text
from datetime import datetime
import streamlit as st

def formulario_sugerencias(engine):
    # Solicitar el correo electrónico
    correo_usuario = st.text_input("Introduce tu correo electrónico", key="correo_usuario")

    if correo_usuario:
        try:
            # Establecer la conexión
            with engine.connect() as conn:
                # Usamos text() para escribir la consulta SQL
                query_usuario = text("""
                    SELECT id_usuario 
                    FROM usuario 
                    WHERE correo = :correo_usuario
                """)
                
                # Ejecutamos la consulta con el parámetro
                result = conn.execute(query_usuario, {"correo_usuario": correo_usuario})
                usuario = result.fetchone()
                
                if usuario:
                    # Accedemos por índice, ya que 'fetchone()' devuelve una tupla
                    id_usuario = usuario[0]  # El primer valor es el id_usuario
                else:
                    st.error("Correo no registrado en el sistema.")
                    return

            # Mostrar los campos de sugerencias
            with st.form("form_sugerencias"):
                st.subheader("Sugerencias sobre el modelo predictor")

                # Campos de entrada
                comentario_usuario = st.text_area("Comentario adicional", height=100, key="comentario_usuario")
                precision_modelo = st.number_input("Precisión del modelo (0 a 1)", min_value=0.0, max_value=1.0, value=0.85, key="precision_modelo")
                calificacion_usuario = st.slider("Calificación del usuario", min_value=1, max_value=5, value=3, key="calificacion_usuario")

                # Botón para enviar
                submit_button = st.form_submit_button("Enviar sugerencia")

            if submit_button:
                # Insertar en la tabla 'reconocimiento' con los datos
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

                    # Limpiar los campos de formulario al enviar
                    st.session_state["correo_usuario"] = ""  # Limpiar el correo
                    st.session_state["comentario_usuario"] = ""  # Limpiar comentario
                    st.session_state["precision_modelo"] = 0.85  # Restablecer la precisión al valor inicial
                    st.session_state["calificacion_usuario"] = 3  # Restablecer la calificación al valor inicial
                    
                    # Si quieres recargar la página y resetear todos los campos:
                    st.experimental_rerun()

                except Exception as e:
                    st.error(f"Hubo un error al guardar tu sugerencia: {e}")
        except Exception as e:
            st.error(f"Hubo un error al conectar con la base de datos: {e}")
    else:
        st.warning("Por favor, ingresa tu correo electrónico.")
