# Kyle DBT DuckDB Project

This project is designed to work with downloaded datasets from [CMS Sample 1 (2008-2010)](https://www.cms.gov/data-research/statistics-trends-and-reports/medicare-claims-synthetic-public-use-files/cms-2008-2010-data-entrepreneurs-synthetic-public-use-file-de-synpuf/de10-sample-1) and demonstrates the use of `dbt-duckdb` to manage and analyze the data.

* link to [journal](https://docs.google.com/document/d/1BoSmyWnHemz9O0574DGVYdN_TsIbd1vQHwkvzAPbAwI/edit)

## Requirements
- macOS with Homebrew
- Python 3.x
- `dbt-duckdb`

## Initial Setup (For macOS with Homebrew)

1. **Install Homebrew**

    If you don’t have Homebrew installed on your MacBook, install it using the following command:

    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

    Once the installation was complete, ensured Homebrew is correctly added to my PATH by running the following commands (this will make Homebrew available in future terminal sessions):

    ```
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile eval "$(/opt/homebrew/bin/brew shellenv)"
    ```

2. **Install Python**

    With Homebrew installed, you can install Python by running:

    ```
    brew install python
    ```

3. **Install DBT DuckDB**

    ```
    pip3 install dbt-duckdb
    ```
4. **Clone Repo**

    ```
    git clone https://<kylejbiron-token>@github.com/kylejbiron/kyle-dbt-duckdb.git
    ```

    where ```<kylejbiron-token>``` is requested via kylejbiron@gmail.com

5. **Initialize Virtual Environment**

    ```
    python3 -m venv venv
    ```

6. **Install DuckDB**

    ```
    brew install duckdb
    ```

7. **Install Pre-Commit"**

    ```
    pip3 install pre-commit
    ```

8. **Install SQL Linter (sqlfluff)**

    ```
    pip3 install sqlfluff
    ```

    and

    ```
    pip3 install sqlfluff-templater-dbt
    ```

## Dev Workflow Commands

* run dbt

```
dbt run
```
* start the DuckDB CLI
```
duckdb
```
* connect to an existing DuckDB database
```
.open db/cms_synpufs.db
```
* show tables in DuckDB CLI
```
show tables;
```
* run SQL queries in DuckDB CLI
```
SELECT * FROM cms_synpufs.stg_beneficiaries limit 5;
```
* quit DuckDB CLI
```
.quit
```