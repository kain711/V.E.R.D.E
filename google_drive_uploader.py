import json
from pydrive2.auth import GoogleAuth
from pydrive2.drive import GoogleDrive
import streamlit as st

# Crear archivo temporal desde secreto
def crear_archivo_credenciales():
    with open("service_account.json", "w") as f:
        json.dump(json.loads(st.secrets["google"]["service_account"]), f)

# Autenticarse con la cuenta de servicio
def autenticar_con_cuenta_servicio():
    crear_archivo_credenciales()
    gauth = GoogleAuth()
    gauth.LoadServiceConfigFile("service_account.json")
    gauth.ServiceAuth()
    return GoogleDrive(gauth)


# Subir archivo al folder de Drive
def subir_a_drive_con_servicio(file_path, nombre_archivo, folder_id):
    drive = autenticar_con_cuenta_servicio()
    file_drive = drive.CreateFile({
        'title': nombre_archivo,
        'parents': [{'id': folder_id}]
    })
    file_drive.SetContentFile(file_path)
    file_drive.Upload()
    return file_drive['alternateLink']
