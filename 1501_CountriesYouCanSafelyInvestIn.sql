/*LeetCode SQL Practice*/
/*1501.Countries you can safely invest in*/

select a.name as country
from Calls c1
join (select p.id, c2.name
     from Person p
     join Country c2
     on c2.country_code=substring(p.phone_number,1,3)) a
on c1.caller_id = a.id or c1.callee_id=a.id
group by a.name
having avg(c1.duration)>(select avg(duration) from calls);

