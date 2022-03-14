use bEJibun

--1.
select ITName as [ItemName], ITPrice as [ItemPrice], sum(ptd.Quantity) as [Item Total]
from Item i join PurchaseTransactionDetail ptd on i.ITID = ptd.ITID join PurchaseTransaction pt on ptd.PHID = pt.PHID
where pt.ArrivalDate is null
group by ITName, ITPrice
having sum(ptd.Quantity) > 100
order by [Item Total] desc

--2.
select VEName as [VendorName], substring (VEEmail, charindex('@', VEEmail) + 1, len(VEEmail)) as [Domain Name]
from Vendor v join PurchaseTransaction pt on v.VEID = pt.VEID join PurchaseTransactionDetail ptd on pt.PHID = ptd.PHID
where VEAddress like 'Food Street' and substring (VEEmail, charindex('@', VEEmail) + 1, len(VEEmail)) not like '%gmail.com'

--3.
select month(st.SADate) as [Month], min(std.Quantity) as[Minumum Quantity Sold], max(std.Quantity) as[Maximum Quantity Sold]
from SalesTransaction st join SalesTransactionDetail std on st.SAID = std.SAID join Item i on std.ITID = i.ITID join ItemType it on i.IPID = it.IPID
where year(st.SADate) = '2019' and IPName not like 'Food' and IPName not like 'Drink'
group by st.SADate

--4.
select replace(s.STID, 'ST', 'Staff ') as [Staff Number], s.STName as [Staff Name], concat('Rp. ', s.STSalary) as [Salary], count(st.SAID) as [Sales Count], avg(std.Quantity) as [Average Sales Quantity]
from Staff s join SalesTransaction st on s.STID = st.STID join SalesTransactionDetail std on st.SAID = std.SAID join Customer c on st.CUID = c.CUID
where (c.CUGender like 'Male' and s.STGender like 'Female') or (c.CUGender like 'Female' and s.STGender like 'Male')
group by s.STID, s.STName, s.STSalary

--5.
select left(c.CUName, len(charindex(' ', c.CUName)))  +  upper(right(c.CUName, len(charindex(' ', c.CUName)))) as [Customer Initial], convert(varchar, st.SADate, 10) as [Transaction Date], std.Quantity as [Quantity]
from Customer c join SalesTransaction st on c.CUID = st.CUID join SalesTransactionDetail std on st.SAID = std.SAID,(
			select avg(Quantity) as[AverageQuantity]
			from SalesTransactionDetail
			)a
where c.CUGender like 'Female'
group by c.CUName, st.SADate, std.Quantity, a.AverageQuantity
having std.Quantity > a.AverageQuantity

--6.
select lower(v.VEID) as [ID], v.VEName as [VendorName], replace(v.VEPhone, '0', '+62') as [Phone Number]
from Vendor v join PurchaseTransaction pt on v.VEID = pt.VEID join PurchaseTransactionDetail ptd on pt.PHID = ptd.PHID,(
			select min(Quantity) as [MinimumQuantity]
			from PurchaseTransactionDetail
			)b
group by v.VEID, v.VEName, v.VEPhone, ptd.Quantity, b.MinimumQuantity
having ptd.Quantity > b.MinimumQuantity and convert(int, right(v.VEID, 3))% 2 != 0

--7. 
select s.STName as [StaffName], v.VEName as [VendorName], pt.PHID as [Purchase ID], sum(ptd.Quantity) as [Total Purchased Quantity], convert(varchar, datediff(day, pt.PHDate, getdate())) + ' Days ago' as [Ordered Day]
from Staff s join PurchaseTransaction pt on s.STID = pt.STID join Vendor v on pt.VEID = v.VEID join PurchaseTransactionDetail ptd on pt.PHID = ptd.PHID,(
			select max(Quantity) as [MaximumQuantity]
			from PurchaseTransactionDetail ptd join PurchaseTransaction pt on ptd.PHID = pt.PHID
			where datediff(day, pt.PHDate, pt.ArrivalDate) < 7
			)c
group by s.STName, v.VEName, pt.PHID, pt.PHDate, c.MaximumQuantity
having sum(ptd.Quantity) > c.MaximumQuantity


--8.
select datename(weekday, st.SADate) as [Day], count(std.ITID) as [Item Sales Amount]
from SalesTransaction st join SalesTransactionDetail std on st.SAID = std.SAID join Item i on std.ITID = i.ITID,(
			select avg(convert(int, ITPrice)) as [AveragePrice]
			from Item i join ItemType it on i.IPID = it.IPID
			where it.IPName like 'Electronic' or it.IPName like 'Gadgets'
			)d
group by st.SADate, d.AveragePrice, i.ITPrice
having i.ITPrice < d.AveragePrice

--9. 
create view [Customer Statistic by Gender] as
select c.CUGender as [CustomerGender], max(std.quantity) as [Maximum Sales], min(std.quantity) as [Minumum Sales]
from Customer c join SalesTransaction st on c.CUID = st.CUID join SalesTransactionDetail std on st.SAID = std.SAID
where std.Quantity between 10 and 50 and year(c.CUDOB) between 1998 and 1999
group by c.CUGender

--10.
create view [Item Type Statistic] as
select upper(it.IPName) as [Item Type], avg(convert(int, i.ITPrice)) as [Average Price], count(i.ITID) as [Number of Item Variety]
from ItemType it join Item i on it.IPID = i.IPID
where left(it.IPName, 1) like 'F' and i.ITMinPurchase > 5
group by it.IPName