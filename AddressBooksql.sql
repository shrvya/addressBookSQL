create database addressBookService;
use addressBookService;
#UC2
create table addressBook
(
firstName varchar(150) NOT NULL PRIMARY KEY ,
lastName varchar(150) NOT NULL,
address varchar(150) NOT NULL,
city varchar(150) NOT NULL,
state varchar(150) NOT NULL,
zip varchar(6) NOT NULL,
phone varchar(12) NOT NULL,
email varchar(150) NOT NULL
);
#UC3
insert into addressBook values("Shri","Shetty","Seoul","Unknown","karnataka","574102","7895648700","agapastala@gmail.com");
insert into addressBook values("J","K","Seoul","idk","karnataka","567555","9000054320","JKseoul@gmail.com");
#UC4
update addressBook set address="South K"
where firstName="J" and lastName="K";
update addressBook set city="Udupi"
where firstName="Shri" and lastName="Shetty";
select * from addressBook;

#UC5
delete from addressBook where firstName="J" and lastName="K";
#UC6
select * from addressBook where city="Udupi" and state="karnataka";
#UC7
select count(*) from addressBook group by state;
#UC8
update addressBook set city="idk"
where firstName="Shri" and lastName="Shetty";
update addressBook set city="idk"
where firstName="J" and lastName="K";
select * from addressBook where city="idk" order by firstName;
#UC9
alter table addressBook add(newName varchar(150), relation varchar(150));
UPDATE addressBook SET newName="Jung", relation="Family" where firstName="J"; 
UPDATE addressBook SET newName="Shri", relation="Family" where firstName="Shri"; 
#UC10
Select count(*) from addressBook group by relation;
