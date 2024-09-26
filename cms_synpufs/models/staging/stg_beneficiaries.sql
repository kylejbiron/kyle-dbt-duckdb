-- models/staging/stg_beneficiaries.sql

SELECT *
FROM read_csv_auto('/Users/kyle/Documents/personal_projects/repos/kyle-dbt-duckdb/cms_synpufs/raw/DE1_0_2008_Beneficiary_Summary_File_Sample_1.csv')