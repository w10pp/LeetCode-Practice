/*LeetCode SQL Practice*/
/*1303.Find the Team Size*/

select e.employee_id, t.team_size
from Employee e, (
select team_id, count(team_id) as team_size
from Employee
group by team_id) t
where e.team_id = t.team_id;






