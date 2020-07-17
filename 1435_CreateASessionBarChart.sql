/*LeetCode SQL Practice*/
/*1435.Create a Session Bar Chart*/

select '[0-5>' as bin, count(1) as total from sessions where duration <300
union
select '[5-10>' as bin, count(1) as total from sessions where duration >299 and duration <600
union
select '[10-15>' as bin, count(1) as total from sessions where duration >599 and duration <900
union
select '15 or more' as bin, count(1) as total from sessions where duration >899;



