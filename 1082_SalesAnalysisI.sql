/*LeetCode SQL Practice*/
/*1082.SalesAnalysisI*/
select seller_id
from Sales
group by seller_id
having sum(price)= (select sum(price) s
                   from Sales
                   group by seller_id
                   order by s desc
                   limit 1);



