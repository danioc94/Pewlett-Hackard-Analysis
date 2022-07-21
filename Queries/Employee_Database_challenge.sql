SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retiring_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

--Get unique_retiring_titles
select count(title), title
into unique_retiring_titles
from unique_titles
group by title
order by count(title) desc;

-- Employees available for Mentorship program
select distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentorship_program
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join titles as t
on (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
     AND (de.to_date = '9999-01-01')
order by (e.emp_no);