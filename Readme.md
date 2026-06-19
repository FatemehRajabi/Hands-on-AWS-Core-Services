# AWS Core Services Hands-on: S3, Glue, CloudWatch, and Athena

## Course

Cloud Computing for Data Analysis  
ITCS 6190/8190, Summer 2026

## Overview

This hands-on project demonstrates how to use AWS core services for cloud-based data analysis. The workflow includes uploading raw e-commerce sales data to Amazon S3, creating an IAM role for AWS Glue, using a Glue crawler to create a table in the Glue Data Catalog, monitoring the crawler through CloudWatch, and querying the crawled database using Amazon Athena.

## Dataset

Dataset: Unlock Profits with E-Commerce Sales Data  
Source: Kaggle

The file used in this project is:

`Amazon Sale Report.csv`

## AWS Services Used

- **Amazon S3**: Used to store the raw CSV dataset and Athena query results.
- **AWS IAM**: Used to create a role that allows AWS Glue to access S3 and the Glue Data Catalog.
- **AWS Glue Crawler**: Used to automatically crawl the CSV file and create a table.
- **Amazon CloudWatch**: Used to monitor the Glue crawler logs and status.
- **Amazon Athena**: Used to run SQL queries on the crawled data.

## Workflow

1. Created an S3 bucket for the raw e-commerce sales data.
2. Uploaded `Amazon Sale Report.csv` to the S3 bucket.
3. Created an IAM role for the Glue crawler.
4. Created a Glue database named `ecommerce_sales_db`.
5. Created and ran a Glue crawler to crawl the raw CSV file.
6. Verified that the table was created in the Glue Data Catalog.
7. Opened CloudWatch to monitor the crawler logs.
8. Used Athena to query the crawled table.
9. Downloaded the CSV result file for each query.

## Database and Table

The Glue database used in this project:

```sql
ecommerce_sales_db
```

The Athena table used in this project:
itcs6190_fatemeh_raw_data

This hands-on project shows how AWS S3, IAM, Glue, CloudWatch, and Athena can be used together to build a simple cloud data analysis workflow. The raw CSV file was uploaded to S3, Glue crawled the data and created a table, CloudWatch was used to monitor the crawler, and Athena was used to run SQL queries and export the results.
