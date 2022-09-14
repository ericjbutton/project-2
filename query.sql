CREATE TABLE energy_consumption (
year INT,
state TEXT,
Total_energy bigint,
gdp real,
primary key(year, state)
);

CREATE TABLE minimum_wage (
year INT,
state TEXT,
state_minimum_wage real,
cpi_average real,
primary key (year, state)
);

select * from energy_consumption;

select * from minimum_wage;

select a.year, a.state, a.total_energy, a.gdp, 
b.state_minimum_wage,b.cpi_average  
from energy_consumption a
join
minimum_wage b
on (a.year = b.year) and (a.state = b.state)

