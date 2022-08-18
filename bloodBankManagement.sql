create sequence blood_id start with 100 increment by 1;
create table blood_group_details
(
blood_group_id int primary key,
Blood_group VARCHAR2(20) not null,
Stock_in_Units number not null 
);


create sequence persons_id start with 200 increment by 1;
create table persons_details
(
person_id int primary key,
person_name varchar2(25)not null,
dob date not null,
Blood_group_id int constraint FKBlood_group_id references blood_group_details(Blood_group_id) not null, 
phone_no number(10) not null unique,
Gender varchar2(20) not null,
Address varchar2(80) not null,
Email_id varchar2(40)not null unique
);

commit;

create table blood_donation_details
(
donation_trans_id int primary key,
person_id int constraint FKperson_id references persons_details(person_id) not null, 
donation_date date not null,
Health_Condition varchar2(30) not null,
quantity number not null
);


create sequence appo_id start with 300 increment by 1;
create table donor_appointment
(
appointment_id int primary key,
Appointment_date date not null,
person_id int constraint FK_person_id references persons_details(person_id) not null 
);


create sequence req_id start with 500 increment by 1;
create table blood_request
(
request_id int primary key,
recipient_name varchar2(30) not null,
recipient_phone_no number(30) not null,
hospital_name varchar(20) not null,
blood_group_id int constraint FK_blood_group_id references blood_group_details(Blood_group_id) not null,
request_date date not null,
quantity number not null
);


create table blood_transaction
(
blood_transaction_id int primary key,
request_id int constraint FK_request_id references blood_request(request_id) not null,
transaction_date date not null,
quantity number not null,
status VARCHAR2(30) not null
);


create table admin_details
(
admin_id int primary key,
admin_name varchar2(30) not null,
admin_password varchar2(30) not null,
date_of_joining date not null,
designation varchar2(30) not null,
password_modified_date date not null
);
