/*LeetCode SQL Practice*/
/*1158.Market Analysis I*/

select u.user_id as buyer_id, u.join_date, ifnull(count(a.order_date), 0) as orders_in_2019
from Users u left join
(select * from Orders o
where o.order_date between '2019-01-01' and '2019-12-31') a
on u.user_id = a.buyer_id
group by u.user_id;
