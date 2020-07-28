/*LeetCode SQL Practice*/
/*1459.Rectangles Area*/
select p1.id as p1,p2.id as p2,
abs(p1.x_value-p2.x_value)*abs(p1.y_value-p2.y_value) as area
from Points p1
join Points p2
on p1.x_value !=p2.x_value and p1.y_value != p2.y_value
and p1.id < p2.id
order by area desc, p1, p2;
