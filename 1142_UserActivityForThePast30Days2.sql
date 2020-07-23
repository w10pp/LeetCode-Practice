/*LeetCode SQL Practice*/
/*1142.User Activity for the Past 30 Days II*/
/*ifnull, datediff, count(distinct())*/

select 
ifnull(round(sum(cnt)/count(user_id),2),0) as average_sessions_per_user
from 
(select user_id, count(distinct session_id) as cnt
from Activity
where datediff( '2019-07-27', activity_date) <30
group by user_id
having cnt>=1) a
;
