grant PP_SELECT to PP23;

select  MAX_BYTES/1024/1024 KIOSZTOTT_MB, BYTES/1024/1024 FOGLALT_MB, TABLESPACE_NAME  from user_ts_quotas;--200 MB-ból csak 9,3125 MB foglalt

create table PP23.A_SEMA_VALTOZOK as select * from PP22.A_SEMA_VALTOZOK;
grant select on PP23.A_SEMA_VALTOZOK to PP_SELECT;
select * from PP23.A_SEMA_VALTOZOK;--238


create table PP23.PP23_2023M1101_V00 as select * from PP22.PP22_2022M1101_V00;
grant select on PP23.PP23_2023M1101_V00 to PP_SELECT;
grant insert, delete on PP23.PP23_2023M1101_V00 to PP_UPDATE;
truncate table PP23.PP23_2023M1101_V00;

create table PP23.PP23_2023M1102_V00 as select * from PP22.PP22_2022M1102_V00;
grant select on PP23.PP23_2023M1102_V00 to PP_SELECT;
grant insert, delete on PP23.PP23_2023M1102_V00 to PP_UPDATE;
truncate table PP23.PP23_2023M1102_V00;

create table PP23.PP23_2023M1103_V00 as select * from PP22.PP22_2022M1103_V00;
grant select on PP23.PP23_2023M1103_V00 to PP_SELECT;
grant insert, delete on PP23.PP23_2023M1103_V00 to PP_UPDATE;
truncate table PP23.PP23_2023M1103_V00;

create table PP23.TEMP_PSZAFUPDATE as select * from PP22.TEMP_PSZAFUPDATE;
grant select on PP23.TEMP_PSZAFUPDATE to PP_SELECT;
grant insert, delete on PP23.TEMP_PSZAFUPDATE to PP_UPDATE;
truncate table PP23.TEMP_PSZAFUPDATE;

create table PP23.CODES_LIST as select * from PP22.CODES_LIST;
grant select on PP23.CODES_LIST to PP_SELECT;
select * from PP23.CODES_LIST;--75


select count(*) from PP23.PP23_2023M1101_V00;--37772, 36778
select * from PP23.PP23_2023M1101_V00 order by M003, SOR_KOD;--37772 - 994 Eximbank = 36778
select sum(ERTEK) from PP23.PP23_2023M1101_V00;--586.070.751.720
select * from PP23.PP23_2023M1101_V00 where M003 = '10949638';--994 sor törölve lesz
delete from PP23.PP23_2023M1101_V00 where M003 = '10949638';
commit;

select count(*) from PP23.PP23_2023M1102_V00;--3976
select * from PP23.PP23_2023M1102_V00 order by M003, SOR_KOD;--3976
select sum(ERTEK) from PP23.PP23_2023M1102_V00;--230.913.312.869
select * from PP23.PP23_2023M1102_V00 where M003 = '10949638';--0

select count(*) from PP23.PP23_2023M1103_V00;--2698, 2627
select * from PP23.PP23_2023M1103_V00 order by M003, SOR_KOD;--2698 - 71 Eximnak = 2627
select sum(ERTEK) from PP23.PP23_2023M1103_V00;--72.754.829.271
select * from PP23.PP23_2023M1103_V00 where M003 = '10949638';--71 sor törölve lesz
delete from PP23.PP23_2023M1103_V00 where M003 = '10949638';
commit;


select count(*) from PP23.TEMP_PSZAFUPDATE;--1.494.769, 1.494.321
select * from PP23.TEMP_PSZAFUPDATE order by M003, SOR_KOD, OSZLOP_KOD;--998653 - 169 Eximbank = 998363
--select * from PP23.TEMP_PSZAFUPDATE where SOR_KOD like '7C%' order by M003, SOR_KOD, OSZLOP_KOD;
select * from PP23.TEMP_PSZAFUPDATE where M003 = '10949638';--448 sor törölve lesz
delete from PP23.TEMP_PSZAFUPDATE where M003 = '10949638';
commit;


create table PP23.PP23_A_FORRASKAT_HIT as select * from PP22.PP22_A_FORRASKAT_HIT;
grant select on PP23.PP23_A_FORRASKAT_HIT to PP_SELECT;
select * from PP23.PP23_A_FORRASKAT_HIT;--1065

create table PP23.ATKOD as select * from PP22.ATKOD;
grant select on PP23.ATKOD to PP_SELECT;
select * from PP23.ATKOD order by KOD_ID;--1442



create table PP23.PP23_W_PENZT_MNYP_T as select * from PP22.PP22_W_PENZT_MNYP_T;
truncate table PP23.PP23_W_PENZT_MNYP_T;
grant select on PP23.PP23_W_PENZT_MNYP_T to PP_SELECT;


create table PP23.PP23_W_PENZT_EGESZ_T as select * from PP22.PP22_W_PENZT_EGESZ_T;
truncate table PP23.PP23_W_PENZT_EGESZ_T;
grant select on PP23.PP23_W_PENZT_EGESZ_T to PP_SELECT;

create table PP23.PP23_W_PENZT_FOGL_T as select * from PP22.PP22_W_PENZT_FOGL_T;
truncate table PP23.PP23_W_PENZT_FOGL_T;
grant select on PP23.PP23_W_PENZT_FOGL_T to PP_SELECT;

create table PP23.PP23_W_PENZT_ONK_T as select * from PP22.PP22_W_PENZT_ONK_T;
truncate table PP23.PP23_W_PENZT_ONK_T;
grant select on PP23.PP23_W_PENZT_ONK_T to PP_SELECT;

create table PP23.PP23_W_PENZ_VALL_T as select * from PP22.PP22_W_PENZ_VALL_T;
truncate table PP23.PP23_W_PENZ_VALL_T;
grant select on PP23.PP23_W_PENZ_VALL_T to PP_SELECT;

create table PP23.PP23_W_BIZT_T as select * from PP22.PP22_W_BIZT_T;
truncate table PP23.PP23_W_BIZT_T;
grant select on PP23.PP23_W_BIZT_T to PP_SELECT;

create table PP23.PP23_W_BIZT_41A_T as select * from PP22.PP22_W_BIZT_41A_T;
truncate table PP23.PP23_W_BIZT_41A_T;
grant select on PP23.PP23_W_BIZT_41A_T to PP_SELECT;

create table PP23.PP23_W_BEF_ALAP_T as select * from PP22.PP22_W_BEF_ALAP_T;
truncate table PP23.PP23_W_BEF_ALAP_T;
grant select on PP23.PP23_W_BEF_ALAP_T to PP_SELECT;

create table PP23.TEMP_SORKOD as select * from PP22.TEMP_SORKOD;
truncate table PP23.TEMP_SORKOD;
grant select on PP23.TEMP_SORKOD to PP_SELECT;

create table PP23.PP23_W_HIT_T as select * from PP22.PP22_W_HIT_T;
truncate table PP23.PP23_W_HIT_T;
grant select on PP23.PP23_W_HIT_T to PP_SELECT;

create table PP23.PP23_W_PENZ_VALL_IFRS as select * from PP22.PP22_W_PENZ_VALL_IFRS;
truncate table PP23.PP23_W_PENZ_VALL_IFRS;
grant select on PP23.PP23_W_PENZ_VALL_IFRS to PP_SELECT;


select * from PP23.PP23_W_HIT_T order by M003;--37
select * from PP23.PP23_W_PENZT_MNYP_T order by M003;--4
select * from PP23.PP23_W_PENZT_EGESZ_T order by M003;--15
select * from PP23.PP23_W_PENZT_FOGL_T order by M003;--1
select * from PP23.PP23_W_PENZT_ONK_T order by M003;--26
select * from PP23.PP23_W_PENZ_VALL_T order by M003;--224
select * from PP23.PP23_W_BIZT_T order by M003;--23
select * from PP23.PP23_W_BIZT_41A_T order by M003;--19
select * from PP23.PP23_W_BEF_ALAP_T order by M003;--44
select * from PP23.PP23_W_PENZ_VALL_IFRS order by M003;--0


create table PP23.A_M003_LIST as select * from PP22.A_M003_LIST;
grant select on PP23.A_M003_LIST to PP_SELECT;
select * from PP23.A_M003_LIST;


select * from PP23.TEMP_SORKOD;--üresnek kell lennie

--MNB_MNYP adatok
select sor_kod from PP23.CODES_LIST where type = 'mnyp';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''mnyp''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_PENZT_MNYP_T;
insert into PP23.PP23_W_PENZT_MNYP_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''mnyp''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'select oszlop_kod from PP23.CODES_LIST where type = ''mnyp''';
dbms_output.put_line(sql_statement);
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	
for i in v_sorkod.first..v_sorkod.last loop
    UPDATE_EVES_TABLES('PP23_W_PENZT_MNYP_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_PENZT_MNYP_T;--4


--MNB_EGESZ adatok
select sor_kod from PP23.CODES_LIST where type = 'egesz';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''egesz''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_PENZT_EGESZ_T;
insert into PP23.PP23_W_PENZT_EGESZ_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''egesz''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''egesz'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_PENZT_EGESZ_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_PENZT_EGESZ_T;--15


--MNB_FOGL adatok
select sor_kod from PP23.CODES_LIST where type = 'fogl';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''fogl''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_PENZT_FOGL_T;
insert into PP23.PP23_W_PENZT_FOGL_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''fogl''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''fogl'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_PENZT_FOGL_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_PENZT_FOGL_T;--1



--MNB_ONK adatok
select sor_kod from PP23.CODES_LIST where type = 'onk';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''onk''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_PENZT_ONK_T;
insert into PP23.PP23_W_PENZT_ONK_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''onk''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''onk'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_PENZT_ONK_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_PENZT_ONK_T;--26

commit;


--MNB_PENZ adatok
select sor_kod from PP23.CODES_LIST where type = 'pvall';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''pvall''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_PENZ_VALL_T;
insert into PP23.PP23_W_PENZ_VALL_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''pvall''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''pvall'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_PENZ_VALL_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_PENZ_VALL_T;--224


--MNB_BIZT adatok
select distinct sor_kod from PP23.CODES_LIST where type = 'bizt';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''bizt''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_BIZT_T;
insert into PP23.PP23_W_BIZT_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''bizt''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''bizt'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_BIZT_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/


select * from PP23.PP23_W_BIZT_T;--23


/*
select * from PP23.PP23_W_BIZT_T where M003 in ('10207349', '10308024', '10337587', '10389395', '10456017', '10491984', '10765920', '10828704');
update PP23.PP23_W_BIZT_T set kompozit = 'K', int_egy = 'I' 
where M003 in ('10207349', '10308024', '10337587', '10389395', '10456017', '10491984', '10765920', '10828704');

select * from PP23.PP23_W_BIZT_T where M003 in ('10949621',  '12185960', '12761018', '12774395', '12833632', '14011838', '14489765', '14440306') order by M003;
update PP23.PP23_W_BIZT_T set kompozit = 'NE', int_egy = 'I' 
where M003 in ('10949621', '12185960', '12761018', '12774395', '12833632', '14011838', '14489765', '14440306');
--'10949621',  '14440306' nincsenek, ut¡bbi mßr van

select * from PP23.PP23_W_BIZT_T where M003 in ('10492033', '11367109', '12774412', '12833625', '14153730') order by M003;--'12582161',
update PP23.PP23_W_BIZT_T set kompozit = 'E', int_egy = 'I' where M003 in ('10492033', '11367109', '12774412', '12833625', '14153730');--'12582161', '14153730'
--hißnyoznak: '12582161', '14153730', ut¡bbi mßr van

select * from PP23.PP23_W_BIZT_T where M003 in ('18083017', '18088122', '18300941', '18373916', '18378234', '18425501', '18426997', '18485110', '18830228', '18857522', '18981719', '19670656') order by M003;
update PP23.PP23_W_BIZT_T set kompozit = 'NE', int_egy = 'E' 
where M003 in ('18083017', '18088122', '18300941', '18373916', '18378234', '18425501', '18426997', '18485110', '18830228', '18857522', '18981719', '19670656');

commit;
*/


--MNB_BIZT_41A adatok
select sor_kod from PP23.CODES_LIST where type = 'bizt41a';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''bizt41a''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_BIZT_41A_T;
insert into PP23.PP23_W_BIZT_41A_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''bizt41a''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''bizt41a'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_BIZT_41A_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_BIZT_41A_T;--19


--MNB_BEF adatok
select sor_kod from PP23.CODES_LIST where type = 'befalap';
truncate table PP23.TEMP_SORKOD;

set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''befalap''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

for i in v_sorkod.first..v_sorkod.last loop

    EXECUTE IMMEDIATE'
    insert into PP23.TEMP_SORKOD(M003)
    select distinct PSZAF.M003 
    from PP23.TEMP_PSZAFUPDATE PSZAF
    where PSZAF.sor_kod like '''|| v_sorkod(i) ||'''
    '
    ;

end loop;

end;
/

truncate table PP23.PP23_W_BEF_ALAP_T;
insert into PP23.PP23_W_BEF_ALAP_T(MEV, M003)
select distinct '2023', M003 
from PP23.TEMP_SORKOD;


set serveroutput on;
declare
sql_statement VARCHAR2(1000);

TYPE t_sorkod IS TABLE OF VARCHAR2(10);
v_sorkod t_sorkod;

TYPE t_oszlopkod IS TABLE OF NUMBER;
v_oszlopkod t_oszlopkod;

begin

sql_statement := 'select sor_kod from PP23.CODES_LIST where type = ''befalap''';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_sorkod;

sql_statement := 'SELECT oszlop_kod from PP23.CODES_LIST where type = ''befalap'' ';
EXECUTE IMMEDIATE sql_statement BULK COLLECT INTO v_oszlopkod;	

for i in v_sorkod.first..v_sorkod.last loop

    UPDATE_EVES_TABLES('PP23_W_BEF_ALAP_T', ''|| v_sorkod(i) ||'' , ''|| v_oszlopkod(i) ||''); 
    
end loop;

end;
/

select * from PP23.PP23_W_BEF_ALAP_T;--44


--HITELITÉZET adatok
truncate table PP23.PP23_W_HIT_T;
begin
    HITELINTEZET_BETOLT_EVES.INDIT('2023');
end;
/

select * from PP23.PP23_W_HIT_T;--37

select M003, T003, T004, T005, T006 from PP23.PP23_W_HIT_T;--4 új mutató 2022 elõzetesre