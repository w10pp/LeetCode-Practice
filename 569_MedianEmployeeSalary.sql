/*LeetCode SQL Practice*/
/*569.Median Employee Salary*/
# Write your MySQL query statement below

select *
from Employee
where Id in(
select b2.Id
from (
select A1.Company, Max(A1.rank) as "Rank"
from(select Id, Company, row_number() over(partition by Company Order by Salary) as "Rank"
    from Employee) A1
group by Company)
B1
join(
select Id, Company, row_number() over(partition by Company
                                     order by Salary) as "Rank"
from Employee)
B2
on (floor((B1.Rank+1)/2)=B2.Rank
   and B1.Company=B2.Company)
or (floor((B1.Rank +2)/2)=B2.Rank
   and B1.Company=B2.Company));

