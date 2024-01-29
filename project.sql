SELECT *FROM sales.transactions limit 5;
SELECT *FROM sales.transactions where market_code="Mark001";
SELECT count(*)FROM sales.transactions where market_code="Mark001";  # all record count in chennai
SELECT *FROM sales.transactions where currency="USD";
# SHOW TRANSACTION IN 2020 JOIN BY DATE TABLE

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year =2020;
# in 2020 know the total revenue/total sales :142235559
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date where sales.date.year =2020;

# sum in chennai:2463024
select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date 
where sales.date.year =2020 and sales.transactions.market_code="Mark001";

# distinct product sold in chennai
select distinct product_code from sales.transactions where market_code="Mark001";

select * from sales.transactions;
select * from sales.transactions where sales_amount<=0;

select distinct(transactions.currency)from transactions;

select count(*) from transactions where transactions.currency='INR\r';

select count(*) from transactions where transactions.currency='INR'; # filter all the record with inr or usd

select * from transactions where transactions.currency='USD\r' or transactions.currency='USD'; # find duplicate record
select * from transactions where transactions.currency='INR\r' or transactions.currency='INR';

select sum(transactions.sales_amount) from transactions
inner join date on transactions.order_date = date.date where date.year=2020
and transactions.market_code="Mark001";