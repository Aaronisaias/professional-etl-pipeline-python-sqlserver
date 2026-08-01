# 🚀 Professional ETL Pipeline with Python & SQL Server

A complete ETL (Extract, Transform, Load) project developed in Python following professional Data Engineering practices.

The pipeline extracts raw CSV data, validates data quality, cleans and transforms records, generates reports, logs every execution, stores the cleaned dataset, and loads the final data into SQL Server.

---

# Technologies

- Python
- Pandas
- SQL Server
- PyODBC
- Logging
- Pathlib

---

# Architecture

```
Raw CSV

↓

Extract

↓

Validate

↓

Transform

↓

Generate Report

↓

Save Clean CSV

↓

Load into SQL Server

↓

Execution Logs
```

---

# Project Structure

```
professional-etl-pipeline/
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── reports/
│
├── logs/
│
├── sql/
│
├── src/
│
├── requirements.txt
│
└── README.md
```

---

# Features

✔ Extract CSV automatically

✔ Data Validation

✔ Duplicate detection

✔ Missing value detection

✔ Text normalization

✔ Automatic logging

✔ Report generation

✔ Export cleaned CSV

✔ Bulk Insert into SQL Server

✔ Modular architecture

---

# ETL Workflow

## 1. Extract

Reads CSV files using Pandas.

## 2. Validate

Checks:

- Required columns
- Missing values
- Duplicate records
- Invalid formats

## 3. Transform

- Remove duplicates
- Remove null values
- Normalize text
- Trim spaces
- Capitalize strings

## 4. Report

Creates a TXT report with:

- Total records
- Removed duplicates
- Null values
- Validation errors
- Execution date

## 5. Load

Loads the cleaned dataset into SQL Server using Bulk Insert (`executemany()`).

---

# SQL Server

Connection is configured through:

```
config.py
```

Example:

```python
SERVER = "SERVER_NAME"

DATABASE = "ETL_DB"

DRIVER = "{ODBC Driver 17 for SQL Server}"

Trusted_connection = "Trusted_Connection=yes"
```

---

# Logging

Every ETL execution is stored inside

```
logs/etl.log
```

Example:

```
INFO Extract started

INFO Data loaded

WARNING Missing values found

INFO SQL Server connected

INFO Data inserted successfully

INFO Report generated
```

---

# Example Dataset

Student Performance Dataset

Columns:

- ID_Registro
- Nombre_Estudiante
- Email_Estudiante
- Curso_Asignado
- Profesor_Curso
- Departamento
- Aula
- Estado_Pago
- Metodo_Pago

---

# Skills Demonstrated

- ETL Design
- Data Cleaning
- Data Validation
- Python
- Pandas
- SQL Server
- Logging
- Report Generation
- File Management
- Bulk Insert
- Modular Programming

---

# Future Improvements

- Excel Support
- JSON Support
- Automatic Email Reports
- Scheduling with Windows Task Scheduler
- Docker
- Unit Testing
- CI/CD with GitHub Actions

---

# Author

Aaron Medina

Data Analyst | Python | SQL Server | ETL | Power BI
