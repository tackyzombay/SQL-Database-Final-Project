create database bEJibun

use bEJibun

create table Customer(
CUID varchar(50) primary key check(CUID like 'CU[0-9][0-9][0-9]'),
CUName varchar(50) not null check(len(CUName)>5),
CUGender varchar(50) not null check(CUGender like 'Male' or CUGender like 'Female'),
CUPhone varchar(50) not null,
CUDOB date not null
)

create table Vendor(
VEID varchar(50) primary key check(VEID like 'VE[0-9][0-9][0-9]'),
VEName varchar(50) not null,
VEPhone varchar(50) not null,
VEAddress varchar(50) not null check(VEAddress like '% Street'),
VEEmail varchar(50) not null check(VEEmail like '%@%.com')
)

create table Staff(
STID varchar(50) primary key check(STID like 'ST[0-9][0-9][0-9]'),
STName varchar(50) not null,
STGender varchar(50) not null check(STGender like 'Male' or STGender like 'Female'),
STPhone varchar(50) not null,
STSalary varchar(50) not null
)

create table ItemType(
IPID varchar(50) primary key check(IPID like 'IP[0-9][0-9][0-9]'),
IPName varchar(50) not null
)

create table Item(
ITID varchar(50) primary key check(ITID like 'IT[0-9][0-9][0-9]'),
IPID varchar(50) foreign key references ItemType(IPID) on update cascade on delete cascade,
ITName varchar(50) not null,
ITPrice varchar(50) not null,
ITMinPurchase varchar(50) not null
)

create table PurchaseTransaction(
PHID varchar(50) primary key check(PHID like 'PH[0-9][0-9][0-9]'),
VEID varchar(50) foreign key references Vendor(VEID) on update cascade on delete cascade,
STID varchar(50) foreign key references Staff(STID) on update cascade on delete cascade,
PHDate date not null,
ArrivalDate date
)

create table PurchaseTransactionDetail(
PHID varchar(50) foreign key references PurchaseTransaction(PHID) on update cascade on delete cascade,
ITID varchar(50) foreign key references Item(ITID) on update cascade on delete cascade,
Quantity integer not null
)

create table SalesTransaction(
SAID varchar(50) primary key check(SAID like 'SA[0-9][0-9][0-9]'),
STID varchar(50) foreign key references Staff(STID) on update cascade on delete cascade,
CUID varchar(50) foreign key references Customer(CUID) on update cascade on delete cascade,
SADate date not null
)

create table SalesTransactionDetail(
SAID varchar(50) foreign key references SalesTransaction(SAID) on update cascade on delete cascade,
ITID varchar(50) foreign key references Item(ITID) on update cascade on delete cascade,
Quantity integer not null
)