import json
import streamlit as st
from google.oauth2 import service_account
from googleapiclient.discovery import build
from googleapiclient.http import MediaFileUpload

def subir_a_drive_con_servicio(file_path, nombre_archivo, folder_id):
    # Cargar credenciales desde secrets
    creds_dict = json.loads(st.secrets["google"]["service_account"])
    credentials = service_account.Credentials.from_service_account_info(
        creds_dict,
        scopes=["https://www.googleapis.com/auth/drive"]
    )

    # Construir el servicio
    service = build("drive", "v3", credentials=credentials)

    # Metadatos del archivo (asegura que esté dentro de tu carpeta personal compartida)
    file_metadata = {
        "name": nombre_archivo,
        "parents": [folder_id]
    }

    # Archivo a subir
    media = MediaFileUpload(file_path, resumable=True)

    # Crear el archivo en la carpeta compartida
    uploaded = service.files().create(
        body=file_metadata,
        media_body=media,
        fields="id, webViewLink",
        supportsAllDrives=True  # Esto es CLAVE
    ).execute()

    return uploaded.get("webViewLink")
