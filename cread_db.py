import sqlite3
"""
conn=sqlite3.connect('VERDE.db')
cursor=conn.cursor()

with open("VERDE_py.sql","r",encoding="utf-8") as file:
    sql_script=file.read()
cursor.executescript(sql_script)
conn.commit()
conn.close()
"""
def insertar_datos():
    conn=sqlite3.connect('VERDE.db')
    cursor=conn.cursor()
    try:
        with open("datos_iniciales.sql","r",encoding="utf-8") as file:
            sql_script=file.read()
        cursor.executescript(sql_script)
        conn.commit()
        conn.close()
    except Exception as e:
        print("Error al insertar datos iniciales:", e)
        conn.rollback()
        conn.close()
    finally:
        conn.close()

if __name__ == "__main__":
    insertar_datos()