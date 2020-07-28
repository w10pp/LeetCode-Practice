/*LeetCode SQL Practice*/
/*1164.Product Price at a Given Date*/

select p.product_id, ifnull(a.new_price, 10) as price
from Products p
left join (select * from Products
          where (product_id, change_date) in 
           (select product_id, max(change_date) from products
           where change_date<='2019-08-16'
           group by product_id))
           as a
on p.product_id=a.product_id
group by product_id
order by price desc;  

