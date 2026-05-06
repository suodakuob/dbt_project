# 🚀 Jaffle Shop - Modern Data Stack Project

[![dbt Fundamentals Certified](https://img.shields.io/badge/dbt-Fundamentals_Certified-orange)](https://credentials.getdbt.com/d9337503-f1a8-41f7-99ea-38bd3827ba3a)
[![Data Warehouse](https://img.shields.io/badge/Warehouse-Snowflake-blue)](https://www.snowflake.com/)
[![Automation](https://img.shields.io/badge/CI%2FCD-GitHub_Actions-green)](https://github.com/features/actions)

## 📝 Project Overview
This project is a comprehensive implementation of the **Jaffle Shop** analytics architecture. It transforms raw e-commerce data into business-ready insights using **dbt Core**, **Snowflake**, and software engineering best practices.

It was built as the final practical milestone after completing the **dbt Fundamentals** certification.

## 🏗️ Architecture & Lineage
The project follows the standard dbt modeling layers:

1.  **Sources**: Raw data ingested from our app database and Stripe payments.
2.  **Staging (`stg_`)**: Data cleaning, renaming, and type casting (1:1 with sources).
3.  **Marts**:
    *   **Finance**: Calculating order-level grain with successful payments.
    *   **Marketing**: Building the customer master dimension with **Lifetime Value (LTV)** calculations.

## 🛠️ Key Features
-   **Modularity**: Extensive use of `{{ ref() }}` and `{{ source() }}` for a dynamic DAG.
-   **Macros**: Custom Jinja macros (e.g., `cents_to_dollars`) to DRY (*Don't Repeat Yourself*) the code.
-   **Data Quality**: 
    - 6 Generic tests (`unique`, `not_null`, `relationships`, `accepted_values`).
    - 1 Custom Singular test to ensure non-negative payment totals.
-   **Snapshots**: Change Data Capture (CDC) implemented on orders to track status history.
-   **Documentation**: Rich Markdown documentation with embedded tables and column-level descriptions.
-   **CI/CD**: Automated pipeline via GitHub Actions using encrypted secrets.

## 📊 Business Logic Highlight
One of the core metrics calculated is the **Customer Lifetime Value (LTV)**. 
> **Result**: The cumulative LTV for the current dataset is **$1,672.00**, verified through automated testing.

## 🚀 How to Run Locally

### 1. Prerequisites
- Python 3.10+
- A Snowflake Account

### 2. Setup
```bash
# Create virtual environment
python -m venv dbt-env
source dbt-env/bin/activate  # Or dbt-env\Scripts\activate on Windows

# Install dependencies
pip install dbt-snowflake
dbt deps
3. Execution
code
Bash
# Verify connection
dbt debug

# Build the entire project (Run + Test)
dbt build

# Generate and serve documentation
dbt docs generate
dbt docs serve --port 8081
📬 Contact
Mehdi Boukadous
LinkedIn Profile | dbt Credentials
