import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12031203",
    database="alx_book_store"
)

if not mydb.database:
    mycursor = mydb.cursor()
    mycursor.execute("""CREATE DATABASE IF NOT EXISTS alx_book_store""")
else:
    print(f"Database {mydb.database} created successfully!")
    
mycursor.close()
mydb.close()