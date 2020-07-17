/*LeetCode SQL Practice*/
/*13027.List the Products Ordered in a Period*/

select p.product_name, sum(o.unit) as unit
from Products p inner join Orders o
on p.product_id = o.product_id
where month(order_date) = 2 and year(order_date) = 2020
group by product_name
having unit >= 100
order by 2 DESC;



