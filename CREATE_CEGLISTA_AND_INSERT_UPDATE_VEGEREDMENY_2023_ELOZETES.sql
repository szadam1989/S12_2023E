--A04_EVES_FUTTATAS package futtatása elõtt létre kell hozni az alábbi táblát
--create table PP23.PP23_W_W_ELOZETES_V01_T as select * from PP22.PP22_W_W_ELOZETES_V01_T;
--truncate table PP23.PP23_W_W_ELOZETES_V01_T;
grant select on PP23.PP23_W_W_ELOZETES_V01_T TO PP_SELECT;
grant insert, delete, update on PP23.PP23_W_W_ELOZETES_V01_T TO PP_UPDATE;

select * from PP23.PP23_W_W_ELOZETES_V01_T order by to_number(SEMA_TIPUS), M003;--6606 + 42 pótlás SCV céglistáról + 1835 pótlás sima céglistáról = 8483

--SCV céglistáról pótlás
select MEV, M003, M0581, SEMA_TIPUS 
from PP23.PP23_W_W_ELOZETES_V01_T 
where M003 in (select M003 from PP23.CEGLISTA_SCV_ELOZETES) 
order by to_number(SEMA_TIPUS), M003;
--197 + 42 = 239

select * from PP23.CEGLISTA_SCV_ELOZETES;--239

/*insert into PP23.PP23_W_W_ELOZETES_V01_T(MEV, M003, M0581, SEMA_TIPUS) 
select '2023', M003, M0581, MP551 
from PP23.CEGLISTA_SCV_ELOZETES 
where M003 not in (select M003 from PP23.PP23_W_W_ELOZETES_V01_T);
--42

update PP23.PP23_W_W_ELOZETES_V01_T set SEMA_TIPUS = '50' where M003 = '27283136';--51-es sémára került a feldolgozás során
commit;*/


--Sima céglistáról pótlás
select MEV, M003, M0581, SEMA_TIPUS 
from PP23.PP23_W_W_ELOZETES_V01_T 
where M003 in (select M003 from PP23.CEGLISTA_ELOZETES) 
order by to_number(SEMA_TIPUS), M003;
--6409 + 1835 = 8244

select * from PP23.CEGLISTA_ELOZETES;--8220

/*insert into PP23.PP23_W_W_ELOZETES_V01_T(MEV, M003, M0581, SEMA_TIPUS) 
select '2023', M003, M0581, nvl(MP551, '99') 
from PP23.CEGLISTA_ELOZETES 
where M003 not in (select M003 from PP23.PP23_W_W_ELOZETES_V01_T);
--1835

commit;*/

--itt 0 rekordnak kell lennie az eredménynek, akkor jó
select * from PP23.PP23_W_W_ELOZETES_V01_T where M003 not in (select M003 from PP23.CEGLISTA_ELOZETES) and M003 not in (select M003 from PP23.CEGLISTA_SCV_ELOZETES);--0



--céglistákban megadott TEÁOR kódok ellenõrzése és esetleges frissítése a végeredménytáblában
select VEGEREDMENY.M003, VEGEREDMENY.SEMA_TIPUS, CEGLISTA.MP551, case when VEGEREDMENY.SEMA_TIPUS = CEGLISTA.MP551 then 'IGAZ' else 'HAMIS' end
from PP23.PP23_W_W_ELOZETES_V01_T VEGEREDMENY, PP23.CEGLISTA_ELOZETES CEGLISTA 
where VEGEREDMENY.M003 = CEGLISTA.M003 and CEGLISTA.MP551 is not null
order by VEGEREDMENY.M003;
--85-bõl 8 rekord hamis volt, mert különbözött a séma típus 25 helyett 11 volt:

/*update PP23.PP23_W_W_ELOZETES_V01_T set SEMA_TIPUS = '25' 
where M003 in ('18061440', '18240476', '18249310', '19248879', '19316516', '19676236', '19719122', '25749850') 
and SEMA_TIPUS = '11';

commit;*/


select VEGEREDMENY.M003, VEGEREDMENY.SEMA_TIPUS, CEGLISTA.MP551, case when VEGEREDMENY.SEMA_TIPUS = CEGLISTA.MP551 then 'IGAZ' else 'HAMIS' end
from PP23.PP23_W_W_ELOZETES_V01_T VEGEREDMENY, PP23.CEGLISTA_SCV_ELOZETES CEGLISTA 
where VEGEREDMENY.M003 = CEGLISTA.M003 and CEGLISTA.MP551 is not null
order by VEGEREDMENY.M003;
--239

--Az SCV céglistánál mindenhol alapból IGAZ eredmény jött ki




--dupla cégek kiszûrése
select KIVA.M003, KIVA.PRCA189, TASA_29.PRCA103
from PP23.PP23_KIVA_V01_T KIVA, PP23.PP23_W_TASA_2329_V01_T TASA_29 
where KIVA.M003 = TASA_29.M003 
order by KIVA.M003;
--7 közös cégbõl már csak 0 maradt

select KIVA.M003, KIVA.PRCA189, TASA_29.PRCA103
from PP23.PP23_KIVA_V01_T KIVA, PP23.PP23_W_TASA_2329_V01_T TASA_29 
where KIVA.M003 = TASA_29.M003 and nvl(KIVA.PRCA189, 0) > nvl(TASA_29.PRCA103, 0)
order by KIVA.M003;
--4 cég kiesik TÁSA 29-bõl

/*delete from PP23.PP23_W_TASA_2329_V01_T where M003 in ('10517057', '11850782', '23786534', '26683227');
commit;*/

select KIVA.M003, KIVA.PRCA189, TASA_29.PRCA103
from PP23.PP23_KIVA_V01_T KIVA, PP23.PP23_W_TASA_2329_V01_T TASA_29 
where KIVA.M003 = TASA_29.M003 and nvl(KIVA.PRCA189, 0) < nvl(TASA_29.PRCA103, 0)
order by KIVA.M003;
--2 cég kiesik KIVA-ból

/*delete from PP23.PP23_KIVA_V01_T where M003 in ('12888625', '20175856');
commit;*/

select KIVA.M003, KIVA.PRCA189, TASA_29.PRCA103
from PP23.PP23_KIVA_V01_T KIVA, PP23.PP23_W_TASA_2329_V01_T TASA_29 
where KIVA.M003 = TASA_29.M003 and nvl(KIVA.PRCA189, 0) = nvl(TASA_29.PRCA103, 0)
order by KIVA.M003;
--1 cég kiesik TÁSA 29-bõl

/*delete from PP23.PP23_W_TASA_2329_V01_T where M003 in ('29215485');
commit;*/


select KIVA.M003, KIVA.PRCA189, TASA_71.PRCA103
from PP23.PP23_KIVA_V01_T KIVA, PP23.PP23_W_TASA_2371_V01_T TASA_71 
where KIVA.M003 = TASA_71.M003 
order by KIVA.M003;
--0, vagyis nem esik ki cég

select * from PP23.PP23_W_W_ELOZETES_V01_T
where M003 in (select M003 from PP23.PP23_W_W_ELOZETES_V01_T
where SEMA_TIPUS not in ('12', '14', '5', '6', '7', '8')
group by M003
having count(M003) > 1)
order by M003, to_number(SEMA_TIPUS);
--14, vagyis 7 duplikált cég volt, most már csak 0



--2023. adatévi elõzetes EAR-os céglista létrehozása
--truncate table PP23.PP23_CEGEK_23E;
CREATE TABLE PP23.PP23_CEGEK_23E 
   (	M003 VARCHAR2(8 CHAR) NOT NULL, 
        M0581 VARCHAR2(8 CHAR) NOT NULL, 
        P551 VARCHAR2(8 CHAR) NOT NULL
   );

grant select on PP23.PP23_CEGEK_23E to PP_SELECT;
grant select on PP23.PP23_CEGEK_23E to YL_SELECT;--csak ezt a táblát kell besorolni az YL_SELECT szerepkörbe, mert a többi táblát valahogyan alapból látja az EAR

insert into PP23.PP23_CEGEK_23E (M003, M0581, P551) select M003, M0581, SEMA_TIPUS from PP23.PP23_W_W_ELOZETES_V01_T;
commit;

--alapértelmezett pótlások elvégzése
select * from PP23.PP23_CEGEK_23E order by to_number(P551), M003;--8483 - 15 + 3 = 8471
select * from PP23.PP23_CEGEK_23E where M003 in ('99999997', '99999998', '99999999') order by M003;

insert into PP23.PP23_CEGEK_23E(M003, M0581, P551) values('99999997', '6420', '51');
insert into PP23.PP23_CEGEK_23E(M003, M0581, P551) values('99999998', '6430', '23');
insert into PP23.PP23_CEGEK_23E(M003, M0581, P551) values('99999999', '6430', '24');
commit;


--7-es és 8-as sémák a 20-as sémák lesznek
select * from PP23.PP23_CEGEK_23E where P551 = '7';--0, 15
delete from PP23.PP23_CEGEK_23E where P551 = '7';
commit;

select * from PP23.PP23_CEGEK_23E where P551 = '8';--15, 0
select * from PP23.PP23_CEGEK_23E where P551 = '20';--0, 15
update PP23.PP23_CEGEK_23E set P551 = '20' where P551 = '8';
commit;


--Ennek ilyenkorra már mindig 0 rekordot kell eredményeznie, mert a Végeredmény táblában kell a fentiek szerint a duplikált cégek törölni
select '2023' as "év", a.* from PP23.PP23_CEGEK_23E a
where a.M003 in (select M003 from PP23.PP23_CEGEK_23E
where P551 not in ('12', '14', '5', '6')
group by M003
having count(M003) > 1)
order by M003, to_number(P551);
--14, vagyis 7 duplikált cég volt, most már csak 0


select * from PP23.PP23_CEGEK_23E where M003 in ('14440306', '14153730', '14489765') order by M003;--3