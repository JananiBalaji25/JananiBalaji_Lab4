select pro.pro_id,pro.pro_name from product pro join supplier_pricing sp on sp.pro_id = pro.pro_id join order_table ord on ord.price_id = sp.price_id where ord.ord_date > '2021-10-05';
