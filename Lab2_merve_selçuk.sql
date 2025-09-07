CREATE DATABASE k2
create TABLE kitaplar(
KitapId int not null,
KitapAdi varchar(50),
YazarId int not null,
ISBN varchar(50),
Yayýnevi varchar(50),
BasimTarihi date,
StokAdedi int,
primary key (KitapId)

);
 create table yazarlar(
 YazarId int not null,
 Ad varchar(50),
 soyad varchar(50),
 DogumTarýhý date,
 Ulke varchar(50),
 primary key (YazarId)
 );

 create table KutuphaneUyeleri(
 UyeId int not null,
 Ad varchar(50),
 soyad varchar(50),
 Telefon varchar(50),
 Adres varchar(50),
 primary key (UyeId)
 );
 create table OduncAlinanKitaplar(
 OduncId int not null,
 KitapAdi int not null,
 UyeID int not null,
 AlisTarýhý varchar(50),
 TeslimTarihi varchar(50),
 primary key (OduncId)
 );
 alter table kitaplar add foreign key (YazarId) references yazarlar (YazarId);
 alter table OduncAlýnanKitaplar add foreign key (KitapId) references Kitaplar(Kitapýd);
 alter table OduncAlýnanKÝtaplar add foreign key (UyedId) references KutuphaneUyeleri(UyedId);