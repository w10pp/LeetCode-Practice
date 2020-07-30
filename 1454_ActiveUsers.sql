/*LeetCode SQL Practice*/
/*1454.Active Users*/

select distinct l1.id,
(select name from Accounts where id=l1.id) 'name'
from Logins l1
join logins l2 on l1.id=l2.id and datediff(l2.login_date, l1.login_date) between 1 and 4
group by l1.id, l1.login_date
having count(distinct l2.login_date)=4;