# Pewlett-Hackard-Analysis
## Summary
This projects analyzes employee data from a company that is looking to set a mentorship program for employees reaching their retirement date. We utilize PostgreSQL to load company csv files with employee information and then perform queries on these datasets to determine the Number of Employees Retiring by title and and employees eligible for the Mentorship Program.

## Results
- After querying the data, we can find there are 133776 employees that will be retiring soon. However this is all not true since the initial table results includes duplicate employees since the output table inlcudes the various job titles some employees had. This initial overview table can be found in retirement_titles.csv 

- After filtering the our initial results by unique employees, we can find that there are 72458 employees born in between January 1, 1952 and December 31, 1955 that will most likely be retiring soon. These employees can be found in the unique_titles.csv

- Most of these employees reaching retirement are either Senior Staff or Senior Engineers. The following table shows the amount of employees by title that will be retiring

<img width="203" alt="image" src="https://user-images.githubusercontent.com/20058842/180350843-6419b3b8-344c-4204-99d4-6738df51a810.png">


- After querying the data, we see that there are 1550 employees that are eligible for the company mentorship program. This was obtained after reviewing the the employees born in between January 1, 1965 and December 31, 1965. The eligible employees can be found in the mentorship_eligibility.csv.
