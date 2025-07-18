from rembg import remove
from PIL import Image,ImageOps
import io

def procesar_img(uploaded_file):
    #Abrir la imagen desde el archivo subido
    input_image = Image.open(uploaded_file)
    # Corregir rotación según metadatos EXIF
    input_image = ImageOps.exif_transpose(input_image)
    # Convertir imagen a bytes
    buffered = io.BytesIO()
    input_image.save(buffered, format="PNG")
    input_bytes = buffered.getvalue()
    #verificar si tiene fondo transparente
    if input_image.mode == "RGBA":
        # Si ya tiene fondo transparente, no es necesario removerlo
        return input_image
        #casi contrario remover el fondo
    else:
    # Remover fondo
        output_bytes = remove(input_bytes)
    

    # Reconstruir imagen con transparencia
    output_image = Image.open(io.BytesIO(output_bytes)).convert("RGBA")

    return output_image

