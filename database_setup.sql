
# Establish a connection to the SQLite database
conn = sqlite3.connect("merch_store.db")
cursor = conn.cursor()
# Sample data for Categories table
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Electronics", "Electronic gadgets and accessories"))
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Clothing", "Apparel for all occasions"))
cursor.execute("INSERT INTO Categories (name, description) VALUES (?, ?)", ("Books", "A wide selection of books"))
# Sample data for Products table
cursor.execute("INSERT INTO Products (name, description, price, stock_quantity, category_id) VALUES (?, ?, ?, ?, ?)", ("Laptop", "High-performance laptop", 999.99, 50, 1))
cursor.execute("INSERT INTO Products (name, description, price, stock_quantity, category_id) VALUES (?, ?, ?, ?, ?)", ("T-Shirt", "Comfortable cotton t-shirt", 19.99, 100, 2))
cursor.execute("INSERT INTO Products (name, description, price, stock_quantity, category_id) VALUES (?, ?, ?, ?, ?)", ("Sci-Fi Novel", "Bestselling science fiction book", 14.99, 75, 3))
# Sample data for Customers table
cursor.execute("INSERT INTO Customers (first_name, last_name, email, password) VALUES (?, ?, ?, ?)", ("John", "Doe", "johndoe@example.com", "password123"))
cursor.execute("INSERT INTO Customers (first_name, last_name, email, password) VALUES (?, ?, ?, ?)", ("Alice", "Smith", "alice.smith@example.com", "securepass"))


# Commit changes and close the connection
conn.commit()
conn.close()
