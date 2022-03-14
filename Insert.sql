use bEJibun

insert into Customer (CUID, CUName, CUGender, CUPhone, CUDOB)
			values ('CU001','Alex Mason','Male','0813644987','1990-01-06'),
					('CU002','David Thomas','Male','0812467423','1990-09-29'),
					('CU003','Meg Thomas','Female','0811684902','1901-01-20'),
					('CU004','Brandon Michael','Male','0819462332','1991-04-15'),
					('CU005','Paul Manuel','Male','0818988765','1992-01-31'),
					('CU006','Yassine Taoufik','Male','0817223987','1993-12-20'),
					('CU007','Way Jon','Male','0813906542','1995-02-15'),
					('CU008','Margaret Andreas','Female','0816867803','1996-03-11'),
					('CU009','Jane Khan','Female','0815432199','1998-11-30'),
					('CU010','Martinez Romelo','Male','0815780695','2001-01-29')
					

insert into Vendor (VEID, VEName, VEPhone, VEAddress, VEEmail)
			values ('VE101', 'OkeBarang', '08175964', 'Food Street', 'OkeBarang@gmail.com'),
					('VE102', 'OmegaMart', '03851543', 'Food Street', 'OmegaMart@gmail.com'),
					('VE103', 'yePhone', '06289634', 'Semanggo Street', 'yePhone@outlook.com'),
					('VE104', 'TidurNyenyak', '04679351', 'Holland Street', 'TidurNyenyak@gmail.com'),
					('VE105', 'Public Lab', '04327783', 'Maguire Street', 'PublicLab@gmail.com'),
					('VE106', 'Santai Selalu', '09645673', 'Garfield Street', 'SantaiSelalu@ymail.com'),
					('VE107', 'Sigma Mania', '01759523', 'Semanggo Street', 'SigmaMania@gmail.com'),
					('VE108', 'Roly Poly', '0467823', 'Food Street', 'RolyPoly@yahoo.com'),
					('VE109', 'doNjouRno', '09764653', 'Richmond Street', 'doNjouRno@gmail.com'),
					('VE110', 'ZoZo', '02860482', 'Food Street', 'ZoZo@yahoo.com')

insert into Staff (STID, STName, STGender, STPhone, STSalary)
			values ('ST151', 'Andi Nugroho', 'Male', '0808534022', '400000'),
					('ST152', 'Budi Jackson', 'Male', '0806793465', '650000'),
					('ST153', 'Cindy McKayla', 'Female', '0803578643', '920000'),
					('ST154', 'Dendy Agus', 'Male', '0809349673', '1200000'),
					('ST155', 'Rendi Sudarsono', 'Male', '0804839578', '380000'),
					('ST156', 'Edi Priadi', 'Male', '0807593958', '300000'),
					('ST157', 'Ferdi Farrel', 'Male', '0809375349', '2000000'),
					('ST158', 'Efendi Jason', 'Male', '0801934756', '1740000'),
					('ST159', 'Fredy Magun', 'Male', '0805834945', '784000'),
					('ST160', 'Suryadi Joel', 'Male', '0803498694', '1000000')

insert into ItemType (IPID, IPName)
			values ('IP271', 'Accessory'),
					('IP272', 'Food'),
					('IP273', 'Gadgets'),
					('IP274', 'Furniture'),
					('IP275', 'Accessory'),
					('IP276', 'Drink'),
					('IP277', 'Food'),
					('IP278', 'Electronic'),
					('IP279', 'Drink'),
					('IP280', 'Food')


insert into Item (ITID, IPID, ITName, ITPrice, ITMinPurchase)
			values ('IT530', 'IP271', 'Comb', '15000', '4'),
					('IT531', 'IP272', 'BoritoZ', '20000', '8'),
					('IT532', 'IP273', 'yePhone V', '15000000', '5'),
					('IT533', 'IP274', 'Bed 150x40 cm', '2100000', '1'),
					('IT534', 'IP275', 'Gaming Chair', '950000', '10'),
					('IT535', 'IP276', 'Mailtime', '55000', '7'),
					('IT536', 'IP277', 'Bayz', '10000', '9'),
					('IT537', 'IP278', 'Television CQ LED', '1100000', '2'),
					('IT538', 'IP279', 'Boi', '35000', '13'),
					('IT539', 'IP280', 'Leetos', '17000', '3')


insert into PurchaseTransaction (PHID, VEID, STID, PHDate, ArrivalDate)
						values ('PH781', 'VE101', 'ST151', '2021-01-14', '2021-01-17'),
								('PH782', 'VE101', 'ST152', '2021-01-15', '2021-01-21'),
								('PH783', 'VE102', 'ST153', '2021-02-03', '2021-02-08'),
								('PH784', 'VE102', 'ST154', '2021-02-24', '2021-03-01'),
								('PH785', 'VE103', 'ST155', '2021-03-05', '2021-03-13'),
								('PH786', 'VE103', 'ST156', '2021-04-12', '2021-04-15'),
								('PH787', 'VE104', 'ST157', '2021-04-29', '2021-05-04'),
								('PH788', 'VE105', 'ST158', '2021-05-26', '2021-06-01'),
								('PH789', 'VE105', 'ST159', '2021-07-02', '2021-07-09'),
								('PH790', 'VE106', 'ST160', '2021-07-13', '2021-07-19'),
								('PH791', 'VE106', 'ST151', '2021-08-02', '2021-08-06'),
								('PH792', 'VE107', 'ST152', '2021-09-15', '2021-09-22'),
								('PH793', 'VE108', 'ST153', '2021-09-30', '2021-10-02'),
								('PH794', 'VE109', 'ST154', '2021-10-06', '2021-10-12'),
								('PH795', 'VE110', 'ST155', '2021-11-28', '2021-12-03')

insert into PurchaseTransactionDetail (PHID, ITID, Quantity)
								values('PH781', 'IT530', '3'),
										('PH781', 'IT534', '2'),
										('PH782', 'IT534', '4'),
										('PH782', 'IT530', '6'),
										('PH783', 'IT531', '9'),
										('PH783', 'IT536', '10'),
										('PH784', 'IT536', '5'),
										('PH784', 'IT539', '7'),
										('PH785', 'IT532', '6'),
										('PH785', 'IT532', '9'),
										('PH786', 'IT532', '2'),
										('PH786', 'IT532', '1'),
										('PH787', 'IT533', '6'),
										('PH787', 'IT533', '3'),
										('PH788', 'IT534', '5'),
										('PH788', 'IT534', '8'),
										('PH789', 'IT530', '3'),
										('PH789', 'IT530', '7'),
										('PH790', 'IT535', '6'),
										('PH790', 'IT535', '4'),
										('PH791', 'IT535', '3'),
										('PH792', 'IT539', '5'),
										('PH793', 'IT537', '4'),
										('PH794', 'IT538', '7'),
										('PH795', 'IT539', '9')

insert into SalesTransaction (SAID, STID, CUID, SADate)
							values('SA901', 'ST160', 'CU001', '2022-01-12'),
									('SA902', 'ST159', 'CU002', '2022-01-29'),
									('SA903', 'ST158', 'CU002', '2022-02-02'),
									('SA904', 'ST157', 'CU003', '2022-02-06'),
									('SA905', 'ST156', 'CU004', '2022-03-16'),
									('SA906', 'ST155', 'CU004', '2022-04-18'),
									('SA907', 'ST154', 'CU005', '2022-06-25'),
									('SA908', 'ST153', 'CU006', '2022-07-05'),
									('SA909', 'ST152', 'CU006', '2022-07-21'),
									('SA910', 'ST151', 'CU007', '2022-08-25'),
									('SA911', 'ST160', 'CU008', '2022-09-30'),
									('SA912', 'ST159', 'CU008', '2022-10-17'),
									('SA913', 'ST158', 'CU009', '2022-11-14'),
									('SA914', 'ST157', 'CU010', '2022-11-29'),
									('SA915', 'ST156', 'CU010', '2022-12-09')

insert into SalesTransactionDetail (SAID, ITID, Quantity)
							values('SA901', 'IT530', '4'),
									('SA901', 'IT530', '8'),
									('SA902', 'IT530', '5'),
									('SA902', 'IT531', '3'),
									('SA903', 'IT531', '5'),
									('SA903', 'IT531', '9'),
									('SA904', 'IT532', '2'),
									('SA904', 'IT532', '4'),
									('SA905', 'IT532', '6'),
									('SA905', 'IT532', '5'),
									('SA906', 'IT533', '1'),
									('SA906', 'IT533', '7'),
									('SA907', 'IT533', '10'),
									('SA907', 'IT534', '3'),
									('SA908', 'IT534', '5'),
									('SA908', 'IT534', '7'),
									('SA909', 'IT535', '8'),
									('SA909', 'IT535', '6'),
									('SA910', 'IT536', '2'),
									('SA910', 'IT536', '3'),
									('SA911', 'IT537', '1'),
									('SA912', 'IT537', '9'),
									('SA913', 'IT538', '12'),
									('SA914', 'IT538', '7'),
									('SA915', 'IT539', '11')