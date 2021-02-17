# Employee_Salary_Analysis

I got six CSV files with the employee details from 1980 to 1990 and took up the task of analyzing and uncovering insights. As I want to get familiar with SQL and the process of loading data into databases, I choose to do it in PostgreSQL.

# Data Modelling
The data model has always been a buzzword for me, and this analysis helped me understand the benefits of data models. Data models are the models that are built to support the storing of the data into the database. I used  http://www.quickdatabasediagrams.com to create the data model for the project. The entity-relationship diagrams with the relationship are built to help me make the tables in my database.

# Data Engineering
After understanding the data and its relationship, I created the tables and loaded the data from the CSV's to the respective tables.

# Data Analysis
After creating the tables and loading data, queried the database to get the following requirements.
1. getting employees and their salary
2. fetching all the employees hired in 1986.
3. displaying departments and managers
4. getting department names for employees
5. All the employees having the first name 'Hercules' and the last name starts with 'B.'
6. Employees working in sales
7. Employees working in sales and development
8. Count of employees sharing the same last name

When analyzing the salaries, it was found that assistant engineers, engineers, and senior engineers wherein the same pay scale and to prove that connected the database to python using SQLAlchemy and plotted a histogram showing the distribution of the salaries and a bar chart plotting the average salaries based on the title. 

1. From the distribution of salaries over the employees it can be seen that most of the employees in the company earn between 40000 and 50000
2. The average salary is similar for different titles. This is not possible because the engineer and assistant engineer cannot get paid equally.
3. The data is not accurate and consistent and lacks integrity.

# Getting Started

1. Open employee_SQL folder.
2. Please find the entity relationship diagrams inside the data_modelling folder
3. The schema.sql is inside the data_engineering folder. There is also a text file that has the schema.
4. Open the data analysis folder to find the queries.
5. The Spurious salaries directory inside the data analysis has the jupyter notebook with the plots.
**------note------**
To run the jupyter notebook please put your password in the **config.py** file for connecting the database.





