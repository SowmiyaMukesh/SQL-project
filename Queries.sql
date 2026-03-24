USE restaurant_db;
#objective1
#1--View the menu_items Table
select * From menu_items; 

#2--Find the number of items on the menu.
select count(*) From menu_items;  

#3--What are the least and most expensive item on the menu?
Select * FROM menu_items
order by price; 
Select * FROM menu_items
order by price desc; 

#4--How many italian dishes are on the menu?
Select count(*) from menu_items where category='Italian'; 

#5--What are the least and most expensive Italian dishes on the menu?
Select * FROM menu_items where category='Italian' order by price;
Select * FROM menu_items where category='Italian' order by price desc;

#6--How many dishes are in each category?
Select category,count(menu_item_id) as num_dishes FROM menu_items group by category;

#7--What is the average dish price within each category?
Select category,count(menu_item_id) as Avg_price FROM menu_items group by category;

#objective2
#1--View the order details table.

#2--What is the date range of the table?
Select * FROM order_details order by order_date;
select min(order_date), max(order_date) FROM order_details;

#3--How many order were made within the date range?
Select count(distinct order_id) FROM order_details;

#4-- How many items were ordered within the date range?
select count(*) From order_details;

#5--Which orders had the most number of items?
select order_id,count(item_id) as num_items FROM order_details group by order_id order by num_items desc; 

#6--How many orders had more than 12 items?
select Count(*) FROM
(select order_id,count(item_id) as num_items FROM order_details group by order_id having num_items>12 ) as num_orders; 

#objective3
#1--combine the menu_items and order_details tables into a single table.
Select * FROM menu_items;
Select * FROM order_details;

select * FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id;

#2--What were the least and most ordered items?What categories were they in?
select item_name,category , Count(order_details_id) as num_purchase 
FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id group by item_name,category 
order by num_purchase;
select item_name,category , Count(order_details_id) as num_purchase 
FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id group by item_name,category 
order by num_purchase desc;

#3--What were the top 5 order that spent the most money?
 select order_id,sum(price) as total_spend FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id
 group by order_id order by total_spend desc limit 5;
 
 #4--View the details of the highest spent order.what insights can you gather from the 
select category, count(item_id) as num_items FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id
where order_id =440 group by category;

#5--View the details of the top 5 highest spend order.
select order_id,category, count(item_id) as num_items FROM order_details od left join menu_items mi on od.item_id=mi.menu_item_id
where order_id in(440,2075,1957,330,2675) group by order_id, category;

440	192.15
2075	191.05
1957	190.10
330	189.70
2675	185.10
