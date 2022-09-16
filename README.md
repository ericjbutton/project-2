# project-2
* UMN Bootcamp ETL Project - Group 3
* Eric Button, Akhil Bandi, Sung Ahn
* Minimum Wage Data: https://www.kaggle.com/datasets/lislejoem/us-minimum-wage-by-state-from-1968-to-2017
* Energy Data: https://www.kaggle.com/datasets/lislejoem/us_energy_census_gdp_10-14?resource=download
* Database: PostgresSQL

# Instructions

Please clone this repository to your desktop and then do the following:
1. Open pgAdmin.
2. Create a Database named ``energy_db``.
3. Open a query tool on this database.
4. Navigate to the desktop folder for the repository you just created and open the folder.
5. Drag the file titled ``query.sql`` into the query tool and run the query.
6. Run each of the select statements to confirm tables are created:
* ``select * from energy_consumption;``
* ``select * from minimum_wage;``
6. Navigate to the desktop folder for this repository and launch a GitBash (Windows) or Terminal (Mac). 
7. Type ``source activate PythonData38`` and then hit ``ENTER``.
8. Type ``jupyter notebook`` and then hit ``ENTER``.
10. Navigate to ``ETL.ipynb`` to view and run code line by line.
11. Navigate back to pgAdmin. Run each of the select statements to confirm tables are loaded:
* ``select * from energy_consumption;``
* ``select * from minimum_wage;``
12. Run join statement to confirm tables are joined:
* ``select a.year, a.state, a.total_energy, a.gdp, 
b.state_minimum_wage,b.cpi_average  
from energy_consumption a
join
minimum_wage b
on (a.year = b.year) and (a.state = b.state)``
