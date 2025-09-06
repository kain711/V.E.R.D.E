import streamlit as st
import pandas as pd
from sqlalchemy import text
from datetime import datetime
from passlib.hash import pbkdf2_sha256 # pip install passlib bcrypt

def formulario_sugerencias(engine):
    st.header("📝 Formulario de Sugerencias y Errores")
    st.caption("Ayúdanos a mejorar V.E.R.D.E. reportando cualquier error o sugerencia.")

    if 'form_data' not in st.session_state:
        st.session_state.form_data = {
            "nombre": "", "correo": "", "precision": 0.0, 
            "clases": "", "comentario": "", "calificacion": 3
        }

    # El bloque del formulario
    with st.form("sugerencia_reconocimiento"):
        st.info("Si es tu primera vez, se creará un usuario con tu correo y contraseña.")
        
        nombre_usuario = st.text_input("Tu nombre de usuario *", value=st.session_state.form_data["nombre"])
        correo_usuario = st.text_input("Correo electrónico *", value=st.session_state.form_data["correo"])
        contraseña = st.text_input("Contraseña *", type="password") 
        
        st.markdown("---")
        
        precision_modelo = st.number_input("Precisión del modelo (%)", min_value=0.0, max_value=100.0, value=st.session_state.form_data["precision"])
        clases_predichas = st.text_area("Clases predichas", value=st.session_state.form_data["clases"])
        comentario_usuario = st.text_area("Comentario *", value=st.session_state.form_data["comentario"])
        calificacion_usuario = st.selectbox("Calificación *", [1, 2, 3, 4, 5], index=st.session_state.form_data["calificacion"] - 1)
        
        # --- LÍNEA CORREGIDA Y AÑADIDA ---
        # El botón de envío DEBE estar DENTRO del bloque 'with st.form'.
        enviar = st.form_submit_button("Enviar Sugerencia")

    # La lógica que se ejecuta después de presionar el botón (esto está fuera del 'with')
    if enviar:
        if not nombre_usuario.strip() or not correo_usuario.strip() or not contraseña or not comentario_usuario.strip():
            st.error("Por favor, completa todos los campos marcados con *.")
            return

        try:
            with engine.begin() as conn:
                id_usuario = None
                
                query_usuario = text("SELECT id_usuario, pass FROM usuario WHERE correo = :correo")
                resultado = conn.execute(query_usuario, {"correo": correo_usuario.strip()})
                usuario_existente = resultado.fetchone()
                
                if usuario_existente:
                    id_usuario_existente, pass_hasheado = usuario_existente
                    if pbkdf2_sha256.verify(contraseña, pass_hasheado):
                        id_usuario = id_usuario_existente
                    else:
                        st.error("La contraseña es incorrecta para este correo.")
                        return
                else:
                    st.info(f"Correo no registrado. Creando nuevo usuario...")
                    pass_hasheado = pbkdf2_sha256.hash(contraseña)
                    
                    insert_usuario = text("""
                        INSERT INTO usuario(nom_usuario, correo, pass, rol, estado_activo)
                        VALUES(:nom_usuario, :correo, :pass_hasheado, 'usuario', 1)
                    """)
                    result = conn.execute(insert_usuario, {
                        "nom_usuario": nombre_usuario.strip(),
                        "correo": correo_usuario.strip(),
                        "pass_hasheado": pass_hasheado
                    })
                    
                    id_usuario = result.lastrowid
                    st.success(f"Nuevo usuario '{nombre_usuario.strip()}' creado exitosamente.")

                if id_usuario:
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
                    
                    st.success("¡Sugerencia registrada exitosamente! Gracias por tu contribución.")
                    
                    st.session_state.form_data = {
                        "nombre": "", "correo": "", "precision": 0.0, 
                        "clases": "", "comentario": "", "calificacion": 3
                    }
                    st.experimental_rerun()

        except Exception as e:
            st.error(f"Ocurrió un error inesperado: {str(e)}")