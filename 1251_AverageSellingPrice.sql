/*LeetCode SQL Practice*/
/*1251.Average Selling Price*/


select p.product_id, round(sum(p.price*u.units)/sum(u.units),2) as average_price
from Prices p, UnitsSold u
where p.product_id = u.product_id 
and u.purchase_date between p.start_date and p.end_date
group by p.product_id;



