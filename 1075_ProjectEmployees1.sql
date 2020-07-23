/*LeetCode SQL Practice*/
/*1075.Project Employees I*/
/*round*/
select project_id, round(avg(experience_years),2) as average_years
from Project p, Employee e
where p.employee_id = e.employee_id
group by project_id;

