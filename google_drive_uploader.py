# google_drive_uploader.py

import json
import os
from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
import streamlit as st

def _conectar_a_drive():
    """
    Función interna para autenticarse con Google Drive.
    No necesita ser llamada desde fuera de este archivo.
    """
    archivo_credenciales = "credenciales.json"

    # Carga las credenciales desde el string de los secrets de Streamlit
    credenciales_en_texto = st.secrets["google"]["service_account"]
    credenciales_json = json.loads(credenciales_en_texto)

    # Guarda las credenciales en un archivo temporal
    with open(archivo_credenciales, "w") as f:
        json.dump(credenciales_json, f)

    # Configuración para usar una cuenta de servicio
    settings = {
        "client_config_backend": "service",
        "service_config": {
            "client_json_file_path": archivo_credenciales,
        }
    }

    # Autenticación
    gauth = GoogleAuth(settings=settings)
    gauth.ServiceAuth()

    # Borra el archivo temporal por seguridad
    os.remove(archivo_credenciales)

    # Devuelve el objeto para interactuar con Drive
    return GoogleDrive(gauth)

def subir_a_drive_con_servicio(bytes_del_archivo, nombre_del_archivo, id_de_la_carpeta):
    """
    Sube un archivo (desde la memoria) a una carpeta específica en Google Drive.

    Args:
        bytes_del_archivo: El contenido del archivo en formato de bytes (ej: uploaded_file.getvalue()).
        nombre_del_archivo: El nombre que tendrá el archivo en Google Drive.
        id_de_la_carpeta: El ID de la carpeta de destino en Google Drive.

    Returns:
        El enlace para ver el archivo en el navegador, o None si falla.
    """
    try:
        # 1. Conectar a Google Drive
        drive = _conectar_a_drive()

        # 2. Preparar el archivo para subirlo
        archivo_drive = drive.CreateFile({
            'title': nombre_del_archivo,
            'parents': [{'id': id_de_la_carpeta}]
        })

        # 3. Cargar el contenido desde los bytes en memoria
        archivo_drive.SetContent(bytes_del_archivo)
        
        # 4. Subir el archivo
        archivo_drive.Upload()

        # 5. Devolver el enlace para verlo online
        return archivo_drive.get('alternateLink')

    except Exception as e:
        st.error(f"❌ Error al subir a Drive: {e}")
        st.info("Asegúrate de que el ID de la carpeta sea correcto y que la cuenta de servicio tenga permisos de 'Editor' sobre esa carpeta.")
        return None
