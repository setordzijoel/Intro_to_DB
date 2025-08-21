import mysql.connector
from mysql.connector import Error

try:
    # Connect to the database server.
    conn = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "password"
    )

    if conn.is_connected():
        cur = conn.cursor()

        # Create database if it does not exist
        cur.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")
except Error as e:
    print(f"Error while connecting: {e}")
finally:
    # Close connection
    if conn.is_connected():
        cur.close()
        conn.close()