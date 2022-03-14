use bEJibun

--Seorang pengunjung baru bernama Tony Lex ingin membeli sebuah ranjang dari toko bEJibun. 
--Sebelum melakukan pembayaran, dimasukkan data-data mengenai pengunjung. 
--Karena pengunjung tersebut baru pertama kali, maka harus membuat data baru mengenai pengunjung

insert into Customer (CUID, CUName, CUGender, CUPhone, CUDOB)
values ('CU011', 'Tony Lex', 'Male', '0816934756', '2000-04-02')

--staff bernama Budi Jackson yang akan melayani Tony Lex dalam aktifitas jual beli pada toko bEJibun

insert into SalesTransaction (SAID, STID, CUID, SADate)
values ('SA916', 'ST152', 'CU011', '2023-02-11')

insert into SalesTransactionDetail (SAID, ITID, Quantity)
values('SA916', 'IT533', '1')


--Keesokkan harinya, pengunjung bernama Alex Mason ingin membeli Handphone baru untuk kedua anaknya.
--Seperti biasa, sebelum melakukan transaksi, harus memasukkan data-data mengenai pengunjung.
--Namun karena Alex Mason sudah pernah mengunjungi toko bEJibun, maka tidak perlu membuat data baru.

--staff bernama Andi Nugroho akan melayani Alex Mason dalam aktifitas jual beli pada toko bEJibun

insert into SalesTransaction (SAID, STID, CUID, SADate)
values ('SA917', 'ST151', 'CU001', '2023-02-12')

insert into SalesTransactionDetail (SAID, ITID, Quantity)
values('SA917', 'IT532', '2')

--Seminggu kemudian, toko bEJibun mengsupplai Televisi dari Vendor Roly Poly
--Barang tersebut sampai 6 hari setelah pemesanan

--staff bernama Fredy Magun ditugaskan untuk melakukan pemesanan kepada Vendor Roly Poly

insert into PurchaseTransaction (PHID, VEID, STID, PHDate, ArrivalDate)
values ('PH796', 'VE108', 'ST159', '2023-02-19', '2023-02-25')

insert into PurchaseTransactionDetail (PHID, ITID, Quantity)
values ('PH796', 'IT537', '15')
