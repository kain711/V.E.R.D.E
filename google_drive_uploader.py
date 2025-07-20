import json
from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
import streamlit as st
import os

def autenticar_con_cuenta_servicio():
    # Cargar JSON desde secrets
    service_account_info = json.loads(st.secrets["google"]["service_account"])

    # Guardarlo temporalmente como archivo
    temp_json_path = "service_account.json"
    with open(temp_json_path, "w") as f:
        json.dump(service_account_info, f)

    # Autenticación sin usar gauth.settings (que causa el error)
    gauth = GoogleAuth()
    gauth.LoadCredentialsFile(temp_json_path)
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
