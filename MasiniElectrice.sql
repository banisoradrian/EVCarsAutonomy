CREATE DATABASE INFO_masiniElectrice;
CREATE TABLE masiniElectrice
(
	id_masina INT IDENTITY(1,1) PRIMARY KEY,
	marcaModel VARCHAR(100),
	capacitateBaterie INT, --kwH
	autonomie INT, -- km
	putere INT, --CP
	imagineMasina NVARCHAR(MAX)
);

SELECT *
FROM masiniElectrice
ORDER BY marcaModel;

INSERT INTO masiniElectrice(marcaModel , 
						    capacitateBaterie ,
							autonomie ,
							putere , 
							imagineMasina)
VALUES('Dacia Spring Comfort Plus' , 27, 230 , 44 ,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\DaciaSpring.jpg'),
	  ('smart EQ fortwo', 18 , 133 , 82 , 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\smartEQfortwo.jpeg' ) ,
	  ('smart EQ fortwo cabrio' ,18 , 129 ,82, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\smartEQfortwocabrio.jpeg') ,
	  ('Fiat 500e HB 95 CP' , 24 , 18 , 95, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Fiat500eHB95CP.jpeg') ,
	  ('Opel Corsa-e' , 50 , 315 , 136 , 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\OpelCorsa-e.jpeg') ,
	  ('Renault Zoe Z.E. 40 - R110' , 41 , 300 , 109, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Renault Zoe Z.E.jpeg') ,
	  ('Peugeot e-208' , 50 , 340 , 136, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Peugeote-208.jpeg' ) ,
	  ('Hyundai Kona EV 136 CP' , 39 , 305 , 136, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\HyundaiKonaEV136CP.jpeg') ,
	  ('Mazda MX-30', 36 , 200 , 145, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\MazdaMX-30.jpeg') ,
	  ('Mini Cooper SE' , 33, 234 , 184, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\MiniCooperSE.jpeg') ,
	  ('Hyundai Ioniq EV', 38 , 311 , 136, 'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\HyundaiIoniqEV.jpeg') ,
	  ('Nissan Leaf 40 kW 150 CP' , 40 , 270 , 150,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\NissanLeaf40 kW150CP.jpg') , --
	  ('Hyundai Kona EV 204CP', 64 , 484 , 204,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\HyundaiKonaEV204CP.jpeg') ,
	  ('Kia e-Soul 100 kW' , 39 , 276 , 136,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Kiae-Soul100kW.jpg') ,
	  ('Citroen e-C4' ,50 , 352 , 136,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Citroene-C4.jpg') ,
	  ('Honda e Advance' , 36 , 222 , 154,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\HondaeAdvance.jpg') ,
	  ('Kia e-Niro 100 kW' , 39 , 289 , 136,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Kiae-Niro100kW.jpg') ,
	  ('BMW i3' , 42 , 308 , 170,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\BMWi3.jpeg') ,
	  ('Skoda Enyaq iV 60' , 62 , 390 , 180,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\SkodaEnyaqiV60.jpg') ,
	  ('VW ID.3 204 CP 82 kWh', 82 , 529 , 204,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\VWID.3.jpg') ,
	  ('Kia e-Soul 150 kW' , 64 , 452 , 204,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Kiae-Soul150 kW.jpg') ,
	  ('Nissan Leaf 62 kW 218 CP' , 62 , 385 ,214,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\NissanLeaf62kW218CP.jpg') ,
	  ('Kia e-Niro 150 kW' , 63 , 455 , 204,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Kiae-Niro150kW.jpg') ,
	  ('Kia EV6 RWD 58 kWh' , 58 , 394 , 170,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\KiaEV6RWD58kWh.jpeg') ,
	  ('Mercedes-Benz EQA 250' , 70 , 424 , 190,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Mercedes-BenzEQA250.jpeg') ,
	  ('Ford Mustang Mach-E RWD 76 kWh' , 76 , 440 , 269,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\FordMustangMach-ERWD76kWh.jpg') ,
	  ('BMW i4 eDrive40 Gran Coupe' , 84 , 590 , 340,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\BMWi4eDrive40GranCoupe.jpeg') ,
	  ('VW ID.4 GTX 299 CP 82 kWh' , 82 , 480 , 299,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\VWID.4GTX.jpg') ,
	  ('Mercedes-Benz EQA 300 4Matic' , 70 , 430 , 228,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Mercedes-BenzEQA3004Matic.jpeg') ,
	  ('Ford Mustang Mach-E RWD 99 kWh' , 99 , 610 ,294,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\FordMustangMach-ERWD99kWh.jpeg') ,
	  ('Audi e-tron 50 quattro', 71 , 339 , 313,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Audie-tron50quattro.jpeg') ,
	  ('Jaguar I-PACE EV400 AWD' , 90 , 470 , 400,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\JaguarI-PACEEV400AWD.jpg') ,
	  ('BMW iX xDrive40', 77 , 424 , 326,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\BMWiXxDrive40.jpeg') ,
	  ('Audi e-tron 55 quattro' , 95 , 437 , 408,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Audie-tron55quattro.jpg') ,
	  ('Porsche Taycan' , 79 , 431 , 408,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\PorscheTaycan.jpeg') ,
	  ('Audi e-tron S' , 95 , 361 ,503,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\Audie-tronS.jpg') ,
	  ('Porsche Taycan 4 Cross Turismo' , 94 ,456 ,476,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\PorscheTaycan4CrossTurismo.jpg') ,
	  ('Audi RS e-tron GT' , 93 , 472,646,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\AudiRSe-tronGT.jpg') ,
	  ('Porsche Taycan Turbo S Cross Turismo', 94 , 419 , 761,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\PorscheTaycanTurboSCrossTurismo.jpg') ,
	  ('Tesla Model 3 Standard ', 58 , 344 , 211,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModel3.jpeg') ,
	  ('Tesla Model 3 Long Range ', 58 , 421 , 346,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModel3.jpeg') ,
	  ('Tesla Model S Long Range ', 95 , 600 , 640,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelS.jpeg') ,
	  ('Tesla Model S Plaid ', 95 , 635 , 1020,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelS.jpeg') ,
	  ('Tesla Model X Plaid ', 95 , 548 , 1020,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelX.jpg') ,
	  ('Tesla Model X Long Range ', 95 , 580 , 670,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelX.jpg') ,
	  ('Tesla Model Y Standard ', 54 , 393 ,201,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelY.jpeg') ,
	  ('Tesla Model Y Long Range ', 54 , 525 , 346,'C:\Users\Adria\OneDrive\Documente\SQL Server Management Studio\imagini\TeslaModelY.jpeg');

 SELECT COUNT(*) AS NumarTotalDeMasini
 FROM masiniElectrice ;

SELECT TOP 1
    marcaModel,
    autonomie AS autonomieMaxima
FROM masiniElectrice
ORDER BY autonomie DESC;

SELECT TOP 1
    marcaModel,
    capacitateBaterie AS capacitateMaxima
FROM masiniElectrice
ORDER BY capacitateBaterie DESC;

SELECT TOP 1
    marcaModel,
    putere AS putereMaxima
FROM masiniElectrice
ORDER BY putere DESC;




