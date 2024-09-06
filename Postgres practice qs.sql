1- Who is the senior most emplyee based on job title
select * from employee

ORDER BY levels desc

limit 1


2-which country have the most invoices?

select COUNT(*), billing_country
from invoice 
group by billing_country
ORDER BY count desc
limit 1

3-what are the top 3 values of total invoices?
select * from invoice
ORDER BY total desc
limit 3


4-

select SUM(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc

5-

select customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
from customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total desc
limit 1
