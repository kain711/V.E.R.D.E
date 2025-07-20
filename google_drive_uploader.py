import json
from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
import streamlit as st

def autenticar_con_cuenta_servicio():
    # Guardar el archivo JSON temporal desde secrets
    with open("service_account.json", "w") as f:
        f.write(st.secrets["google"]["service_account"])  # No usar json.dump

    gauth = GoogleAuth()
    gauth.LoadServiceConfigFile("service_account.json")  # ← esta sí sirve para cuentas de servicio si el JSON está crudo
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
