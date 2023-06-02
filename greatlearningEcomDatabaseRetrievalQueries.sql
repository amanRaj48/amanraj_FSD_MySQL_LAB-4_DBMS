select cus_gender,count(distinct customer.cus_id) as TotalCustomers
from customer
join orders on customer.cus_id=orders.cus_id
where orders.ord_amount>=3000
group by cus_gender;


select cus_name, cus_city, o.ord_amount, o.pricing_id, s.pro_id, p.pro_name, p.pro_desc
from customer inner join orders as o 
on customer.cus_id=o.cus_id 
inner join supplier_pricing as s on o.pricing_id = s.pricing_id
inner join product as p on s.pro_id=p.pro_id and customer.cus_id=2;


select s.supp_name, count(p.pro_name) as num_of_products from supplier as s 
inner join supplier_pricing as sp on s.supp_id=sp.supp_id
inner join product as p on sp.PRO_ID=p.PRO_ID
group by s.SUPP_NAME
having num_of_products > 1;


select c.cus_name, o.ord_amount, o.ord_date, p.pro_name, p.pro_desc  from orders as o 
inner join supplier_pricing as sp on o.pricing_id=sp.pricing_id
inner join product as p on sp.pro_id=p.pro_id 
inner join customer as c on o.cus_id=c.cus_id where o.ord_date > "2021-09-01";



select p.pro_id, p.pro_name from supplier_pricing as sp, product as p, orders as o
where sp.pro_id = p.pro_id and o.pricing_id = sp.pricing_id and o.ord_date > '2020-10-05';


select customer.cus_name,customer.cus_gender from customer where customer.cus_name like 'A%' or customer.cus_name like '%A';



