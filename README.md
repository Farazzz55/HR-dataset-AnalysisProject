# HR Data Analysis Project


**For more details , please refer to the documentation provided**



**team project**

## 1. Introduction

This project provides an in-depth analysis of HR data to assess key aspects such as employee performance, satisfaction, experience, and attrition. Through interactive dashboards and SQL queries, we explore various metrics, including employee count, average satisfaction, ratings, and salary trends over time. The analysis also covers employee demographics such as age, gender, ethnicity, and business travel frequency.

The project focuses on identifying relationships between employee experience (e.g., years at the company) and performance ratings, as well as the impact of training opportunities on top performers. Additionally, attrition analysis by department and job role helps pinpoint areas with high turnover, allowing HR managers to implement targeted retention strategies.

By combining data visualization and SQL-driven insights, this project equips HR managers with actionable information to enhance employee retention, optimize performance evaluations, and improve overall job satisfaction.

### Key Goals of This Analysis Include:

1. **Tracking Workforce Demographics and Diversity**:  
   Gaining insights into workforce composition by gender, ethnicity, age, and business travel frequency to support diversity and inclusion initiatives.

2. **Improving Job Satisfaction**:  
   Assessing satisfaction metrics (e.g., environment, job, work-life balance) across various employee groups to address areas with lower satisfaction and increase engagement.

3. **Understanding Employee Performance Trends**:  
   Analyzing self and manager ratings to identify discrepancies, trends, and areas for improvement across different departments, job roles, and demographics.

4. **Optimizing Training and Development**:  
   Evaluating the relationship between training opportunities and performance to ensure top performers are receiving adequate professional development.

5. **Enhancing Employee Retention**:  
   Identifying factors contributing to employee attrition, such as department, job role, or experience, to develop targeted strategies for reducing turnover.

## 2. Tools and Technologies Used

### 1. Jupyter Notebook (Python)

- **Purpose**:  
  To prepare and clean the HR datasets for analysis, ensuring data consistency and readiness for exploring employee performance, satisfaction, and attrition trends.

- **Actions**:  
  - Loaded and merged multiple datasets (employee, performance, education, satisfaction).
  - Cleaned data by handling missing values, removing extra spaces, and formatting columns.
  - Calculated key metrics like attrition year and filtered out-of-range performance reviews.
  - Verified and standardized data types across all datasets for accurate analysis.

### 2. SQL

- **Purpose**:  
  To connect to SQL Server, upload the cleaned data, and perform advanced data analysis using SQL queries directly from the Jupyter notebook for more efficient querying and insight extraction.

- **Actions**:  
  - Established connection to SQL Server using SQLAlchemy and ODBC.
  - Uploaded preprocessed dataframes as SQL tables.
  - Executed SQL queries to extract insights on employee performance, satisfaction, and attrition directly from the database.

### 3. Power BI

- **Purpose**:  
  To visualize and analyze key HR metrics using Power BI dashboards, enabling HR managers to gain insights into employee performance, satisfaction, demographics, and attrition trends. These dashboards provide an interactive way to explore the data and track trends over time.

- **Actions**:  
  - Created interactive dashboards to visualize employee metrics such as satisfaction levels, performance ratings, and salary trends.
  - Included filters for department, job role, year, state, education level, and other key demographics to allow for deeper analysis.
  - Tracked and visualized trends in attrition, performance, and satisfaction over time to provide actionable insights for HR decision-making.






