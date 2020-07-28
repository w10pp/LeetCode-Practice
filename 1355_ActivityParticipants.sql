/*LeetCode SQL Practice*/
/*1355.Activity Participants*/

select activity
from Friends
group by activity
having count(activity) !=(
select count(activity) as cnt
from Friends
group by activity
order by cnt desc
limit 1)
and count(activity) !=
(select count(activity) as cnt
from Friends
group by activity
order by cnt asc
limit 1)
;

