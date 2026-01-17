# Data Engineering Pipeline on Azure

This project implements a batch data engineering pipeline on Azure that ingests raw business data, applies structured transformations, and prepares analytics-ready datasets for BI reporting.

The goal of this project is to demonstrate real-world data engineering practices, including data orchestration, data lake layering (Bronze / Silver / Gold), and separation of storage and compute.

## 1. Dataset
The project uses the AdventureWorks dataset, a synthetic business dataset representing a fictional manufacturing and retail company.
The dataset includes:
- Sales transactions
- Customer information
- Product and category hierarchies
- Calendar dimensions
- Sales territories
- Product returns

The data is sourced from Kaggle: https://www.kaggle.com/datasets/ukveteran/adventure-works/data
  


## 2. Technology Stack
- Azure Data Factory – Orchestration and batch data ingestion
- Azure Data Lake Storage Gen2 – Storage for raw and processed data
- Azure Databricks – Data transformation and processing
- Azure Synapse Analytics (Serverless SQL) – Analytics and serving layer
- Power BI – Data visualization and reporting


## 3. Architecture Layers
- Bronze (Raw) - Raw data is ingested in its original format
  
- Silver (Transformed) - Data is cleaned, standardized, and structured for analytical use.
  
- Gold (Serving) - Curated datasets optimized for reporting and BI consumption.


## 4. Workflow Overview
### 4.1 Data Ingestion
- Azure Data Factory is used to orchestrate the ingestion process.

- Data is extracted from HTTP sources (CSV files).

- A JSON file is created to iterate over multiple datasets.

- Ingested data is loaded into the Bronze layer of Azure Data Lake Storage.


### 4.2 Data Transformation
- Data transformations are implemented using PySpark on Azure Databricks.

- Key transformation steps include data type normalization, handling missing and invalid records, and standardizing schemas across datasets.

- Cleaned and structured data is written to the Silver layer in an analytics-friendly format.


### 4.3 Analytics & Serving Layer
- Azure Synapse Analytics (Serverless SQL) is used as the serving layer.

- External tables and views are created over curated datasets.

- The Gold layer exposes clean, analytics-ready datasets for BI tools.


### 4.4 Reporting
- Power BI connects to Azure Synapse Analytics for visualization.
  
- Dashboards enable stakeholders to explore sales performance, customer behavior, and regional insights.



<img width="800" height="400" alt="Screenshot 2026-01-17 at 22 16 24" src="https://github.com/user-attachments/assets/b17dd35c-1d1e-4d98-aa92-89930c9d424c" />




## 5. Files
This repository includes the following key implementation files:

- ingestion.json: ADF ingestion JSON configuration, defines dynamic ingestion logic for loading multiple datasets into the Bronze layer.

- silver_layer.ipynb: Databricks transformation notebook, implements data cleaning, normalization, and transformation.

- create_views.sql: Synapse SQL scripts, creates external tables and views for analytics and BI reporting.

