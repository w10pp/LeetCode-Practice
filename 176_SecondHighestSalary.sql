/*LeetCode SQL Practice*/
/*176.Second Highest Salary*/

select 
(case when (select count(distinct Salary) from Employee)<2
then null
else (select Salary from Employee
     order by Salary desc limit 1,1)
end) as SecondHighestSalary
;



/*select max(Salary) as SecondHighestSalary
from Employee
#exclude the highest
where Salary not in (select max(Salary) from Employee);*/