
# Establish a connection to the SQLite database
conn = sqlite3.connect("merch_store.db")
cursor = conn.cursor()


# Commit changes and close the connection
conn.commit()
conn.close()
