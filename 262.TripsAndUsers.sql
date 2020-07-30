/*LeetCode SQL Practice*/
/*262.Trips and Users*/

# Write your MySQL query statement below
select Request_at as 'Day',
round(sum(t.Status like 'cancelled_%')/count(*),2) as 'Cancellation Rate'
from Trips t
left join Users u1 on t.Client_Id=u1.Users_Id
left join Users u2 on t.Driver_Id=u2.Users_Id
where u1.Banned='No'
and u2.Banned='No'
and t.Request_at between '2013-10-01' and '2013-10-03'
group by t.Request_at
order by 'Day' asc;