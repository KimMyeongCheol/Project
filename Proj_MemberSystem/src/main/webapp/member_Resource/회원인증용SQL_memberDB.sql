create database memberDB;

use memberDB;

drop table tblMember;

create table tblMember (
    num          int                    unique  auto_increment,
    uId			char(20)			not null,
    uPw			char(20)			not null,
    uName		char(20)			not null,
    uGender		char(1)				not null,
    uBirthday	char(6)				not null,
    uEmail		char(50)			not null,
    uZip			char(7)				not null,
    uAddr		char(50)			not null,
    uHobby		char(5)				not null,
    uJob			char(20)			not null,
    constraint		primary key(uid)
);

create table tblZipCode (
    zipCode		char(7)			not null,
    area1			char(10)			null,
    area2			char(20)			null,
    area3			char(40)			null,
    area4			char(20)			null
);
