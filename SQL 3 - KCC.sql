SELECT TOP (1000) [OrderID]
      ,[OrderDate]
      ,[CustomerID]
      ,[OrderTotal]
  FROM [KCC].[dbo].[Orders]

  Where OrderTotal >800;

  select *from orders
       where Ordertotal >=1000;

	   select *from orders
       where Ordertotal between 800 and 1500;

	   select OrderID, OrderDate, OrderTotal, CustomerName, Phone from orders O
	   join customers c on O.CustomerID = C. CustomerID
	   Order by OrderTotal desc;

	   Select*from Orders
	   Where OrderDate >= dateadd(month,-1,getdate())
	   /*To retrieve sales made last month*/

Select COUNT(*)from dbo.Orders
	   Where OrderDate >= dateadd(month,-1,getdate())

	   select sum(ordertotal) from Orders
	   Group by CustomerID;


	    
	   


  
