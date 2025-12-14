import mysql.connector

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="root",
        password="12031203",
        database="alx_book_store"
    )
    
    print("Connected to MySQL server successfully!")

    mycursor = mydb.cursor()
    mycursor.execute("""CREATE DATABASE IF NOT EXISTS alx_book_store""")
    
    print(f"Database '{mydb.database}' created successfully!")
    
    mycursor.close()
    
except mysql.connector.Error as error:
    print(f"Failed to create database '{mydb.database}': {error}")

finally:
    if mydb.is_connected():
        mydb.close()