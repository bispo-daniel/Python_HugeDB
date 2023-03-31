import mysql.connector
import random
import string

dbbb = mysql.connector.connect (
    host="localhost",
    user="root",
    password="1234",
    database="hugedb"
)

cursor = dbbb.cursor()

def create():
    nomeme = ''.join(random.SystemRandom().choice(string.ascii_letters + string.digits) for _ in range(10))
    list = [nomeme]
    sql = "INSERT INTO person (nome) VALUES (%s)"
    cursor.execute(sql, list)
    dbbb.commit()

for i in range(10000):
    create()
    print("Success!! ", i)
