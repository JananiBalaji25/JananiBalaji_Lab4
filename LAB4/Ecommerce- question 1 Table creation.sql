create database e_commerce;
use e_commerce;

create table category(
cat_id int primary key auto_increment,
cat_name varchar(20) Not null
);




create table customer(
cus_id int primary key auto_increment,
cus_name varchar(50) Not null,
cus_phone varchar(50) not Null,
cus_city varchar(50) not null,
cus_gender char
);




create table order_table(
ord_id int primary key auto_increment,
ord_amount int not null,
ord_date date not null,
cus_id int,
price_id int,
foreign key (cus_id) references customer(cus_id),
foreign key (price_id) references supplier_pricing(price_id) 
);




create table product (
pro_id int primary key auto_increment,
pro_name varchar(20) not null default "dummy",
pro_desc varchar(60),
cat_id int,
foreign key (cat_id) references category(cat_id)
);

create table rating(
rat_id int primary key auto_increment,
ord_id int,
rat_ratstars int not null,
foreign key (ord_id) references order_table(ord_id)
);




create  database e_commerce;
use e_commerce;


create table supplier(
sup_id int primary key auto_increment,
supname varchar(50) Not null,
sup_city varchar(50) not Null,	
sup_phone varchar(50) not null
);




create table supplier_pricing(
price_id int primary key auto_increment,
pro_id int,
sup_id int,
sup_price int default 0,
foreign key (pro_id) references product(pro_id),
foreign key (sup_id) references supplier(sup_id)
);