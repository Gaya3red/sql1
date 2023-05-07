create database patientrecord;
create table doctortable(id  int primary key not null,name varchar(30),specialization varchar(30));
insert into doctortable values
(250,"gayathri","neurology"),
(251,"nivas","dermatology"),
(252,"cherry","cardiology"),
(253,"shreya","oncology"),
(254,"nikki","paediatrician");
select * from doctortable;
create table appointmentstable(opno int primary key not null,pat_name varchar(30),doctor_appointed varchar(40));
insert into appointmentstable values
(105,"bhavana","gayathri"),
(106,"pradeep","nivas"),
(107,"gousiya","cherry"),
(108,"shyam","oncology"),
(109,"visesh","paediatrician");
select * from appointmentstable;
create table patienttable(pat_name varchar(30),patient_pb varchar(40),patient_address varchar(30));
insert into patienttable values
("bhavana","alzheimer","nandyal"),
("pradeep","rashes","kurnool"),
("gousiya","heartpain","hyderabad"),
("shyam","weightloss","texas"),
("visesh","fever","banglore");
select * from patienttable;
create table reviews(pat_name varchar(30),review varchar(30));
insert into reviews values
("bhavana","satisfactory"),
("pradeep","good"),
("gousiya","good"),
("shyam","excellent"),
("visesh","satisfactory");
select * from reviews;




-- query 2
create table contacttable(id int,email varchar(30),fname varchar(30),lname varchar(30),company varchar(30),active_flag int, opt_out int);
insert into contacttable values 
(123,"a@a.com","kiran","seth","ABC",1,1),
(133,"b@a.com","neha","seth","ABC",1,0),
(234,"c@c.com","puru","malik","CDF",0,0),
(342,"d@d.com","sid","maan","TEG",1,0);
select * from contacttable;

select * from contacttable where active_flag=1;
update contacttable set active_flag=0 where opt_out=0;
delete from contacttable where company = "ABC";
insert into contacttable values(658,"mili@gmail.com","mili"," ","DGH",1,1);
select distinct(company) from contacttable;
update contact set fname="niti" where fname="mili";


-- query 3
create table customer(
customer_id int ,cust_name varchar(30),city varchar(30),grade int,
salesman_id int);

create table salesman(
salesman_id int,name varchar(30), city varchar(30),commission float);

insert into customer values(3002,"nick rimando","new york",100,5001),
(3007,"brad davis", "new york",200,5001),
(3005,"graham zusi","california",200,5002),
(3008,"julian green", "london",300,5002),
(3004,"fabian johnson","paris",300,5006),
(3009,"geoff cameron","berlin",100,5003),
(3003,"jozy altidor","moscow",200,5007),
(3001,"brad guzan", "london",null,5005);
select * from customer;

insert into salesman values(5001,"james hoog","new york",0.15),
(5002, "nail knite","paris",0.13),
(5005,"pit alex","london", 0.11),
(5006,"mc lyon", "paris",0.14),
(5007,"paul adam","rome",0.13),
(5003, "lauson hen","san jose",0.12);
select * from salesman;

select customer.cust_name,customer.city as customer_city,customer.grade,salesman.name as salesman,salesman.city as salesman_city from customer inner join salesman on customer.salesman_id=salesman.salesman_id where customer.grade<100 order by customer_id ASC;











