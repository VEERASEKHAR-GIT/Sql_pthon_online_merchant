
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

  # Sample data for Orders table
cursor.execute("INSERT INTO Orders (customer_id, status, total_price) VALUES (?, ?, ?)", (1, "Processing", 999.99))
cursor.execute("INSERT INTO Orders (customer_id, status, total_price) VALUES (?, ?, ?)", (2, "Shipped", 34.98))
# Sample data for OrderItems table
cursor.execute("INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES (?, ?, ?, ?)", (1, 1, 1, 999.99))
cursor.execute("INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES (?, ?, ?, ?)", (2, 2, 2, 19.99))

# Sample data for Payments table
cursor.execute("INSERT INTO Payments (order_id, payment_method, amount) VALUES (?, ?, ?)", (1, "Credit Card", 999.99))
cursor.execute("INSERT INTO Payments (order_id, payment_method, amount) VALUES (?, ?, ?)", (2, "PayPal", 34.98))

  # Sample data for Addresses table
cursor.execute("INSERT INTO Addresses (customer_id, street_address, city, state, postal_code, country) VALUES (?, ?, ?, ?, ?, ?)", (1, "123 Main St", "Anytown", "CA", "12345", "USA"))
cursor.execute("INSERT INTO Addresses (customer_id, street_address, city, state, postal_code, country) VALUES (?, ?, ?, ?, ?, ?)", (2, "456 Elm St", "Somewhere", "NY", "54321", "USA"))

# Commit changes and close the connection
conn.commit()
conn.close()
