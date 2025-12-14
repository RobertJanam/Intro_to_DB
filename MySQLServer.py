import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12031203",
    database="alx_book_store"
)

if not mydb.database:
    print("Database does not exist.")
else:
    print(f"Database {mydb.database} created successfully!") 