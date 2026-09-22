# 🚀 Customer360 Analytics Platform with DBT & Databricks

An end-to-end Data Engineering project built using **DBT Core** and **Databricks**, implementing a complete Medallion Architecture (Bronze → Silver → Gold), data quality testing, reusable macros, snapshots, seeds, and environment-based deployments.

---

## 🏗️ Architecture

```text
Raw Source Tables
        │
        ▼
    Bronze Layer
        │
        ▼
    Silver Layer
        │
        ▼
     Gold Layer
        │
        ▼
 Customer360 OBT
```

---

## 📊 Data Sources

- Customers
- Orders
- Marketing Events
- Support Tickets
- Web Events

---

## 🔥 Implemented Features

### ✅ Data Modeling

- Source Configuration (`source()`)
- Model References (`ref()`)
- Bronze Layer
- Silver Layer
- Gold Layer
- Customer360 One Big Table (OBT)

### ✅ Data Quality

- `not_null`
- `unique`
- `accepted_values`
- `relationships`
- Singular Tests
- Custom Generic Tests

### ✅ Jinja & Reusability

- Variables
- Loops
- Conditions
- Dynamic SQL
- Reusable Macros

### ✅ Advanced DBT

- Seeds
- Analysis Folder
- Snapshots (SCD Type 2)
- Documentation & Lineage Graph
- Node Selection

### ✅ Deployment Ready

- DEV Environment
- PROD Environment
- Target Variables
- Environment-Agnostic Configuration
- `dbt build`

---

## 📁 Project Structure

```text
my_dbt_project

├── models
│   ├── sources
│   ├── bronze
│   ├── silver
│   └── gold
│
├── snapshots
├── seeds
├── tests
├── macros
├── analysis
│
└── dbt_project.yml
```

---

## 🛠️ Tech Stack

- DBT Core
- Databricks
- SQL
- Jinja
- Git
- GitHub

---

## 📈 Customer360 KPIs

The Gold Layer generates consolidated customer analytics including:

- Customer Profile
- Total Orders
- Total Revenue
- Last Order Date
- Marketing Engagement
- Support Interactions
- Website Activity

---

## ✅ Commands

### Run Models

```bash
dbt run
```

### Run Tests

```bash
dbt test
```

### Load Seeds

```bash
dbt seed
```

### Run Snapshots

```bash
dbt snapshot
```

### Generate Documentation

```bash
dbt docs generate
```

```bash
dbt docs serve
```

### Execute Complete Pipeline

```bash
dbt build
```

### Deploy to Production

```bash
dbt build --target prod
```

---

## 🎯 Key Concepts Covered

- Medallion Architecture
- source()
- ref()
- Jinja
- Macros
- Generic Tests
- Singular Tests
- Custom Generic Tests
- Seeds
- Snapshots
- SCD Type 2
- OBT Modeling
- Environment Management
- CI/CD Readiness

---

## 🏆 Learning Outcomes

By completing this project, I gained hands-on experience with:

- Modern Data Transformation Workflows
- Data Quality Engineering
- Dimensional & OBT Modeling
- Historical Data Tracking (SCD Type 2)
- Reusable SQL Development
- Production-Ready DBT Project Design
- Databricks Integration
