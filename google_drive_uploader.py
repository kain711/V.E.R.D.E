import json
from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
import streamlit as st

def autenticar_con_cuenta_servicio():
    # Guardar el archivo JSON temporalmente desde los secrets
    with open("service_account.json", "w") as f:
        json.dump(json.loads(st.secrets["google"]["service_account"]), f)

    # Leer el archivo y extraer el email de servicio
    with open("service_account.json", "r") as f:
        sa_data = json.load(f)

    # Inicializar PyDrive2 con configuración manual
    gauth = GoogleAuth()
    gauth.settings = {
        "client_config_backend": "service",
        "service_config": {
            "client_json_file_path": "service_account.json",
            "client_user_email": sa_data["client_email"]
        }
    }
    gauth.ServiceAuth()
    return GoogleDrive(gauth)

def subir_a_drive_con_servicio(file_path, nombre_archivo, folder_id):
    drive = autenticar_con_cuenta_servicio()
    file_drive = drive.CreateFile({
        'title': nombre_archivo,
        'parents': [{'id': folder_id}]
    })
    file_drive.SetContentFile(file_path)
    file_drive.Upload()
    return file_drive['alternateLink']
