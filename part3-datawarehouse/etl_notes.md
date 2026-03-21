## ETL Decisions

### Decision 1 — Standardizing Date Format

Problem:
The raw dataset contained multiple date formats such as DD-MM-YYYY and MM/DD/YYYY. This inconsistency makes it difficult to perform time-based analysis and grouping.

Resolution:
All dates were converted into a standard ISO format (YYYY-MM-DD) before loading them into the data warehouse. This ensures consistent date handling and enables easier monthly and yearly reporting.


### Decision 2 — Handling NULL Values

Problem:
Some records in the raw data had missing values for important fields such as product category or store information. Missing values can break joins and lead to inaccurate analytics.

Resolution:
During the ETL process, missing values were either filled using known reference values or removed if the record was incomplete. This ensured that only clean and valid data was loaded into the warehouse.


### Decision 3 — Standardizing Category Names

Problem:
The raw dataset contained inconsistent category names such as "electronics", "Electronics", and "ELECTRONICS". This would cause incorrect grouping when performing analytical queries.

Resolution:
All category names were converted to a consistent format (capitalized form such as "Electronics", "Clothing", "Groceries") before loading them into the dim_product table.
