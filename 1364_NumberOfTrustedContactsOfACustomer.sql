/*LeetCode SQL Practice*/
/*1364.Number of Trusted Contacts of a Customer*/

select i.invoice_Id, c.customer_name, i.price, ifnull(count(e.contact_name),0) as contacts_cnt, ifnull(count(s.customer_name),0) as trusted_contacts_cnt
from Invoices i join Customers c on i.user_id=c.customer_id
left join Contacts e on c.customer_id=e.user_id
left join Customers s on e.contact_name=s.customer_name and e.contact_email=s.email
group by i.invoice_id, i.price, c.customer_name
order by i.invoice_id;

