create view pengiriman as 
select
	o."customerID" as customer_id,
	o."orderID" as order_id,
	s."companyName" as shipper,
	o.freight as freight,
	case
		when o."shippedDate"::date > o."requiredDate"::date 
    then (o."shippedDate"::date - o."requiredDate"::date)
		else 0
	end as keterlambatan_hari
from
	orders o
inner join shippers s on
	o."shipperID" = s."shipperID"
where
	o."shippedDate" is not null;

	
	select*from pengiriman
