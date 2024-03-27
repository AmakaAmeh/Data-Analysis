Select *from sales;

Select *from people;

Select s.SaleDate, S.Amount, P. Salesperson, S.SPID
from sales as s
join People p on p.spid =s.spid;

Select s.SaleDate, s.amount, pr.product, p.salesperson, p.team , g.GeoID
from sales s
join products pr on pr.pid =s.pid
join people p on p.spid = s.spid
join geo g on g.geoid = s.geoid
where s.amount <500 
and p.team in ('Yummies', 'Delish', ' ' )
order by SaleDate; 


Select team, count(salesperson) as 'Sales Rep'
from people
Group by team;

Select PID, sum(amount) as 'Total Sales', avg(amount) as 'Avg Sales', sum(boxes) as 'No of Boxes'
from sales
Group by PID;

Select Geoid, sum(amount) as 'Total Sales', avg(amount) as 'Avg Sales',sum(boxes) as 'No of Boxes'
From sales 
Group by GeoID;


Select g.geo , sum(amount) as 'Total Sales', avg(amount) as 'Avg Sales',sum(boxes) as 'Total No. boxes'
From sales s 
join geo g on s.geoid = g.geoid
Group by Geo;


Select p.Salesperson, sum(amount) as 'Total Sales'
From sales s 
join people p  on s.spid = p.spid
Group by salesperson;

Select pr. category, p.team, sum(amount) as 'Total Sales' , sum(boxes) as 'No of Boxes'
From sales s 
join people p on p.spid = s.spid
join products pr on pr.pid = s.pid
where p. team <> ''
Group by pr.category, p.team
Order by pr.category, p.team;


Select pr. Product, sum(amount) as 'Total Sales' , sum(boxes) as 'No of Boxes'
From sales s 
join products pr on pr.pid = s.pid
Group by pr.Product
Order by 'Total Sales' desc;

Select pr. Product, sum(amount) as 'Total Sales' , sum(boxes) as 'No of Boxes'
From sales s 
join products pr on pr.pid = s.pid
Group by pr.Product
Order by 'Total Sales'
Limit 10; 



