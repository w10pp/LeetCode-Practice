/*LeetCode SQL Practice*/
/*574.Winning Candidate*/
select Name 
from Candidate
where id=(select CandidateId
         from Vote
         group by CandidateId
         order by count(CandidateId) desc
         limit 1);
