import streamlit as st
import pandas as pd
from sqlalchemy import text
from datetime import datetime
def crear_nuevo_usuario(engine,nomb_usuario,correo,contraseña):
    try:
        with engine.begin() as conn:
            insert_usuario=text("""
                                INSERT INTO usuario(nom_usuario,correo,pass,rol,estado_activo)
                                VALUES(:nomb_usuario,:correo,:contraseña,"usuario",1)
                                """)
            conn.execute(insert_usuario, {
                "nomb_usuario": nomb_usuario,
                "correo": correo,
                "pass": contraseña,
                "rol": "usuario",
                "estado_activo": 1
            })
            #obtener id_usuario
            query_id=text("""
                            SELECT id_usuario FROM usuario WHERE correo=:correo
                            """)
            nuevo_usuario=conn.execute(query_id,{"correo":correo})
            
            return nuevo_usuario.fetchone()[0]

    except Exception as e:
        st.error(f"Error al crear usuario: {e}")

def formulario_sugerencias(engine):
    # Inicializar valores por defecto
    if 'form_submitted' not in st.session_state:
        st.session_state.form_submitted = False
    
    # Resetear valores después de envío exitoso
    if st.session_state.form_submitted:
        correo_default = ""
        precision_default = 0.0
        clases_default = ""
        comentario_default = ""
        calificacion_default = 1
        st.session_state.form_submitted = False
    else:
        correo_default = ""
        precision_default = 0.0
        clases_default = ""
        comentario_default = ""
        calificacion_default = 1

    with st.form("sugerencia_reconocimiento"):
        correo_usuario = st.text_input("Correo electrónico *", value=correo_default)
        precision_modelo = st.number_input("Precisión del modelo (%)", min_value=0.0, max_value=100.0, value=precision_default)
        clases_predichas = st.text_area("Clases predichas", value=clases_default)
        comentario_usuario = st.text_area("Comentario *", value=comentario_default)
        calificacion_usuario = st.selectbox("Calificación *", [1, 2, 3, 4, 5], index=calificacion_default-1)
        
        enviar = st.form_submit_button("Enviar Sugerencia")

    if enviar:
        errores = []
        if not correo_usuario.strip():
            errores.append("El correo es obligatorio.")
        if not comentario_usuario.strip():
            errores.append("El comentario es obligatorio.")

        if errores:
            for e in errores:
                st.error(e)
            return

        try:
            with engine.begin() as conn:
                # Buscar usuario
                query_usuario = text("SELECT id_usuario FROM usuario WHERE correo = :correo")
                resultado = conn.execute(query_usuario, {"correo": correo_usuario.strip()})
                usuario = resultado.fetchone()
                
                if not usuario:
                    try:
                        id_usuario=crear_nuevo_usuario(engine,correo_usuario.strip())
                        st.info(f"Nuevo usuario creado con correo {correo_usuario.strip()}.")
                    except Exception as e:  
                        st.error(f"Error al crear usuario: {e}")        
                        
                    return
                else:
                    id_usuario = usuario[0]
                
                # Insertar sugerencia
                insert_reconocimiento = text("""
                    INSERT INTO reconocimiento (id_usuario, fecha, precision_modelo, clases_predichas, comentario_usuario, calificacion_usuario)
                    VALUES (:id_usuario, :fecha, :precision_modelo, :clases_predichas, :comentario_usuario, :calificacion_usuario)
                """)
                
                conn.execute(insert_reconocimiento, {
                    "id_usuario": id_usuario,
                    "fecha": datetime.now().date(),
                    "precision_modelo": precision_modelo,
                    "clases_predichas": clases_predichas.strip(),
                    "comentario_usuario": comentario_usuario.strip(),
                    "calificacion_usuario": calificacion_usuario
                })
                
            st.success("¡Sugerencia registrada exitosamente!")
            st.session_state.form_submitted = True
            st.experimental_rerun()
            
        except Exception as e:
            st.error(f"Error: {str(e)}")