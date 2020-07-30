/*LeetCode SQL Practice*/
/*1384.Total Sales Amount by Year*/

# Write your MySQL query statement below
select s.product_id,a.product_name, a.yr 'report_year',
case when year(s.period_start)=year(s.period_end) and a.yr=year(s.period_start) then DATEDIFF(s.period_end, s.period_start)+1
when a.yr=year(s.period_start) then datediff(date_format(s.period_start, '%Y-12-31'), s.period_start)+1
when a.yr=year(s.period_end) then dayofyear(s.period_end)
when a.yr>year(s.period_start) and a.yr<year(s.period_end) then 365
else 0
end * average_daily_sales as total_amount
from
(select product_id, product_name, '2018' as yr from Product
union
select product_id, product_name, '2019' as yr from Product
union
select product_id, product_name, '2020' as yr from Product) a
join
Sales s
on a.product_id=s.product_id
having total_amount>0
order by s.product_id, a.yr;