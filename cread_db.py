import sqlite3

conn=sqlite3.connect('VERDE.db')
cursor=conn.cursor()

with open("VERDE_py.sql","r",encoding="utf-8") as file:
    sql_script=file.read()
cursor.executescript(sql_script)
conn.commit()
conn.close()

