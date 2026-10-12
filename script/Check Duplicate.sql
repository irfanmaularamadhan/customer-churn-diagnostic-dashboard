select
	"orderID",
	COUNT(*)
from                          
	Orders
group by
	"orderID"
having
	COUNT(*) > 1;



select
	"orderID",
	"productID",
	COUNT(*)
from
	order_details
group by
	"orderID",
	"productID"
having
	COUNT(*) > 1;



select
	"customerID",
	COUNT(*)
from
	Customers
group by
	"customerID"
having
	COUNT(*) > 1;
