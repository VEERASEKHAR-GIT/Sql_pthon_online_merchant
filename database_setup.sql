
# Establish a connection to the SQLite database
conn = sqlite3.connect("merch_store.db")
cursor = conn.cursor()
# Sample data for Categories table
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Electronics", "Electronic gadgets and accessories"))
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Clothing", "Apparel for all occasions"))
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Books", "A wide selection of books"))


# Commit changes and close the connection
conn.commit()
conn.close()
