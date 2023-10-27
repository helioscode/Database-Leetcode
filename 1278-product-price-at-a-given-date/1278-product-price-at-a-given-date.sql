select a.product_id,new_price as price from (Select product_id, max(change_date) as b from Products where change_date<='2019-08-16' group by product_id) as a,products where products.product_id=a.product_id and a.b=products.change_date
UNION

select distinct Products.product_id, 10 as price from products where change_date>'2019-08-16' and Products.product_id != all(Select product_id from Products where change_date<='2019-08-16' group by product_id) ;


