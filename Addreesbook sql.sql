--UC1
Create Database Addressbook;
use Addressbook; 

--UC2
Create table Addressbook
(Id int primary key identity(1,1),
FirstName varchar(30),
LastName varchar(30),
Address varchar (50),
City varchar (10),
State varchar (20),
Zip varchar (6),
PhoneNumber varchar(10)
);
Select*From Addressbook;
Alter table Addressbook Add Email varchar(30);

--UC3
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('sayunkta','mankar','Hinjawadi','Pune','Maharastra','444897','9028229984','sayumankar77@gmail.com');
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('akash','mankar','Hinjawadi','Pune','Maharastra','444807','9028889984','akashmankar77@gmail.com');
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('yash','vaze','maan','Pune','Maharastra','444697','9028229260','yashvaze@gmail.com');
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('sid','sharma','shivajinagar','Pune','Maharastra','444097','9628229984','sidsharma@gmail.com');
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email) values('shivani','beloshe','Hinjawadi','Pune','Maharastra','444497','7776836267','shivanibeloshe@gmail.com');

--UC4
update Addressbook set PhoneNumber='9860565145' where FirstName='sayunkta';
update Addressbook set LastName='kakde' where FirstName='akash';
update Addressbook set City='mumbai' where FirstName='yash';
update Addressbook set state='panjab' where FirstName='sid';
update Addressbook set FirstName='zozo' where FirstName='shivani'; 

--UC5
Delete from Addressbook where FirstName='zozo';

--UC6
select * from Addressbook where City = 'pune' or State = 'Maharastra';

--UC7
select count(*) from Addressbook group by City,State;

--UC8
select FirstName from Addressbook order by City;

--UC9
Alter table Addressbook Add Type varchar(10);
update Addressbook set Type='Family' where FirstName='sayunkta';
update Addressbook set Type='Frd' where FirstName='akash';
update Addressbook set Type='Family' where FirstName='yash';
update Addressbook set Type='Frd' where FirstName='sid';

--UC10
select count(*) from Addressbook group by Type;

--UC11
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('sayunkta','mankar','Hinjawadi','Pune','Maharastra','444897','9028229984','sayumankar77@gmail.com','Frd');
Insert into Addressbook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,Type) values('sayunkta','mankar','Hinjawadi','Pune','Maharastra','444897','9028229984','sayumankar77@gmail.com','Family');








