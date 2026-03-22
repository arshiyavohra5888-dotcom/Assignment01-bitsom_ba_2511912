## ETL Decisions

### Decision 1 — Standardizing Date Format
Problem: Dates in raw data were in different formats (DD-MM-YYYY, YYYY/MM/DD).
Resolution: Converted all dates into standard format (YYYY-MM-DD) before loading.

### Decision 2 — Handling NULL Values
Problem: Some records had missing values for product or store.
Resolution: Replaced NULLs with default values or removed incomplete rows.

### Decision 3 — Fixing Category Inconsistency
Problem: Categories had inconsistent casing (electronics, Electronics, ELECTRONICS).
Resolution: Standardized all category values to proper format (Electronics, Clothing, Groceries).