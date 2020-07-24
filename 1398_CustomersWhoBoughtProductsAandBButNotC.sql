/*LeetCode SQL Practice*/
/*1398.Customer Who Bought Products A and B but Not C*/

select o.customer_id, c.customer_name
from Customers c left join Orders o
on c.customer_id = o.customer_id
where o.customer_id in 
(select customer_id from Orders where product_name='A')
and o.customer_id in 
(select customer_id from Orders where product_name='B')
and o.customer_id not in 
(select customer_id from Orders where product_name='C')
group by o.customer_id;

