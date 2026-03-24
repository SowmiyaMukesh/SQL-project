# Restaurant Sales & Order Pattern Analysis using SQL

## Project Overview

In this project, I worked on a restaurant dataset to analyze menu performance, order behavior, and customer spending patterns using SQL.
The project was mainly focused on exploring two tables — menu_items and order_details — and using SQL queries to answer business questions related to pricing, category-wise analysis, order volume, item popularity, and high-value orders.
I used SQL to cleanly extract insights from the raw data and understand how menu items and customer orders are performing over a given time period.

## Dataset

This project uses two datasets:
•	menu_items
Contains menu item details such as item name, category, and price.
•	order_details
Contains order-level transaction data such as order ID, item ID, order date, and order time.
Together, these tables help analyze both menu structure and customer ordering patterns.

## Tools & Techniques Used

•	SQL
•	Filtering and sorting
•	Aggregate functions
•	GROUP BY
•	ORDER BY
•	Subqueries
•	JOIN operations
•	Business-oriented data analysis

## What I Worked On

In this project, I wrote SQL queries to answer structured business questions in three stages:

# 1. Menu Analysis

I started by exploring the menu_items table to understand the restaurant menu better.
This included:
•	counting the total number of menu items
•	identifying the least and most expensive dishes
•	checking how many Italian dishes are on the menu
•	comparing dish counts across categories
•	analyzing pricing by category

# 2. Order Analysis

Next, I explored the order_details table to understand ordering activity.
This included:
•	checking the date range of the orders
•	counting total orders and total items ordered
•	identifying orders with the highest number of items
•	finding how many orders had more than 12 items

# 3. Combined Analysis

Finally, I joined both tables to connect menu information with order activity.
This helped me analyze:
•	least and most ordered items by category
•	top 5 highest-spending orders
•	category distribution within the highest-value orders
•	spending behavior across top orders

## Key Findings

Some important insights from the analysis:

•	The menu contains 32 items across multiple categories.
•	The least expensive item is Edamame ($5.00), while the most expensive item is Shrimp Scampi ($19.95).
•	There are 9 Italian dishes on the menu.
•	The order data covers the period from January 1, 2023 to March 31, 2023.
•	A total of 5,370 orders were placed, covering 12,234 items.
•	Only 20 orders had more than 12 items, showing that very large orders were limited.
•	The most ordered items include Hamburger, Edamame, and Korean Beef Bowl.
•	The least ordered items include Chicken Tacos and Potstickers.
•	The top 5 highest-spending orders ranged from $185.10 to $192.15.
•	In the highest-spending order, Italian dishes made up the largest share of items ordered.

## Conclusion

This project helped me strengthen my SQL fundamentals by working on real query-based analysis using joins, aggregations, sorting, grouping, and subqueries.
It also improved my ability to translate raw restaurant data into meaningful business insights related to menu pricing, item demand, and customer order patterns.
