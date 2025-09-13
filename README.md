# 🚀 Azure Adventure Works Data Engineering Project  

This project demonstrates a **complete Data Engineering pipeline on Azure** — starting from ingestion of raw data, applying transformations in **Databricks**, building a serving layer in **Synapse**, and finally ingesting data to **Power BI reports** for business insights.  

It follows the **Medallion Architecture (Bronze → Silver → Gold)** to ensure scalability, data quality, and efficient reporting.  

---

## 📌 Architecture  

The end-to-end flow is as follows:  

1. **Data Source**  
   - Dataset sourced from **Kaggle** (present in the `dataset/` folder).  
   - Automated ingestion pipeline pulls data from **GitHub repo** into Azure.  

2. **Data Ingestion (Bronze Layer)**  
   - Azure **Data Factory** pipelines automate ingestion.  
   - Data stored in **Raw Data Lake (Data Lake Gen2)**.  

3. **Transformation (Silver Layer)**  
   - Data is processed in **Azure Databricks**:  
     - Standardizing **date formats**  
     - Splitting string values into structured fields  
   - Clean/curated data stored in the **Transformed Zone (Data Lake Gen2)**.  

4. **Serving (Gold Layer)**  
   - External data sources and tables created in **Azure Synapse Analytics**.  
   - Optimized gold layer for analytics and BI consumption.  

5. **Reporting**  
   - **Power BI** dashboards connected to Synapse for visualization using SQL Endpoints.  

---

## 🛠 Tech Stack  

- **Azure Data Factory** → Data ingestion & orchestration  
- **Azure Data Lake Gen2** → Centralized raw & transformed data storage  
- **Azure Databricks** → Transformations & cleaning using PySpark  
- **Azure Synapse Analytics** → External tables for gold data  
- **Power BI** → Reporting and interactive dashboards

---

## ⚡ Pipeline Workflow

- **Upload Kaggle dataset** to dataset/ or configure GitHub repo as ingestion source.
- **Trigger Data Factory pipelines** to move data → Raw Data Lake (Bronze).
- **Run Databricks notebooks** for data transformations → Transformed Data Lake (Silver).
- **Execute Synapse SQL** scripts to create external data sources & tables → Gold Layer.
- **Connect Power BI** to Synapse and design dashboards.

---
## 🚀 Future Enhancements

- **Implement CI/CD pipelines** with Azure DevOps
- **Add data quality checks** using Great Expectations
- **Use Delta Lake** for incremental loads and time travel
- **Deploy Power BI Embedded** for production reporting
