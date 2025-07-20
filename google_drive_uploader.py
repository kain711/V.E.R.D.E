import json
import io
import streamlit as st
from google.oauth2 import service_account
from googleapiclient.discovery import build
from googleapiclient.http import MediaFileUpload

# Subir archivo a Google Drive usando la API moderna
def subir_a_drive_con_servicio(file_path, nombre_archivo, folder_id):
    # Cargar credenciales desde secrets
    creds_dict = json.loads(st.secrets["google"]["service_account"])
    credentials = service_account.Credentials.from_service_account_info(creds_dict, scopes=["https://www.googleapis.com/auth/drive.file"])

    # Construir servicio
    service = build("drive", "v3", credentials=credentials)

    file_metadata = {
        "name": nombre_archivo,
        "parents": [folder_id]
    }
    media = MediaFileUpload(file_path, resumable=True)

    uploaded = service.files().create(body=file_metadata, media_body=media, fields="id, webViewLink").execute()
    return uploaded.get("webViewLink")
