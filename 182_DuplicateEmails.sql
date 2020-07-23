/*LeetCode SQL Practice*/
/*182.Duplicate Emails*/

/*select Email
from Person
group by Email
having count(Email) >1;*/


select e.Email
from
(select Email, count(Email) as Count
from Person
group by Email) e
where Count>1;
