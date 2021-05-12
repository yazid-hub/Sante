Drop database if exists priserdv;
Create database priserdv;
Use priserdv;

 



 

Create table Personel 
( 
    NumPers int(3) auto_increment not null,
    Nom varchar (20) not null,
    Prenom varchar (20) not null ,
    Adress varchar (50),
    Ville varchar (20),
    Tel int (3) not null,
    DateEmbauche date not null,
    mdp varchar(20);
    primary key(NumPers)
);

Create table service (
    NumService int (3) auto_increment not null,
    Libelle varchar(20),
    primary key (NumService)
);


Create Table Medecin
(
     NumPers int (3) auto_increment not null,
    NumService int(3) not null,
    primary key(NumPers),
    foreign key (NumPers) references Personel (NumPers),
    foreign key (NumService) references Service (NumService) 
);


Create Table Secretaire
(
    NumPers int (3) auto_increment not null,
    primary key(NumPers),
    foreign key (NumPers) references Personel (NumPers)
);

 

Create table creneau
(
    id int (3) auto_increment not null ,
    jour date not null,
    heure time not null,
    heureFin time not null,
    primary key (id)
);

 

    


 

Create table medecin_creneau
(
    NumPers int (3) not null,    
    id int (3) not null,
    primary key(id,NumPers),
    foreign key (NumPers) references Medecin (NumPers),
    foreign key (id) references creneau (id)
);

 

Create table Patient
(
    NumSecu int (8)auto_increment not null ,
    Nom varchar (20) not null,
    Prenom varchar (20) not null ,
    Tel int (3) not null,
    Mail varchar (20) not null,
    Password varchar(20) not null,
    primary key (NumSecu)
 );

 

Create table RDV(
    IdRdv int (3) auto_increment not null,
    NumSecu int (8) not null,
    NumPers int(3) not null,
    id int (3) not null,
    Primary key (IdRdv),
    foreign key (NumSecu) references Patient (NumSecu),
    foreign key (NumPers) references Medecin (NumPers),
    Foreign key (id) references creneau (id)
);

 

Create table Consultation (
    NumConsultation int(3) auto_increment not null,
    Ordonnance blob not null,
    NumSecu int (8) not null,
    NumPers int (3) not null,
    Primary key (NumConsultation),
    foreign key (NumSecu) references Patient (NumSecu),
    foreign key (NumPers) references Medecin (NumPers)

 

);


insert into patient values (null,'nait allou','yazid','0758820875','a@yahoo.fr','123');

 insert into personel values(null,'paual','stephanie','deuil','paris','0795220875','2007/01/01');
 insert into personel values(null,'mosie','lila','paris','france','0795220875','2007/01/01');
 insert into personel values(null,'nait allou','yazid','enghien','lile','0795220875','2009/01/01');
 insert into personel values(null,'frnando','torres','aras','lile','0795220875','2005/05/01');
 insert into personel values(null,'pisac','voto','aras','lile','0795220875','2004/01/01');
 insert into personel values(null,'toto','tata','saint denis','paris','0795220875','2017/01/01');
 insert into personel values(null,'vavo','palisie','clichy','paris','0795220875','2014/01/01');
 insert into personel values(null,'paual','stephanie','porte de champ','paris','0795220875','2007/01/01');
 insert into personel values(null,'sala','solenne','pantin','paris','0795220875','2011/01/01');
 insert into personel values(null,'pitra','stephanie','lalo','lile','079528225','2002/01/01');
 insert into personel values(null,'mellessa','sissa','cligncourt','paris','0795520875','2007/01/01');
 insert into personel values(null,'nabila','bilalo','barbes','paris','0795820875','2007/01/01');
 insert into personel values(null,'pola','vitolo','concorde','paris','0524225525','2007/01/01');
 insert into personel values(null,'kika','stephanie','tuilerie','paris','0895220875','2007/01/01');
 insert into personel values(null,'sasa','siso','soloam','chatelet','0795220875','2007/01/01');
 insert into personel values(null,'polila','stephanie','paris','france','0795220875','2007/01/01');
 insert into personel values(null,'lolsa','salamona','aras','lile','079140875','2007/01/01');
 insert into personel values(null,'salima','bento','ermont','eaubonne','079990875','2007/01/01');
 
 
  insert into personel values(null,'pila','matto','ermont','eaubonne','079990875','2007/01/01');
 insert into personel values(null,'sossie','sasam','lalo','lile','079528225','2002/01/01');
 insert into personel values(null,'salolo','salsk','cligncourt','paris','0795520875','2007/01/01');
 insert into personel values(null,'vitalo','coloa','barbes','paris','0795820875','2007/01/01');
 insert into personel values(null,'sqa','sajb','concorde','paris','0524225525','2007/01/01');
 insert into personel values(null,'kan','nql','tuilerie','paris','0895220875','2007/01/01');
 insert into personel values(null,'sioasa','sisqho','soloam','chatelet','0795220875','2007/01/01');
 insert into personel values(null,'pholia','fofa','paris','france','0795220875','2007/01/01');

 
 
 
 
 
 
 insert into creneau values(null,'2020/12/24','12:00');
 insert into creneau values(null,'2020/12/24','10:00');
insert into creneau values(null,'2020/12/24','14:00');
 insert into creneau values(null,'2020/12/24','12:00');
  insert into creneau values(null,'2020/12/24','14:00');
 insert into creneau values(null,'2020/12/24','14:00');
 insert into creneau values(null,'2020/12/24','15:00');
  insert into creneau values(null,'2020/12/24','18:00');
 insert into creneau values(null,'2020/12/24','17:00');
 insert into creneau values(null,'2020/12/24','17:00');
  insert into creneau values(null,'2020/12/24','12:30');
 insert into creneau values(null,'2020/12/24','09:00');
 insert into creneau values(null,'2020/12/24','11:00');
  insert into creneau values(null,'2020/12/24','10:00');
 insert into creneau values(null,'2020/12/24','12:00');
insert into creneau values(null,'2020/12/24','12:00');
insert into creneau values(null,'2020/12/24','14:00');
 insert into creneau values(null,'2020/12/24','12:00');
insert into creneau values(null,'2020/12/24','14:00');
 insert into creneau values(null,'2020/12/24','15:00');
  insert into creneau values(null,'2020/12/24','18:00');
 insert into creneau values(null,'2020/12/24','17:00');
 insert into creneau values(null,'2020/12/24','17:00');
 insert into creneau values(null,'2020/12/24','12:00');
 

 
 
 

Insert into service values (1, "Dentaire");
Insert into service values (2, "Podologie");
 Insert into service values (3, "M�decine g�n�ral");
 Insert into service values (4, "P�diatrie");
 Insert into service values (5, "Gyn�cologie");
Insert into service values (6, "Orthodontie");
Insert into service values (7, "Dermathologie");


 
  insert into medecin values(4,7);
 insert into medecin values(5,7);
 insert into medecin values(6,5);
 insert into medecin values(7,5);
 insert into medecin values(8,5);
 insert into medecin values(9,1);
 insert into medecin values(10,1);
 insert into medecin values(11,1);
 insert into medecin values(12,1);
 insert into medecin values(13,2);
 insert into medecin values(14,3);
 insert into medecin values(15,3);
 insert into medecin values(16,3);
 insert into medecin values(17,4);
insert into medecin values(18,4);
 insert into medecin values(19,5);
 insert into medecin values(20,6);
 insert into medecin values(22,2);
 insert into medecin values(23,2);
 insert into medecin values(24,2);
 insert into medecin values(25,6);
 insert into medecin values(24,6);
 insert into medecin values(26,6);
 
 
 
 
insert into medecin_creneau values(1,1);
insert into medecin_creneau values(2,2);
insert into medecin_creneau values(3,3);
insert into medecin_creneau values(7,4);
insert into medecin_creneau values(1,5);
 insert into medecin_creneau values(2,6);
insert into medecin_creneau values(3,7);
insert into medecin_creneau values(2,8);
insert into medecin_creneau values(3,9);
insert into medecin_creneau values(4,10);
insert into medecin_creneau values(7,11);
insert into medecin_creneau values(8,12);
insert into medecin_creneau values(5,13);
insert into medecin_creneau values(8,14);
insert into medecin_creneau values(10,15);
insert into medecin_creneau values(6,16);
insert into medecin_creneau values(5,17);
insert into medecin_creneau values(5,18);
insert into medecin_creneau values(2,19);
insert into medecin_creneau values(3,20);
insert into medecin_creneau values(7,21);
insert into medecin_creneau values(10,22);
insert into medecin_creneau values(26,23);
insert into medecin_creneau values(14,24);
insert into medecin_creneau values(26,45);
insert into medecin_creneau values(26,25);
insert into medecin_creneau values(12,26);
insert into medecin_creneau values(4,27);
insert into medecin_creneau values(14,28);
insert into medecin_creneau values(14,29);
insert into medecin_creneau values(15,30);
insert into medecin_creneau values(16,31);
insert into medecin_creneau values(4,33);
insert into medecin_creneau values(14,47);

CREATE TRIGGER memetel
BEFORE INSERT ON Patient
FOR EACH ROW

BEGIN

DECLARE X INT;
SELECT COUNT(*) INTO X FROM Patient WHERE tel=NEW. Tel;

IF X>0
THEN
SIGNAL SQLSTATE'45000'
Set Message_text="Insertion impossible";


CREATE TRIGGER mememail
BEFORE INSERT ON Patient
FOR EACH ROW

BEGIN

DECLARE X INT;
SELECT COUNT(*) INTO X FROM Patient WHERE mail=NEW. mail;

if(X>0)
THEN
SIGNAL SQLSTATE'45000'
Set Message_text="Insertion impossible";

end if;
end //




END IF;
END //



