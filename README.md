# sql-challenge
## Data Modeling, Data Engineering, Data Analysis
I designed tables to hold data in CSVs ("data modeling"), imported the CSVs into a SQL database ("data engineering"), and answered questions regarding the data ("data analysis"). 
![Avergare Salary of Employees by Title Barplot copy](https://user-images.githubusercontent.com/54033512/71752386-7f807400-2e44-11ea-88e9-b2c8e0c40c24.png)
![Salary Range Histogram copy](https://user-images.githubusercontent.com/54033512/71752407-92934400-2e44-11ea-9d94-44374e645235.png)
### Data Modeling
 - First, I examined the CSVs and sketch out an ERD of the tables.
### Data Engineering
 - Second, I created a table schema with the necessary primary and foreign keys for each of the six CSV files in the data folder. 
 - Third, I imported the CSV files into the cooresponding SQL table.
### Data Analysis
The data analysis includes the following:
- List of the following details of each employee: employee number, last name, first name, gender, and salary.
- List of employees who were hired in 1986.
- List of the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
- List of the department of each employee with the following information: employee number, last name, first name, and department name.
- List of all employees whose first name is "Hercules" and last names begin with "B."
- List of all employees in the Sales department, including their employee number, last name, first name, and department name.
- List of all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
- In descending order, list of the frequency count of employee last names, i.e., how many employees share each last name.
### Pandas
I also imported the SQL database into Pandas, and created the following charts:
- A histogram to visualize the most common salary ranges for employees.
- A bar chart of average salary by title.
