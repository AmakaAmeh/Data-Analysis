SELECT TOP (1000) [CustomerID]
      ,[CustomerName]
      ,[Phone]
      ,[Address]
      ,[City]
      ,[State]
      ,[Zip]
      ,[Country]
      ,[Notes]
  FROM [KCC].[dbo].[Customers]

  select
  *from [Customers];
   select
  *from [Customers]
  where City <> 'Seattle';

  select
  *from [Customers]
  Where State in ('WA', 'UT', 'NY');

  select
  *from [Customers]
  Where State not in ('UT')

  select
  *from [Product];

   select
  *from [Product]
  Where CookieName like 'S%';

   select
  *from [Product]
  Where CookieName like '%o%';

  Select 
  *from customers
  where CustomerName = 'Tres Delicious' and Country = 'United States' or Country = 'France';

  Select
  distinct CustomerName as 'Customer Name'
  from Customers;

  select top (3) *from customers;

  Select
  *from customers 
  where State <> 'WA' and State <> ' ';

  Select 
  *from customers
  where State = 'WA' or State = 'NY' or State ='UT' or State ='WI'




  

