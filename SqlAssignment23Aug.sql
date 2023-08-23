use iNeuron;

create table info_(
Product_ID integer unique key,
Product_Name varchar(50)
);

insert into info_ values(1001,'Blog'),
(1002,'Youtube'),
(1003,'Education');

create table Product_info_like(
User_id integer,
Product_id integer unique key,
Liked_date date
);

insert into Product_info_like values(1,1001,'2023-08-23'),
(2,1003,'2023-09-02');

select * from info_;

select * from Product_info_like;

select info_.Product_id
from info_
left outer join Product_info_like on info_.Product_id=Product_info_like.Product_id
where liked_date is null;