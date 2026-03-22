// MongoDB Operations for Product Catalog

// Use database
use assignment_db

// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "P101",
    name: "Smartphone",
    category: "Electronics",
    price: 30000,
    brand: "Samsung",
    specs: {
      warranty_years: 2,
      voltage: "220V",
      battery: "5000mAh"
    },
    features: ["5G", "AMOLED Display", "Fast Charging"]
  },
  {
    product_id: "P102",
    name: "T-Shirt",
    category: "Clothing",
    price: 800,
    brand: "Nike",
    size: ["S", "M", "L", "XL"],
    material: "Cotton",
    color: "Black"
  },
  {
    product_id: "P103",
    name: "Milk Pack",
    category: "Groceries",
    price: 60,
    brand: "Amul",
    expiry_date: new Date("2024-12-30"),
    nutrition: {
      calories: 150,
      fat: "3.5g",
      protein: "8g"
    }
  }
]);

// OP2: find() — Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — Groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4: updateOne() — add discount_percent
db.products.updateOne(
  { product_id: "P101" },
  { $set: { discount_percent: 10 } }
);

// OP5: createIndex() — index on category
db.products.createIndex({ category: 1 });

/*
Why index?
Index on category improves query performance when filtering products 
by category (like Electronics, Clothing, Groceries), making searches faster.
*/