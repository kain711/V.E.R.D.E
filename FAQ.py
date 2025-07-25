from sqlalchemy import create_engine, Table, MetaData
from datetime import datetime
import streamlit as st

# Definir la tabla 'reconocimiento' usando SQLAlchemy
metadata = MetaData()
engine = create_engine('postgresql+psycopg2://proyectofinal:rZGqCr99dLsIrdk3gyh9Rd2CloMxJd8Z@dpg-d1r5hlbe5dus73ea3utg-a.oregon-postgres.render.com/verde_db')

reconocimiento = Table(
    'reconocimiento', metadata,
    autoload_with=engine,  # Cargar la tabla directamente desde la base de datos
    autoload=True
)

def formulario_sugerencias(engine):
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
                result = conn.execute(query_usuario, {"correo_usuario": correo_usuario})
                usuario = result.fetchone()
                
                if usuario:
                    id_usuario = usuario[0]  # El primer valor es el id_usuario
                else:
                    st.error("Correo no registrado en el sistema.")
                    return

            with st.form("form_sugerencias"):
                st.subheader("Sugerencias sobre el modelo predictor")
                comentario_usuario = st.text_area("Comentario adicional", height=100, key="comentario_usuario")
                precision_modelo = st.number_input("Precisión del modelo (0 a 1)", min_value=0.0, max_value=1.0, value=0.85, key="precision_modelo")
                clases_predichas = st.text_input("Clases predichas (por ejemplo: 'Tomate, Uvilla')", key="clases_predichas")
                calificacion_usuario = st.slider("Calificación del usuario", min_value=1, max_value=5, value=3, key="calificacion_usuario")
                submit_button = st.form_submit_button("Enviar sugerencia")

            if submit_button:
                # Comprobamos qué datos estamos enviando
                st.write({
                    "id_usuario": id_usuario,
                    "fecha": datetime.now(),
                    "comentario_usuario": comentario_usuario,
                    "precision_modelo": precision_modelo,
                    "clases_predichas": clases_predichas,
                    "calificacion_usuario": calificacion_usuario
                })

                try:
                    # Usar la tabla 'reconocimiento' de SQLAlchemy para insertar
                    with engine.connect() as conn:
                        ins = reconocimiento.insert().values(
                            id_usuario=id_usuario,
                            fecha=datetime.now(),
                            precision_modelo=precision_modelo,
                            clases_predichas=clases_predichas,
                            comentario_usuario=comentario_usuario,
                            calificacion_usuario=calificacion_usuario
                        )
                        conn.execute(ins)

                    st.success("¡Gracias por tu sugerencia! Tu opinión es muy valiosa.")

                except Exception as e:
                    st.error(f"Hubo un error al guardar tu sugerencia en la base de datos: {e}")

        except Exception as e:
            st.error(f"Hubo un error al conectar con la base de datos: {e}")
    else:
        st.warning("Por favor, ingresa tu correo electrónico.")
