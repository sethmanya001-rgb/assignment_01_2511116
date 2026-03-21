// OP1: insertMany() — insert all 3 documents from sample_documents.json
db.products.insertMany([
  {
    product_id: 1,
    category: "Electronics",
    product_name: "Laptop",
    price: 55000,
    brand: "Dell"
  },
  {
    product_id: 2,
    category: "Groceries",
    product_name: "Milk",
    price: 60,
    expiry_date: "2024-12-20"
  },
  {
    product_id: 3,
    category: "Clothing",
    product_name: "T-Shirt",
    price: 800,
    brand: "Puma"
  }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne() — add a discount_percent field to a specific product
db.products.updateOne(
  { product_name: "Laptop" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — create an index on category field
db.products.createIndex({ category: 1 });

// Index on category improves search speed when filtering products by category.
