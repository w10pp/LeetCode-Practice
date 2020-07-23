/*LeetCode SQL Practice*/
/*1322.Ads Performance*/
/*order by, case when, round*/

select ad_id,
/*calculate the ctr*/
case when sum(a.clicked)+sum(a.viewed)= 0 then 0
else round(sum(a.clicked)/(sum(a.clicked)+ sum(a.viewed))*100,2)
end as ctr
from
/*create columns to mark the viewed and clicked*/
(select ad_id, action,
case when action='Clicked' then 1
else 0 
end as clicked,
case when action='Viewed' then 1
else 0
end as viewed
from Ads) a
group by a.ad_id
order by ctr desc, ad_id asc;