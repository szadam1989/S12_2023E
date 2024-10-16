--PP23.PP23_W_TASA_2343_V01_T tábla 2020. adatévtõl kezdõdõen már nincs
/*CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.KOZADAT_EVAREGI_V01_T (M003, M0581, PRPDA024) AS 
  SELECT
        M003,
        M0581,
        PRDA024 as PRPDA024
    FROM
        PP23.PP23_W_TASA_2343_V01_T
    WHERE
            M0581 BETWEEN 6419 AND 6630
        AND
            M003 NOT IN (
                '21951358', '14458365', '21392360', '14993495', '10247620', '11494533', '11563446', '11696333', '11721284',
                '11964153', '12324842', '12357440', '12508691', '12564622', '12712708', '12736542', '12813689', '13024875', '13043140',
                '13092931', '13211956', '13288080', '13291532', '13432966', '13505206', '13696418', '13762012', '13804031', '13950857', 
                '14035074', '14041691', '14129492', '14216552', '14275579', '14487660', '14722387', '14737707', '14750980', '14912083', 
                '14922783', '14952034', '14967461', '14976816', '14978344', '14989681', '20156574', '20569880', '20967532', '20968337',
                '21162699', '21310919', '21522426', '21532906', '21779398', '21912810', '22121372', '22164955', '22229645', '22320722', 
                '22480242', '22568225', '22583046', '22721226', '22741853', '22750057', '22786737', '22794136', '22938154', '22973430', 
                '22988434', '23011520', '23011915', '23081561', '23122936', '23150261', '23292637', '23333356', '23358074', '23367151', 
                '23383959', '23390821', '23402702', '23425679', '23465400', '23466061', '23729227', '23743803', '23752083', '23764118', 
                '23785519', '23793592', '23796265', '23824724', '23830619', '23841114', '23844777', '23847031', '23853586', '23857982', 
                '23877636', '23879944', '23887044', '23894404', '23905573', '23921065', '23921993', '23930245', '23978696', '23989706', 
                '24060682', '24105439', '24140887', '24149288', '24194068', '24203946', '24227340', '24258719', '24265650', '24274342', 
                '24289054', '24311225', '24311397', '24325895', '24390635', '24394385', '24679170', '24705840', '24722694', '24798095', 
                '24865614', '24871626', '24872658', '24898755', '24958165', '24992165', '25016071', '25380402', '25399943', '25686911', 
                '27265264', '27269172', '28410230', '28415187', '29127403', '13665874');
			
grant select on PP23.KOZADAT_EVAREGI_V01_T TO PP_SELECT;*/
--drop view PP23.KOZADAT_EVAREGI_V01_T;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.KOZADAT_KETTOS_V01_T (M003, M0581, PRPCA019, PRPCA016, PRPCA017, PRPCA094, PRPDA024, PRPAA063, PRPAA067, PRPAA014, PRPDA080) AS 
  SELECT
        M003,
        M0581,
        PRCA019 as PRPCA019,
        PRCA016 as PRPCA016,
        PRCA017 as PRPCA017,
        PRCA094 as PRPCA094,
        PRDA024 as PRPDA024,
        PRAA063 as PRPAA063,
        PRAA067 as PRPAA067,
        PRAA014 as PRPAA014,
        PRDA080 as PRPDA080
    FROM
        PP23.PP23_W_TASA_2329_V01_T
    WHERE
        M0581 BETWEEN 6419 AND 6630
        and M003 not in (
             '10247620', '11494533', '11563446', '11696333', '11721284', '11964153', '12324842', '12357440', '12508691', '12564622', '12712708', '12736542', 
             '12813689', '13024875', '13043140', '13092931', '13211956', '13288080', '13291532', '13432966', '13505206', '13696418', '13762012', '13804031', 
             '13950857', '14035074', '14041691', '14129492', '14216552', '14275579', '14487660', '14722387', '14737707', '14750980', '14912083', '14922783', 
             '14952034', '14967461', '14976816', '14978344', '14989681', '20156574', '20569880', '20967532', '20968337', '21162699', '21310919', '21522426', 
             '21532906', '21779398', '21912810', '22121372', '22164955', '22229645', '22320722', '22480242', '22568225', '22583046', '22721226', '22741853',
             '22750057', '22786737', '22794136', '22938154', '22973430', '22988434', '23011520', '23011915', '23081561', '23122936', '23150261', '23292637',
             '23333356', '23358074', '23367151', '23383959', '23390821', '23402702', '23425679', '23465400', '23466061', '23729227', '23743803', '23752083', 
             '23764118', '23785519', '23793592', '23796265', '23824724', '23830619', '23841114', '23844777', '23847031', '23853586', '23857982', '23877636', 
             '23879944', '23887044', '23894404', '23905573', '23921065', '23921993', '23930245', '23978696', '23989706', '24060682', '24105439', '24140887', 
             '24149288', '24194068', '24203946', '24227340', '24258719', '24265650', '24274342', '24289054', '24311225', '24311397', '24325895', '24390635',
             '24394385', '24679170', '24705840', '24722694', '24798095', '24865614', '24871626', '24872658', '24898755', '24958165', '24992165', '25016071', 
             '25380402', '25399943', '25686911', '27265264', '27269172', '28410230', '28415187', '29127403'
    )    
    UNION
    SELECT
        M003,
        M0581,
        PRCA019 as PRPCA019,
        PRCA016 as PRPCA016,
        PRCA017 as PRPCA017,
        PRCA094 as PRPCA094,
        PRDA024 as PRPDA024,
        PRAA063 as PRPAA063,
        PRAA067 as PRPAA067,
        PRAA014 as PRPAA014,
        PRDA080 as PRPDA080
    FROM
        PP23.PP23_W_TASA_2329_SCV_V01_T
    WHERE
        M0581 BETWEEN 6419 AND 6630
        and M003 not in (
            '10247620', '11494533', '11563446', '11696333', '11721284', '11964153', '12324842', '12357440', '12508691', '12564622', '12712708', '12736542', 
            '12813689', '13024875', '13043140', '13092931', '13211956', '13288080', '13291532', '13432966', '13505206', '13696418', '13762012', '13804031', 
            '13950857', '14035074', '14041691', '14129492', '14216552', '14275579', '14487660', '14722387', '14737707', '14750980', '14912083', '14922783', 
            '14952034', '14967461', '14976816', '14978344', '14989681', '20156574', '20569880', '20967532', '20968337', '21162699', '21310919', '21522426', 
            '21532906', '21779398', '21912810', '22121372', '22164955', '22229645', '22320722', '22480242', '22568225', '22583046', '22721226', '22741853',
            '22750057', '22786737', '22794136', '22938154', '22973430', '22988434', '23011520', '23011915', '23081561', '23122936', '23150261', '23292637',
            '23333356', '23358074', '23367151', '23383959', '23390821', '23402702', '23425679', '23465400', '23466061', '23729227', '23743803', '23752083', 
            '23764118', '23785519', '23793592', '23796265', '23824724', '23830619', '23841114', '23844777', '23847031', '23853586', '23857982', '23877636', 
            '23879944', '23887044', '23894404', '23905573', '23921065', '23921993', '23930245', '23978696', '23989706', '24060682', '24105439', '24140887', 
            '24149288', '24194068', '24203946', '24227340', '24258719', '24265650', '24274342', '24289054', '24311225', '24311397', '24325895', '24390635',
            '24394385', '24679170', '24705840', '24722694', '24798095', '24865614', '24871626', '24872658', '24898755', '24958165', '24992165', '25016071', 
            '25380402', '25399943', '25686911', '27265264', '27269172', '28410230', '28415187', '29127403');

grant select on PP23.KOZADAT_KETTOS_V01_T TO PP_SELECT;

--PP23.KOZADAT_EVAREGI_V01_T nézet már nincs a 2020. adatévtõl kezdõdõen
/*CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.KOZADAT_EVAUJ_V01_T (M003, M0581, PRPDA024, PRPCA103) AS 
  SELECT 
        M003,
        M0581,
        PRDA024 as PRPDA024,
        PRCA103 as PRPCA103
    FROM 
        PP23.PP23_W_TASA_2171_V01_T
    WHERE 
        M0581 BETWEEN 6419 AND 6630 AND 
        M003 NOT IN (SELECT M003 FROM PP23.KOZADAT_KETTOS_V01_T 
                    UNION
                    SELECT M003 from PP23.KOZADAT_EVAREGI_V01_T);

grant select on PP23.KOZADAT_EVAUJ_V01_T TO PP_SELECT;*/
--drop view PP23.KOZADAT_EVAUJ_V01_T;
 
  
CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.KUL_MUKTOKE_V01_T (M003, M0581, M005, M045, PRAA038, PRBA001, PRBA002, PRBA006, PRBA012, PRBA013, PRBA015, PRBA037, PRBA038, PRBA039, PRBA040, PRBA044, PRBA048, PRBA053, PRBA054, PRBA055, PRBA056, PRCA053, PRCA054, PRCA055, PRCA056, PRCA057, PRCA103, PRDA024, SCV) AS 
  SELECT
        M003,
        M0581,
        M005,
        M045,
        PRAA038,
        nvl(PRAA002, 0) + nvl(PRBA038, 0) + nvl(PRBA012, 0) + nvl(PRBA013, 0) + nvl(PRBA048, 0) + nvl(PRBA044, 0) + nvl(PRBA015, 0) AS PRBA001,
        PRBA002,
        PRBA006,
        PRBA012,
        PRBA013,
        PRBA015,
        PRBA037,
        PRBA038,
        PRBA039,
        PRBA040,
        PRBA044,
        PRBA048,
        PRBA053,
        PRBA054,
        PRBA055,
        PRBA056,
        PRCA053,
        PRCA054,
        nvl(PRCA053, 0) - nvl(PRCA054, 0) AS PRCA055,
        PRCA056,
        PRCA057,
        PRCA103,
        PRDA024,
        0 AS SCV
    FROM
        PP23.PP23_W_TASA_2329_V01_T
    WHERE
        M0581 BETWEEN 6419 AND 6630
        and M003 NOT IN (
            '10247620', '11494533', '11563446', '11696333', '11721284', '11964153', '12324842', '12357440', '12508691', '12564622', '12712708', '12736542', '12813689', 
            '13024875', '13043140', '13092931', '13211956', '13288080', '13291532', '13432966', '13505206', '13696418', '13762012', '13804031', '13950857', '14035074', 
            '14041691', '14129492', '14216552', '14275579', '14487660', '14722387', '14737707', '14750980', '14912083', '14922783', '14952034', '14967461', '14976816', 
            '14978344', '14989681', '20156574', '20569880', '20967532', '20968337', '21162699', '21310919', '21522426', '21532906', '21779398', '21912810', '22121372', 
            '22164955', '22229645', '22320722', '22480242', '22568225', '22583046', '22721226', '22741853', '22750057', '22786737', '22794136', '22938154', '22973430', 
            '22988434', '23011520', '23011915', '23081561', '23122936', '23150261', '23292637', '23333356', '23358074', '23367151', '23383959', '23390821', '23402702', 
            '23425679', '23465400', '23466061', '23729227', '23743803', '23752083', '23764118', '23785519', '23793592', '23796265', '23824724', '23830619', '23841114', 
            '23844777', '23847031', '23853586', '23857982', '23877636', '23879944', '23887044', '23894404', '23905573', '23921065', '23921993', '23930245', '23978696', 
            '23989706', '24060682', '24105439', '24140887', '24149288', '24194068', '24203946', '24227340', '24258719', '24265650', '24274342', '24289054', '24311225', 
            '24311397', '24325895', '24390635', '24394385', '24679170', '24705840', '24722694', '24798095', '24865614', '24871626', '24872658', '24898755', '24958165', 
            '24992165', '25016071', '25380402', '25399943', '25686911', '27265264', '27269172', '28410230', '28415187', '29127403'
            )
    UNION
    SELECT
        M003,
        M0581,
        M005,
        M045,
        PRAA038,
        nvl(PRAA002, 0) + nvl(PRBA038, 0) + nvl(PRBA012, 0) + nvl(PRBA013, 0) + nvl(PRBA048, 0) + nvl(PRBA044, 0) + nvl(PRBA015, 0) AS PRBA001,
        PRBA002,
        PRBA006,
        PRBA012,
        PRBA013,
        PRBA015,
        PRBA037,
        PRBA038,
        PRBA039,
        PRBA040,
        PRBA044,
        PRBA048,
        PRBA053,
        PRBA054,
        PRBA055,
        PRBA056,
        PRCA053,
        PRCA054,
        nvl(PRCA053, 0) - nvl(PRCA054, 0) AS PRCA055,
        PRCA056,
        PRCA057,
        PRCA103,
        PRDA024,
        1 AS scv
    FROM
        PP23.PP23_W_TASA_2329_SCV_V01_T
    WHERE
        M0581 BETWEEN 6419 AND 6630
        and M003 NOT IN (
            '10247620', '11494533', '11563446', '11696333', '11721284', '11964153', '12324842', '12357440', '12508691', '12564622', '12712708', '12736542', '12813689', 
            '13024875', '13043140', '13092931', '13211956', '13288080', '13291532', '13432966', '13505206', '13696418', '13762012', '13804031', '13950857', '14035074', 
            '14041691', '14129492', '14216552', '14275579', '14487660', '14722387', '14737707', '14750980', '14912083', '14922783', '14952034', '14967461', '14976816', 
            '14978344', '14989681', '20156574', '20569880', '20967532', '20968337', '21162699', '21310919', '21522426', '21532906', '21779398', '21912810', '22121372', 
            '22164955', '22229645', '22320722', '22480242', '22568225', '22583046', '22721226', '22741853', '22750057', '22786737', '22794136', '22938154', '22973430', 
            '22988434', '23011520', '23011915', '23081561', '23122936', '23150261', '23292637', '23333356', '23358074', '23367151', '23383959', '23390821', '23402702', 
            '23425679', '23465400', '23466061', '23729227', '23743803', '23752083', '23764118', '23785519', '23793592', '23796265', '23824724', '23830619', '23841114', 
            '23844777', '23847031', '23853586', '23857982', '23877636', '23879944', '23887044', '23894404', '23905573', '23921065', '23921993', '23930245', '23978696', 
            '23989706', '24060682', '24105439', '24140887', '24149288', '24194068', '24203946', '24227340', '24258719', '24265650', '24274342', '24289054', '24311225', 
            '24311397', '24325895', '24390635', '24394385', '24679170', '24705840', '24722694', '24798095', '24865614', '24871626', '24872658', '24898755', '24958165', 
            '24992165', '25016071', '25380402', '25399943', '25686911', '27265264', '27269172', '28410230', '28415187', '29127403'
            );

   
   
grant select on PP23.KUL_MUKTOKE_V01_T TO PP_SELECT;

--még nem lehet lefuttatni
CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.M_EVA_V01_ELOZETES_T (P_1, P_2, P_21, P_23, P_2331, P_2_ARANY, P_21_ARANY, P_23_ARANY, P_2331_ARANY) AS 
  SELECT 
        P_1, 
        P_2, 
        P_21, 
        P_23, 
        P_2331, 
        round(P_2 / P_1, 10) P_2_ARANY, 
        round(P_21 / P_2, 10) P_21_ARANY, 
        round(P_23 / P_2, 10) P_23_ARANY, 
        round(P_2331 / P_2, 10) P_2331_ARANY
    FROM(
        SELECT 
            sum(nvl(P_1, 0)) P_1,
            sum(nvl(P_2, 0)) P_2,
            sum(nvl(P_21, 0)) P_21,
            sum(nvl(P_23, 0)) P_23,
            sum(nvl(P_2331, 0)) P_2331
        FROM PP23.PP23_W_W_ELOZETES_V01_T
        where sema_tipus = 11 and P_121 < 50000 and M0581 in ('6612', '6619', '6621', '6622', '6629')
        );  

  
grant select on PP23.M_EVA_V01_ELOZETES_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_BIZT_FIOK_TASA_V01_T (M003, M0581, PRCA103, PRCA007, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRCA020, PRCA016, PRCA017, PRCA094, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA035, PRCA054, TAB279) AS 
  SELECT
        T_29.M003,
        T_29.M0581,
        T_29.PRCA103,
        T_29.PRCA007,
        T_29.PRCA008,
        T_29.PRCA090,
        T_29.PRCA022,
        T_29.PRCA023,
        T_29.PRCA093,
        T_29.PRCA020,
        T_29.PRCA016,
        T_29.PRCA017,
        T_29.PRCA094,
        T_29.PRCA081,
        T_29.PRCA150,
        T_29.PRCA151,
        T_29.PRCA078,
        T_29.PRCA149,
        T_29.PRCA035,
        T_29.PRCA054,
        T_29.TAB279
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
    WHERE
            T_29.M003 in (  '22539171', '22567860', '22128276', '22134604', '22101226', '22539188', 
                            '22548997', '22553221', '22157629', '22217871', '22325954', '22384407', 
                            '22337443', '22593540', '22945143', '23706288', '25363926', '25383371',
                            '22217871', '25489659', '23706288', '23837324', '24112435');

grant select on PP23.PP23_BIZT_FIOK_TASA_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_BIZT_TASA_V01_T (M003, KOMPOZIT, INT_EGY, PRJA045, PRJA196, PRCA103, PRCA007, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA008, PRCA090, PRCA091, PRCA092, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRCA024, PRCA054, PRDA066, PRDA068, TAB279) AS 
  SELECT
        BIZT.M003,
        BIZT.kompozit,
        BIZT.int_egy,
        T_08.PRJA045,
        T_08.PRJA196,
        T_29.PRCA103,
        T_29.PRCA007,
        T_29.PRCA081,
        T_29.PRCA150,
        T_29.PRCA151,
        T_29.PRCA078,
        T_29.PRCA149,
        T_29.PRCA008,
        T_29.PRCA090,
        T_29.PRCA091,
        T_29.PRCA092,
        T_29.PRCA022,
        T_29.PRCA023,
        T_29.PRCA093,
        T_29.PRDA082,
        T_29.PRCA020,
        T_29.PRCA016,
        T_29.PRCA017,
        T_08.PRJA087,
        T_08.PRJA088,
        T_29.PRCA094,
        T_01.PRJA061,
        T_01.PRJA013,
        T_29.PRDA107 + T_29.PRDA108 AS PRDA084,
        T_01.PRJA050 / 1000 AS PRJA050,
        T_29.PRCA024,
        T_29.PRCA054,
        T_29.PRDA066,
        T_29.PRDA068,
        T_29.TAB279
    FROM
        PP23.PP23_W_BIZT_T bizt
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T T_29 ON bizt.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON bizt.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON bizt.M003 = T_01.M003;
       -- LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON bizt.M003 = T_11.M003;
		
grant select on PP23.PP23_BIZT_TASA_V01_T TO PP_SELECT;

CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_BIZT_V01_T (INT_EGY, KOMPOZIT, MEV, M003, PBBOM001, PBBOM807, PBBOM844, PBC001, PBC002, PBC003, PBC004, PBC005, PBC007, PBC008, PBC009, PBC010, PBC012, PBC013, PBC014, PBC016, PBC017, PBC018, PBC019, PBC020, PBC021, PBC028, PBC030, PBC031, PBC032, PBC033, PBC034, PBC035, PBC036, PBC037, PBC038, PBC039, PBC040, PBC048, PBC051, PBC052, PBC053, PBC054, PBC055, PBC057, PBC063, PBC065, PBC066, PBC067, PBC069, PBC070, PBC071, PBC074, PBC075, PBC087, PBC089, PBC090, PBC091, PBC094, PBC095, PBC096, PBC097, PBC098, PBC099, PBC100, PBC101, PBC104, PBC107, PBC108, PBC109, PBC110, PBC111, PBC112, PBC113, PBC117, PBC118, PBC119, PBC120, PBC121, PBC122, PBC123, PBC124, PBC125, PBC126, PBC127, PBC128, PBC129, PBC130, PBC131, PBC132, PBC133, PBC134, PBC135, PBC136, PBC137, PBC138, PBC139, PBC140, PBC141, PBC142, PBC143, PBC144, PBC145, PBC146, PBC147, PBC148, PBC149, PBC150, PBC151, PBC152, PBC153, PMC001, PMC002, PMC003, PMC004, PMC005, PMC006, PMC007, PMC008, PMC009, PMC010, PMC011, PMC012, PMC013, PMC014, PMC015, PMC016, PMC017, PMC018, PMC019, PMC020, PMC021, PMC022, PMC023, PMC024, PMC025, PMC026, PMC027, PMC028, PMC029, PMC030, PMC031, PMC032, PMC033, PMC034, PMC035, PMC036, PMC037, PMC038, PMC039, PMC040, PMC041, PMC042, PMC043, PMC044, PMC045, PMC046, PMC047, PMC048, PMC050, PMC052, PMC053, PMC055, PMC056, PMC057, PMC058, PMC059, PMC060, PMC061, PMC065, PMC066, PMC067, PMC068, PMC069, PMC070, PMC071, PMC072, PMC073, PMC074, PMC075, PMC076, PMC077, PMC078, PMC079, PMC080, PMC081, PMC082, PMC083, PMC084, PMC085, PMC086, PMC087, PMC088, PMC089, PMC090, PMC091, POC001, POC002, POC003, POC004, POC005, POC009, POC010, POC011, POC012, POC013, POC014, POC015, POC016, POC017, POC018, POC019, POC020, POC021, POC022, POC023, POC024, POC025, POC028, POC029, POC031, POC032, POC037, POC039, POC040, POC041, POC044, POC045, POC046, POC047, POC048, POC049, POC050, POC051, POC052, POC053, PXC001, PXC002, PXC003, PXC004, PXC005, PXC014, PXC016, PXC017, PXC018, PXC019, PXC020, PXC021, PXC028, PXC030, PXC032, PXC033, PXC034, PXC035, PXC036, PXC037, PXC048, PXC051, PXC052, PXC053, PXC054, PXC055, PXC063, PXC065, PXC101, PXC104, PXC125, PXC135, PXC136, PXC137, PXC138, PXC139, PXC140, PXC141, PXC142, PXC143, PXC144, PXC145, PXC146, PXC147, PXC148, PXC149, PXC150, PXC151, PXC152, PXC153, PRCA092, PRCA091) AS 
  SELECT
        bizt.int_egy AS int_egy,
        bizt.kompozit AS kompozit,
        bizt.mev AS mev,
        bizt.m003 AS m003,
        bizt.pbbom001 AS pbbom001,
        bizt.pbbom807 AS pbbom807,
        bizt.pbbom844 AS pbbom844,
        bizt.pbc001 AS pbc001,
        bizt.pbc002 AS pbc002,
        bizt.pbc003 AS pbc003,
        bizt.pbc004 AS pbc004,
        bizt.pbc005 AS pbc005,
        bizt.pbc007 AS pbc007,
        bizt.pbc008 AS pbc008,
        bizt.pbc009 AS pbc009,
        bizt.pbc010 AS pbc010,
        bizt.pbc012 AS pbc012,
        bizt.pbc013 AS pbc013,
        bizt.pbc014 AS pbc014,
        bizt.pbc016 AS pbc016,
        bizt.pbc017 AS pbc017,
        bizt.pbc018 AS pbc018,
        bizt.pbc019 AS pbc019,
        bizt.pbc020 AS pbc020,
        bizt.pbc021 AS pbc021,
        bizt.pbc028 AS pbc028,
        bizt.pbc030 AS pbc030,
        bizt.pbc031 AS pbc031,
        bizt.pbc032 AS pbc032,
        bizt.pbc033 AS pbc033,
        bizt.pbc034 AS pbc034,
        bizt.pbc035 AS pbc035,
        bizt.pbc036 AS pbc036,
        bizt.pbc037 AS pbc037,
        bizt.pbc038 AS pbc038,
        bizt.pbc039 AS pbc039,
        bizt.pbc040 AS pbc040,
        bizt.pbc048 AS pbc048,
        bizt.pbc051 AS pbc051,
        bizt.pbc052 AS pbc052,
        bizt.pbc053 AS pbc053,
        bizt.pbc054 AS pbc054,
        bizt.pbc055 AS pbc055,
        bizt.pbc057 AS pbc057,
        bizt.pbc063 AS pbc063,
        bizt.pbc065 AS pbc065,
        bizt.pbc066 AS pbc066,
        bizt.pbc067 AS pbc067,
        bizt.pbc069 AS pbc069,
        bizt.pbc070 AS pbc070,
        bizt.pbc071 AS pbc071,
        bizt.pbc074 AS pbc074,
        bizt.pbc075 AS pbc075,
        bizt.pbc087 AS pbc087,
        bizt.pbc089 AS pbc089,
        bizt.pbc090 AS pbc090,
        bizt.pbc091 AS pbc091,
        bizt.pbc094 AS pbc094,
        bizt.pbc095 AS pbc095,
        bizt.pbc096 AS pbc096,
        bizt.pbc097 AS pbc097,
        bizt.pbc098 AS pbc098,
        bizt.pbc099 AS pbc099,
        bizt.pbc100 AS pbc100,
        bizt.pbc101 AS pbc101,
        bizt.pbc104 AS pbc104,
        bizt.pbc107 AS pbc107,
        bizt.pbc108 AS pbc108,
        bizt.pbc109 AS pbc109,
        bizt.pbc110 AS pbc110,
        bizt.pbc111 AS pbc111,
        bizt.pbc112 AS pbc112,
        bizt.pbc113 AS pbc113,
        bizt.pbc117 AS pbc117,
        bizt.pbc118 AS pbc118,
        bizt.pbc119 AS pbc119,
        bizt.pbc120 AS pbc120,
        bizt.pbc121 AS pbc121,
        bizt.pbc122 AS pbc122,
        bizt.pbc123 AS pbc123,
        bizt.pbc124 AS pbc124,
        bizt.pbc125 AS pbc125,
        bizt.pbc126 AS pbc126,
        bizt.pbc127 AS pbc127,
        bizt.pbc128 AS pbc128,
        bizt.pbc129 AS pbc129,
        bizt.pbc130 AS pbc130,
        bizt.pbc131 AS pbc131,
        bizt.pbc132 AS pbc132,
        bizt.pbc133 AS pbc133,
        bizt.pbc134 AS pbc134,
        bizt.pbc135 AS pbc135,
        bizt.pbc136 AS pbc136,
        bizt.pbc137 AS pbc137,
        bizt.pbc138 AS pbc138,
        bizt.pbc139 AS pbc139,
        bizt.pbc140 AS pbc140,
        bizt.pbc141 AS pbc141,
        bizt.pbc142 AS pbc142,
        bizt.pbc143 AS pbc143,
        bizt.pbc144 AS pbc144,
        bizt.pbc145 AS pbc145,
        bizt.pbc146 AS pbc146,
        bizt.pbc147 AS pbc147,
        bizt.pbc148 AS pbc148,
        bizt.pbc149 AS pbc149,
        bizt.pbc150 AS pbc150,
        bizt.pbc151 AS pbc151,
        bizt.pbc152 AS pbc152,
        bizt.pbc153 AS pbc153,
        bizt.pmc001 AS pmc001,
        bizt.pmc002 AS pmc002,
        bizt.pmc003 AS pmc003,
        bizt.pmc004 AS pmc004,
        bizt.pmc005 AS pmc005,
        bizt.pmc006 AS pmc006,
        bizt.pmc007 AS pmc007,
        bizt.pmc008 AS pmc008,
        bizt.pmc009 AS pmc009,
        bizt.pmc010 AS pmc010,
        bizt.pmc011 AS pmc011,
        bizt.pmc012 AS pmc012,
        bizt.pmc013 AS pmc013,
        bizt.pmc014 AS pmc014,
        bizt.pmc015 AS pmc015,
        bizt.pmc016 AS pmc016,
        bizt.pmc017 AS pmc017,
        bizt.pmc018 AS pmc018,
        bizt.pmc019 AS pmc019,
        bizt.pmc020 AS pmc020,
        bizt.pmc021 AS pmc021,
        bizt.pmc022 AS pmc022,
        bizt.pmc023 AS pmc023,
        bizt.pmc024 AS pmc024,
        bizt.pmc025 AS pmc025,
        bizt.pmc026 AS pmc026,
        bizt.pmc027 AS pmc027,
        bizt.pmc028 AS pmc028,
        bizt.pmc029 AS pmc029,
        bizt.pmc030 AS pmc030,
        bizt.pmc031 AS pmc031,
        bizt.pmc032 AS pmc032,
        bizt.pmc033 AS pmc033,
        bizt.pmc034 AS pmc034,
        bizt.pmc035 AS pmc035,
        bizt.pmc036 AS pmc036,
        bizt.pmc037 AS pmc037,
        bizt.pmc038 AS pmc038,
        bizt.pmc039 AS pmc039,
        bizt.pmc040 AS pmc040,
        bizt.pmc041 AS pmc041,
        bizt.pmc042 AS pmc042,
        bizt.pmc043 AS pmc043,
        bizt.pmc044 AS pmc044,
        bizt.pmc045 AS pmc045,
        bizt.pmc046 AS pmc046,
        bizt.pmc047 AS pmc047,
        bizt.pmc048 AS pmc048,
        bizt.pmc050 AS pmc050,
        bizt.pmc052 AS pmc052,
        bizt.pmc053 AS pmc053,
        bizt.pmc055 AS pmc055,
        bizt.pmc056 AS pmc056,
        bizt.pmc057 AS pmc057,
        bizt.pmc058 AS pmc058,
        bizt.pmc059 AS pmc059,
        bizt.pmc060 AS pmc060,
        bizt.pmc061 AS pmc061,
        bizt.pmc065 AS pmc065,
        bizt.pmc066 AS pmc066,
        bizt.pmc067 AS pmc067,
        bizt.pmc068 AS pmc068,
        bizt.pmc069 AS pmc069,
        bizt.pmc070 AS pmc070,
        bizt.pmc071 AS pmc071,
        bizt.pmc072 AS pmc072,
        bizt.pmc073 AS pmc073,
        bizt.pmc074 AS pmc074,
        bizt.pmc075 AS pmc075,
        bizt.pmc076 AS pmc076,
        bizt.pmc077 AS pmc077,
        bizt.pmc078 AS pmc078,
        bizt.pmc079 AS pmc079,
        bizt.pmc080 AS pmc080,
        bizt.pmc081 AS pmc081,
        bizt.pmc082 AS pmc082,
        bizt.pmc083 AS pmc083,
        bizt.pmc084 AS pmc084,
        bizt.pmc085 AS pmc085,
        bizt.pmc086 AS pmc086,
        bizt.pmc087 AS pmc087,
        bizt.pmc088 AS pmc088,
        bizt.pmc089 AS pmc089,
        bizt.pmc090 AS pmc090,
        bizt.pmc091 AS pmc091,
        bizt.poc001 AS poc001,
        bizt.poc002 AS poc002,
        bizt.poc003 AS poc003,
        bizt.poc004 AS poc004,
        bizt.poc005 AS poc005,
        bizt.poc009 AS poc009,
        bizt.poc010 AS poc010,
        bizt.poc011 AS poc011,
        bizt.poc012 AS poc012,
        bizt.poc013 AS poc013,
        bizt.poc014 AS poc014,
        bizt.poc015 AS poc015,
        bizt.poc016 AS poc016,
        bizt.poc017 AS poc017,
        bizt.poc018 AS poc018,
        bizt.poc019 AS poc019,
        bizt.poc020 AS poc020,
        bizt.poc021 AS poc021,
        bizt.poc022 AS poc022,
        bizt.poc023 AS poc023,
        bizt.poc024 AS poc024,
        bizt.poc025 AS poc025,
        bizt.poc028 AS poc028,
        bizt.poc029 AS poc029,
        bizt.poc031 AS poc031,
        bizt.poc032 AS poc032,
        bizt.poc037 AS poc037,
        bizt.poc039 AS poc039,
        bizt.poc040 AS poc040,
        bizt.poc041 AS poc041,
        bizt.poc044 AS poc044,
        bizt.poc045 AS poc045,
        bizt.poc046 AS poc046,
        bizt.poc047 AS poc047,
        bizt.poc048 AS poc048,
        bizt.poc049 AS poc049,
        bizt.poc050 AS poc050,
        bizt.poc051 AS poc051,
        bizt.poc052 AS poc052,
        bizt.poc053 AS poc053,
        bizt.pxc001 AS pxc001,
        bizt.pxc002 AS pxc002,
        bizt.pxc003 AS pxc003,
        bizt.pxc004 AS pxc004,
        bizt.pxc005 AS pxc005,
        bizt.pxc014 AS pxc014,
        bizt.pxc016 AS pxc016,
        bizt.pxc017 AS pxc017,
        bizt.pxc018 AS pxc018,
        bizt.pxc019 AS pxc019,
        bizt.pxc020 AS pxc020,
        bizt.pxc021 AS pxc021,
        bizt.pxc028 AS pxc028,
        bizt.pxc030 AS pxc030,
        bizt.pxc032 AS pxc032,
        bizt.pxc033 AS pxc033,
        bizt.pxc034 AS pxc034,
        bizt.pxc035 AS pxc035,
        bizt.pxc036 AS pxc036,
        bizt.pxc037 AS pxc037,
        bizt.pxc048 AS pxc048,
        bizt.pxc051 AS pxc051,
        bizt.pxc052 AS pxc052,
        bizt.pxc053 AS pxc053,
        bizt.pxc054 AS pxc054,
        bizt.pxc055 AS pxc055,
        bizt.pxc063 AS pxc063,
        bizt.pxc065 AS pxc065,
        bizt.pxc101 AS pxc101,
        bizt.pxc104 AS pxc104,
        bizt.pxc125 AS pxc125,
        bizt.pxc135 AS pxc135,
        bizt.pxc136 AS pxc136,
        bizt.pxc137 AS pxc137,
        bizt.pxc138 AS pxc138,
        bizt.pxc139 AS pxc139,
        bizt.pxc140 AS pxc140,
        bizt.pxc141 AS pxc141,
        bizt.pxc142 AS pxc142,
        bizt.pxc143 AS pxc143,
        bizt.pxc144 AS pxc144,
        bizt.pxc145 AS pxc145,
        bizt.pxc146 AS pxc146,
        bizt.pxc147 AS pxc147,
        bizt.pxc148 AS pxc148,
        bizt.pxc149 AS pxc149,
        bizt.pxc150 AS pxc150,
        bizt.pxc151 AS pxc151,
        bizt.pxc152 AS pxc152,
        bizt.pxc153 AS pxc153,
        tasa.prca092 AS prca092,
        tasa.prca091 AS prca091
    FROM
        PP23.PP23_W_BIZT_T bizt
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T tasa ON tasa.M003 = bizt.M003;


grant select on PP23.PP23_BIZT_V01_T TO PP_SELECT;

--Megszûnt a 2020. adatévtõl kezdõdõen a PP23.PP23_W_TASA_2143_V01_T tábla
/*CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_EVA_2143_V01_T (M003, M0581) AS 
  SELECT
        PP43.M003,
        PP43.M0581
    FROM
        PP23.PP23_W_TASA_2143_V01_T PP43
        LEFT JOIN PP23.PP23_W_TASA_2108_V01_T PP08 ON PP43.M003 = PP08.M003;

grant select on PP23.PP23_EVA_2143_V01_T TO PP_SELECT;*/
--drop view PP23.PP23_EVA_2143_V01_T;

CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_EVA_2371_V01_T (M003, M0581, PRCA103, PRCA007) AS 
  SELECT
        PP71.M003,
        PP71.M0581,
        PP71.PRCA103,
        PP71.PRCA007
    FROM
        PP23.PP23_W_TASA_2371_V01_T PP71
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T PP29 ON PP71.M003 = PP29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T PP08 ON PP71.M003 = PP08.M003
    WHERE PP71.M003 IN (
        '20686583', '20751973', '21797741', '22131340', '23364024', '23922891', 
        '23881505', '23796083', '24187749', '24099530', '12430370', '24082596', 
        '23798779', '23759451', '24120360', '28664518');

  
grant select on PP23.PP23_EVA_2371_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_FISIM_PSZAF_V01_T (MEV, M003, PVB0M000, PVB0M009, PVC001, PVC002, PVC007, PVC008, PVC009, PVC010, PVC011, PVC012, PVC013, PVC014, PVC015, PVC016, PVC017, PVC018, PVC019, PVC020, PVC021, PVC022, PVC023, PVC024, PVC025, PVC026, PVC027, PVC028, PVC029, PVC030, PVC031, PVC032, PVC033, PVC034, PVC035, PVC036, PVC037, PVC038, PVC039, PVC040, PVC041, PVC042, M0581) AS 
  SELECT
        pv.MEV,
        pv.M003,
        pv.PVB0M000,
        pv.PVB0M009,
        pv.PVC001,
        pv.PVC002,
        pv.PVC007,
        pv.PVC008,
        pv.PVC009,
        pv.PVC010,
        pv.PVC011,
        pv.PVC012,
        pv.PVC013,
        pv.PVC014,
        pv.PVC015,
        pv.PVC016,
        pv.PVC017,
        pv.PVC018,
        pv.PVC019,
        pv.PVC020,
        pv.PVC021,
        pv.PVC022,
        pv.PVC023,
        pv.PVC024,
        pv.PVC025,
        pv.PVC026,
        pv.PVC027,
        pv.PVC028,
        pv.PVC029,
        pv.PVC030,
        pv.PVC031,
        pv.PVC032,
        pv.PVC033,
        pv.PVC034,
        pv.PVC035,
        pv.PVC036,
        pv.PVC037,
        pv.PVC038,
        pv.PVC039,
        pv.PVC040,
        pv.PVC041,
        pv.PVC042,
        tasa.M0581 AS M0581
    FROM
        PP23.PP23_W_PENZ_VALL_T pv
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T tasa ON tasa.M003 = pv.M003
    WHERE
            tasa.M0581 = 6491
        OR
            tasa.M0581 = 6492
        OR
            tasa.M0581 = 6499;

			
grant select on PP23.PP23_FISIM_PSZAF_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_FISPSZ_V01_T (MEV, M003, PVB0M000, PVB0M009, PVC001, PVC002, PVC007, PVC008, PVC009, PVC010, PVC011, PVC012, PVC013, PVC014, PVC015, PVC016, PVC017, PVC018, PVC019, PVC020, PVC021, PVC022, PVC023, PVC024, PVC025, PVC026, PVC027, PVC028, PVC029, PVC030, PVC031, PVC032, PVC033, PVC034, PVC035, PVC036, PVC037, PVC038, PVC039, PVC040, PVC041, PVC042, M0581) AS 
  SELECT
        pv.MEV,
        pv.M003,
        pv.PVB0M000,
        pv.PVB0M009,
        pv.PVC001,
        pv.PVC002,
        pv.PVC007,
        pv.PVC008,
        pv.PVC009,
        pv.PVC010,
        pv.PVC011,
        pv.PVC012,
        pv.PVC013,
        pv.PVC014,
        pv.PVC015,
        pv.PVC016,
        pv.PVC017,
        pv.PVC018,
        pv.PVC019,
        pv.PVC020,
        pv.PVC021,
        pv.PVC022,
        pv.PVC023,
        pv.PVC024,
        pv.PVC025,
        pv.PVC026,
        pv.PVC027,
        pv.PVC028,
        pv.PVC029,
        pv.PVC030,
        pv.PVC031,
        pv.PVC032,
        pv.PVC033,
        pv.PVC034,
        pv.PVC035,
        pv.PVC036,
        pv.PVC037,
        pv.PVC038,
        pv.PVC039,
        pv.PVC040,
        pv.PVC041,
        pv.PVC042,
        tasa.M0581 AS M0581
    FROM
        PP23.PP23_W_PENZ_VALL_T pv
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T tasa ON tasa.M003 = pv.M003
    WHERE
            tasa.M0581 = 6491
        OR
            tasa.M0581 = 6492
        OR
            tasa.M0581 = 6499;

grant select on PP23.PP23_FISPSZ_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_FISIMT_TASA_V01_T (M003, SEMA_TIPUS, M0581, PRJA049, PRJA019, PRAA045, PRCA103, PRCA092, PRCA091, PRCA008, PRBA050, PRBA022, PRBA051, PRCA007, PRJA045, PRJA196, PRCA022, PRCA023, PRDA082, PRJA087, PRJA088, PRJA061, PRJA065, PRJA200, PRJA013, PRDA084, PRJA050, PRCA093, PRCA081, PRCA078, PRCA024, PRCA054, PRCA090, PRCA094, PRCA017, PRCA016, PRCA019, PRDA102, PRDA066, PRDA068, TAB279) AS 
  SELECT
        pv.M003,
        4 AS SEMA_TIPUS,
        t_29.M0581,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_29.PRAA045,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        t_29.PRCA008,
        t_29.PRBA050,
        t_29.PRBA022,
        t_29.PRBA051,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRDA082,
        t_08.PRJA087,
        t_08.PRJA088,
        t_01.PRJA061,
        0 AS PRJA065, -- t_11.PRJA065, --visszaÃ¡llÃ­tva 2018.08.22-Ã?n
        t_01.PRJA200,
        t_01.PRJA013,
        t_29.PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        t_29.PRCA093,
        t_29.PRCA081,
        t_29.PRCA078,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRCA090,
        t_29.PRCA094,
        t_29.PRCA017,
        t_29.PRCA016,
        t_29.PRCA019,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.TAB279
    FROM
        PP23.PP23_W_PENZ_VALL_T pv
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T T_29 ON PV.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON PV.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON PV.M003 = T_01.M003;
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON PV.M003 = T_11.M003;

grant select on PP23.PP23_FISIMT_TASA_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_HIT_TASA_V01_T (M003, SEMA_TIPUS, M0581, PRJA049, PRJA019, PRCA007, PRJA045, PRJA196, PRCA022, PRCA023, PRDA082, PRJA087, PRJA088, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA078, PRCA008, PRCA091, PRCA092, PRCA103, PRCA024, PRCA054, PRCA093, PRDA102, PRDA066, PRDA068, TAB279, PRCA150, PRCA151) AS 
  SELECT
        hit.M003,
        1 AS SEMA_TIPUS,
        t_29.M0581,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRDA082,
        t_08.PRJA087,
        t_08.PRJA088,
        t_08.PRJA061,
        t_01.PRJA013,
        t_29.PRDA084, 
        CASE nvl(t_29.M0581, '9999') WHEN '9999' THEN 0  ELSE round(t_01.PRJA050 / 1000, 0) END AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA078,
        t_29.PRCA008,
        t_29.PRCA091,
        t_29.PRCA092,
        t_29.PRCA103,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRCA093,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.TAB279,
		t_29.PRCA150,	-- added by ZoltÃ¡n Werner
		t_29.PRCA151	-- added by ZoltÃ¡n Werner
    FROM          PP23.PP23_W_HIT_T hit
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T T_29 ON HIT.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON HIT.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON HIT.M003 = T_01.M003;
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON HIT.M003 = T_11.M003;

grant select on PP23.PP23_HIT_TASA_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_R00_V01_T (M003, M0581, PRCA103, PRCA092, PRCA091, PRJA049, PRJA019, PRJA200, PRCA007, PRJA045, PRJA196, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA024, PRCA054, PRDA102, PRDA066, PRDA068, PRCA004, TAB279, PRCA167, PRCA172) AS 
  SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279,
        t_29.PRCA167,
        t_29.PRCA172
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
        T_29.M003 not in ('10045040', '10433748', '10873151', '12321942', '12399596', 
                            '12715574', '22196796', '22540054', '10043622', '19670780', 
                            '13665874', '21939358', '22533577', '22883535', '25386147', 
                            '25426346', '28454539');

grant select on PP23.PP23_KETTOSOK_R00_V01_T TO PP_SELECT;

--még nem lehet létrehozni
CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETT_R00_KIEG_V01_T (M003, SEMA_TIPUS, M0581, PRJA050, PRCA103, PFD0M084) AS 
  SELECT
        k.M003,
        e.SEMA_TIPUS,
        e.M0581,
        k.PRJA050,
        k.PRCA103,
        k.PRDA084 --k.prfd0m084
        --pwh.pic320,
        --pwh.pic339
    FROM
        PP23.PP23_W_W_ELOZETES_V01_T E
        JOIN PP23.PP23_KETTOSOK_R00_V01_T K ON K.M003 = E.M003;
  
grant select on PP23.PP23_KETT_R00_KIEG_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_R01_V01_T (M003, M0581, PRCA103, PRCA092, PRCA091, PRJA049, PRJA019, PRJA200, PRCA007, PRJA045, PRJA196, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA024, PRCA054, PRDA102, PRDA066, PRDA068, PRCA004, TAB279, PRCA167, PRCA172) AS 
  SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279,
        t_29.PRCA167,
        t_29.PRCA172
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
            t_29.M003 != 10045040
        AND
            t_29.M003 != 10433748
        AND
            t_29.M003 != 10873151
        AND
            t_29.M003 != 12321942
        AND
            t_29.M003 != 12399596
        AND
            t_29.M003 != 12715574
        AND
            t_29.M003 != 22196796
        AND
            t_29.M003 != 22540054
        AND
            t_29.M003 != 10043622
        AND
            t_29.M003 != 12899986
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 13665874
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 21939358
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 22533577
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 22883535
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 25386147
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 25426346
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 28454539            
        AND (
                t_29.M0581 = 6491
            OR
                t_29.M0581 = 6492
            OR
                t_29.M0581 = 6499
        )
    MINUS
    SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS pfd0m084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279,
        t_29.PRCA167,
        t_29.PRCA172
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
        RIGHT JOIN PP23.PP23_FISIM_PSZAF_V01_T T_PV ON T_PV.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
            t_29.M003 != 10045040
        AND
            t_29.M003 != 10433748
        AND
            t_29.M003 != 10873151
        AND
            t_29.M003 != 12321942
        AND
            t_29.M003 != 12399596
        AND
            t_29.M003 != 12715574
        AND
            t_29.M003 != 22196796
        AND
            t_29.M003 != 22540054
        AND
            t_29.M003 != 10043622
        AND
            t_29.M003 != 12899986
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 13665874
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 21939358
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 22533577
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 22883535
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 25386147
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 25426346
        AND --11 miatt kihagyjuk oket
            t_29.M003 != 28454539            
        AND (
                t_29.M0581 = 6491
            OR
                t_29.M0581 = 6492
            OR
                t_29.M0581 = 6499
        );

grant select on PP23.PP23_KETTOSOK_R01_V01_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_R02_V01_T (M003, M0581, PRCA103, PRCA092, PRCA091, PRJA049, PRJA019, PRJA200, PRCA007, PRJA045, PRJA196, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA024, PRCA054, PRDA102, PRDA066, PRDA068, PRCA004, PRCA167) AS 
  SELECT
        AA.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
		t_29.PRCA167
    FROM
        --PP23.PP23_KATA_KIVA_V01_T AA
        PP23.PP23_KIVA_V01_T AA
        LEFT JOIN PP23.PP23_W_TASA_2329_V01_T T_29 ON AA.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
            AA.M003 IS NOT NULL
        AND
            T_29.M0581 IS NOT NULL
        AND
            AA.M003 NOT IN (
                '20687106','21469817','24684727','24832724','20953632','20744702','22588687','23097047','21336645','29124651','21529265','25643448'
,'22197072','22478526','24771997'
            );

grant select on PP23.PP23_KETTOSOK_R02_V01_T TO PP_SELECT;	


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_V00_E_T (M003, M0581, PRCA103, PRCA092, PRCA091, PRJA049, PRJA019, PRJA200, PRCA007, PRJA045, PRJA196, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA024, PRCA054, PRDA102, PRDA066, PRDA068, PRCA004, TAB279) AS 
  SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
        T_29.M003 not in ('10045040', '10433748', '10873151', '12321942', '12399596', '12715574', '22196796', '22540054', '10043622', '19670780');

grant select on PP23.PP23_KETTOSOK_V00_E_T TO PP_SELECT;

--még nem lehet lefuttatni
CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_V00_KIEG_E_T (M003, SEMA_TIPUS, M0581, PRJA050, PRCA103, PFD0M084) AS 
  SELECT
        k.M003,
        e.SEMA_TIPUS,
        e.M0581,
        k.PRJA050,
        k.PRCA103,
        k.PRDA084 --k.prfd0m084
        --pwh.pic320,
        --pwh.pic339
    FROM
        PP23.PP23_W_W_ELOZETES_V01_T e
        JOIN PP23.PP23_KETTOSOK_V00_E_T k ON k.M003 = e.M003;

grant select on PP23.PP23_KETTOSOK_V00_KIEG_E_T TO PP_SELECT;


CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_KETTOSOK_V01_E_T (M003, M0581, PRCA103, PRCA092, PRCA091, PRJA049, PRJA019, PRJA200, PRCA007, PRJA045, PRJA196, PRCA008, PRCA090, PRCA022, PRCA023, PRCA093, PRDA082, PRCA020, PRCA016, PRCA017, PRJA087, PRJA088, PRCA094, PRJA061, PRJA013, PRDA084, PRJA050, PRJA065, PRCA081, PRCA150, PRCA151, PRCA078, PRCA149, PRCA024, PRCA054, PRDA102, PRDA066, PRDA068, PRCA004, TAB279) AS 
  SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PRDA084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279
    FROM
        PP23.PP23_W_TASA_2329_V01_T T_29
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
        --LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
            t_29.M003 != 10045040
        AND
            t_29.M003 != 10433748
        AND
            t_29.M003 != 10873151
        AND
            t_29.M003 != 12321942
        AND
            t_29.M003 != 12399596
        AND
            t_29.M003 != 12715574
        AND
            t_29.M003 != 22196796
        AND
            t_29.M003 != 22540054
        AND
            t_29.M003 != 10043622
        AND
            t_29.M003 != 12899986
        AND (
                t_29.M0581 = 6491
            OR
                t_29.M0581 = 6492
            OR
                t_29.M0581 = 6499
        )
    MINUS
    SELECT
        t_29.M003,
        t_29.M0581,
        t_29.PRCA103,
        t_29.PRCA092,
        t_29.PRCA091,
        0 AS PRJA049, --t_11.PRJA049,
        t_01.PRJA019,
        t_01.PRJA200,
        t_29.PRCA007,
        t_08.PRJA045,
        t_08.PRJA196,
        t_29.PRCA008,
        t_29.PRCA090,
        t_29.PRCA022,
        t_29.PRCA023,
        t_29.PRCA093,
        t_29.PRDA082,
        t_29.PRCA020,
        t_29.PRCA016,
        t_29.PRCA017,
        t_08.PRJA087,
        t_08.PRJA088,
        t_29.PRCA094,
        t_01.PRJA061,
        t_01.PRJA013,
        t_29.PRDA107 + t_29.PRDA108 AS PFF0M084,
        t_01.PRJA050 / 1000 AS PRJA050,
        0 AS PRJA065, --t_11.PRJA065,
        t_29.PRCA081,
        t_29.PRCA150,
        t_29.PRCA151,
        t_29.PRCA078,
        t_29.PRCA149,
        t_29.PRCA024,
        t_29.PRCA054,
        t_29.PRDA102,
        t_29.PRDA066,
        t_29.PRDA068,
        t_29.PRCA004,
        t_29.TAB279
    FROM PP23.PP23_W_TASA_2329_V01_T T_29
        RIGHT JOIN PP23.PP23_FISPSZ_V01_T T_PV ON T_PV.M003 = T_29.M003
        LEFT JOIN PP23.PP23_W_TASA_2308_V01_T T_08 ON T_29.M003 = T_08.M003
        LEFT JOIN PP23.PP23_W_TASA_2301_V01_T T_01 ON T_29.M003 = T_01.M003
       -- LEFT JOIN PP23.PP23_W_TASA_2311_V01_T T_11 ON T_29.M003 = T_11.M003
    WHERE
            t_29.M003 != 10045040
        AND
            t_29.M003 != 10433748
        AND
            t_29.M003 != 10873151
        AND
            t_29.M003 != 12321942
        AND
            t_29.M003 != 12399596
        AND
            t_29.M003 != 12715574
        AND
            t_29.M003 != 22196796
        AND
            t_29.M003 != 22540054
        AND
            t_29.M003 != 10043622
        AND
            t_29.M003 != 12899986
        AND (
                t_29.M0581 = 6491
            OR
                t_29.M0581 = 6492
            OR
                t_29.M0581 = 6499
        );


grant select on PP23.PP23_KETTOSOK_V01_E_T TO PP_SELECT;

--még nem lehet lefuttatni
CREATE OR REPLACE FORCE EDITIONABLE VIEW PP23.PP23_W_W_ELOZ_V01_PIVOT_T ("MEV", "MUTATO", "16419", "26492", "36419", "46491", "46492", "46499", "56530", "66530", "76512", "86512", "96612", "96619", "96621", "96622", "96629", "106619", "106622", "116491", "116492", "116499", "116611", "116612", "116619", "116621", "116622", "116629", "116630", "126511", "136511", "146512", "156512", "166512", "176511", "176512", "186491", "186619", "196530", "506420", "506492", "506499", "516420", "516492", "526499", "526612", "526619", "526621", "526622", "526629", "536499", "536612", "536619", "536621", "536622", "536629") AS 
  SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'DB' AS MUTATO, COUNT(*) DB
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(DB)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_11' AS MUTATO,SUM(NVL(P_11,0)) P_11
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_11)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))

UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_117' AS MUTATO,SUM(NVL(P_117,0)) P_117
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_117)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))			
		

UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_118' AS MUTATO,SUM(NVL(P_118,0)) P_118
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_118)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))

UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_119' AS MUTATO,SUM(NVL(P_119,0)) P_119
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_119)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_111' AS MUTATO,SUM(NVL(P_111,0)) P_111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1111' AS MUTATO,SUM(NVL(P_1111,0)) P_1111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_11111' AS MUTATO,SUM(NVL(P_11111,0)) P_11111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_11111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_11112' AS MUTATO,SUM(NVL(P_11112,0)) P_11112
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_11112)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1112' AS MUTATO,SUM(NVL(P_1112,0)) P_1112
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1112)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1113' AS MUTATO,SUM(NVL(P_1113,0)) P_1113
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1113)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1114' AS MUTATO,SUM(NVL(P_1114,0)) P_1114
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1114)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_112' AS MUTATO,SUM(NVL(P_112,0)) P_112
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_112)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1121' AS MUTATO,SUM(NVL(P_1121,0)) P_1121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1122' AS MUTATO,SUM(NVL(P_1122,0)) P_1122
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1122)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1123' AS MUTATO,SUM(NVL(P_1123,0)) P_1123
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1123)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_113' AS MUTATO,SUM(NVL(P_113,0)) P_113
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_113)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1131' AS MUTATO,SUM(NVL(P_1131,0)) P_1131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1132' AS MUTATO,SUM(NVL(P_1132,0)) P_1132
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1132)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_115' AS MUTATO,SUM(NVL(P_115,0)) P_115
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_115)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1151' AS MUTATO,SUM(NVL(P_1151,0)) P_1151
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1151)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1152' AS MUTATO,SUM(NVL(P_1152,0)) P_1152
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1152)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_116' AS MUTATO,SUM(NVL(P_116,0)) P_116
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_116)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
		
		

		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_12' AS MUTATO,SUM(NVL(P_12,0)) P_12
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_12)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_121' AS MUTATO,SUM(NVL(P_121,0)) P_121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1211' AS MUTATO,SUM(NVL(P_1211,0)) P_1211
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1211)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1212' AS MUTATO,SUM(NVL(P_1212,0)) P_1212
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1212)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_122' AS MUTATO,SUM(NVL(P_122,0)) P_122
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_122)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1221' AS MUTATO,SUM(NVL(P_1221,0)) P_1221
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1221)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1222' AS MUTATO,SUM(NVL(P_1222,0)) P_1222
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1222)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_13' AS MUTATO,SUM(NVL(P_13,0)) P_13
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_13)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_131' AS MUTATO,SUM(NVL(P_131,0)) P_131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1312' AS MUTATO,SUM(NVL(P_1312,0)) P_1312
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1312)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_132' AS MUTATO,SUM(NVL(P_132,0)) P_132
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_132)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1361' AS MUTATO,SUM(NVL(P_1361,0)) P_1361
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1361)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1362' AS MUTATO,SUM(NVL(P_1362,0)) P_1362
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1362)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1363' AS MUTATO,SUM(NVL(P_1363,0)) P_1363
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1363)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1364' AS MUTATO,SUM(NVL(P_1364,0)) P_1364
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1364)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1365' AS MUTATO,SUM(NVL(P_1365,0)) P_1365
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1365)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1366' AS MUTATO,SUM(NVL(P_1366,0)) P_1366
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1366)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1367' AS MUTATO,SUM(NVL(P_1367,0)) P_1367
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1367)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL

SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1368' AS MUTATO,SUM(NVL(P_1368,0)) P_1368
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1368)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL

SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_14' AS MUTATO,SUM(NVL(P_14,0)) P_14
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_14)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_15' AS MUTATO,SUM(NVL(P_15,0)) P_15
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_15)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_16' AS MUTATO,SUM(NVL(P_16,0)) P_16
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_16)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_1' AS MUTATO,SUM(NVL(P_1,0)) P_1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_21' AS MUTATO,SUM(NVL(P_21,0)) P_21
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_21)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_23' AS MUTATO,SUM(NVL(P_23,0)) P_23
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_23)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_23' AS MUTATO,SUM(NVL(P_23,0)) P_23
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_23)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_231' AS MUTATO,SUM(NVL(P_231,0)) P_231
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_231)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_232' AS MUTATO,SUM(NVL(P_232,0)) P_232
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_232)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_2321' AS MUTATO,SUM(NVL(P_2321,0)) P_2321
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_2321)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_2322' AS MUTATO,SUM(NVL(P_2322,0)) P_2322
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_2322)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_233' AS MUTATO,SUM(NVL(P_233,0)) P_233
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_233)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_2331' AS MUTATO,SUM(NVL(P_2331,0)) P_2331
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_2331)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_24' AS MUTATO,SUM(NVL(P_24,0)) P_24
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_24)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_26' AS MUTATO,SUM(NVL(P_26,0)) P_26
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_26)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_262' AS MUTATO,SUM(NVL(P_262,0)) P_262
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_262)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_27' AS MUTATO,SUM(NVL(P_27,0)) P_27
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_27)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_28' AS MUTATO,SUM(NVL(P_28,0)) P_28
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_28)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_29' AS MUTATO,SUM(NVL(P_29,0)) P_29
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_29)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_291' AS MUTATO,SUM(NVL(P_291,0)) P_291
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_291)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_292' AS MUTATO,SUM(NVL(P_292,0)) P_292
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_292)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_293' AS MUTATO,SUM(NVL(P_293,0)) P_293
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_293)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'P_2' AS MUTATO,SUM(NVL(P_2,0)) P_2
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(P_2)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_1G' AS MUTATO,SUM(NVL(B_1G,0)) B_1G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_1G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'K_1' AS MUTATO,SUM(NVL(K_1,0)) K_1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(K_1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_1N' AS MUTATO,SUM(NVL(B_1N,0)) B_1N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_1N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_211' AS MUTATO,SUM(NVL(D_211,0)) D_211
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_211)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_2111' AS MUTATO,SUM(NVL(D_2111,0)) D_2111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_2111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_212' AS MUTATO,SUM(NVL(D_212,0)) D_212
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_212)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214' AS MUTATO,SUM(NVL(D_214,0)) D_214
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214D' AS MUTATO,SUM(NVL(D_214D,0)) D_214D
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214D)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214F' AS MUTATO,SUM(NVL(D_214F,0)) D_214F
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214F)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))

UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214G_03' AS MUTATO,SUM(NVL(D_214G_03,0)) D_214G_03
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214G_03)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))		
		


UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214G1' AS MUTATO,SUM(NVL(D_214G1,0)) D_214G1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214G1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214E' AS MUTATO,SUM(NVL(D_214E,0)) D_214E
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214E)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214I73' AS MUTATO,SUM(NVL(D_214I73,0)) D_214I73
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214I73)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214I3' AS MUTATO,SUM(NVL(D_214I3,0)) D_214I3
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214I3)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214I' AS MUTATO,SUM(NVL(D_214I,0)) D_214I
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214I)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_214BA' AS MUTATO,SUM(NVL(D_214BA,0)) D_214BA
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_214BA)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_21' AS MUTATO,SUM(NVL(D_21,0)) D_21
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_21)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_312' AS MUTATO,SUM(NVL(D_312,0)) D_312
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_312)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_319' AS MUTATO,SUM(NVL(D_319,0)) D_319
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_319)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_3192' AS MUTATO,SUM(NVL(D_3192,0)) D_3192
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_3192)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_31922' AS MUTATO,SUM(NVL(D_31922,0)) D_31922
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_31922)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_31' AS MUTATO,SUM(NVL(D_31,0)) D_31
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_31)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11' AS MUTATO,SUM(NVL(D_11,0)) D_11
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_111' AS MUTATO,SUM(NVL(D_111,0)) D_111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1111' AS MUTATO,SUM(NVL(D_1111,0)) D_1111
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1111)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1112' AS MUTATO,SUM(NVL(D_1112,0)) D_1112
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1112)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11121' AS MUTATO,SUM(NVL(D_11121,0)) D_11121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11123' AS MUTATO,SUM(NVL(D_11123,0)) D_11123
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11123)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11124' AS MUTATO,SUM(NVL(D_11124,0)) D_11124
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11124)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11125' AS MUTATO,SUM(NVL(D_11125,0)) D_11125
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11125)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11126' AS MUTATO,SUM(NVL(D_11126,0)) D_11126
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11126)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11127' AS MUTATO,SUM(NVL(D_11127,0)) D_11127
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11127)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11128' AS MUTATO,SUM(NVL(D_11128,0)) D_11128
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11128)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11129' AS MUTATO,SUM(NVL(D_11129,0)) D_11129
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11129)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11130' AS MUTATO,SUM(NVL(D_11130,0)) D_11130
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11130)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_11131' AS MUTATO,SUM(NVL(D_11131,0)) D_11131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_11131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_112' AS MUTATO,SUM(NVL(D_112,0)) D_112
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_112)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1121' AS MUTATO,SUM(NVL(D_1121,0)) D_1121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1122' AS MUTATO,SUM(NVL(D_1122,0)) D_1122
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1122)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1123' AS MUTATO,SUM(NVL(D_1123,0)) D_1123
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1123)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1124' AS MUTATO,SUM(NVL(D_1124,0)) D_1124
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1124)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1125' AS MUTATO,SUM(NVL(D_1125,0)) D_1125
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1125)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1126' AS MUTATO,SUM(NVL(D_1126,0)) D_1126
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1126)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1127' AS MUTATO,SUM(NVL(D_1127,0)) D_1127
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1127)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1128' AS MUTATO,SUM(NVL(D_1128,0)) D_1128
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1128)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_12' AS MUTATO,SUM(NVL(D_12,0)) D_12
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_12)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_121' AS MUTATO,SUM(NVL(D_121,0)) D_121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1211' AS MUTATO,SUM(NVL(D_1211,0)) D_1211
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1211)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1212' AS MUTATO,SUM(NVL(D_1212,0)) D_1212
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1212)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1213' AS MUTATO,SUM(NVL(D_1213,0)) D_1213
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1213)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1214' AS MUTATO,SUM(NVL(D_1214,0)) D_1214
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1214)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1215' AS MUTATO,SUM(NVL(D_1215,0)) D_1215
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1215)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_122' AS MUTATO,SUM(NVL(D_122,0)) D_122
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_122)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1221' AS MUTATO,SUM(NVL(D_1221,0)) D_1221
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1221)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1222' AS MUTATO,SUM(NVL(D_1222,0)) D_1222
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1222)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_1' AS MUTATO,SUM(NVL(D_1,0)) D_1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29C' AS MUTATO,SUM(NVL(D_29C,0)) D_29C
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29C)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29C1' AS MUTATO,SUM(NVL(D_29C1,0)) D_29C1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29C1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29C2' AS MUTATO,SUM(NVL(D_29C2,0)) D_29C2
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29C2)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
		
		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29C6' AS MUTATO,SUM(NVL(D_29C6,0)) D_29C6
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29C6)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))	
		
		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29B1' AS MUTATO,SUM(NVL(D_29B1,0)) D_29B1
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29B1)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29B3' AS MUTATO,SUM(NVL(D_29B3,0)) D_29B3
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29B3)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29A' AS MUTATO,SUM(NVL(D_29A,0)) D_29A
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29A)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29A11' AS MUTATO,SUM(NVL(D_29A11,0)) D_29A11
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29A11)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29A12' AS MUTATO,SUM(NVL(D_29A12,0)) D_29A12
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29A12)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29A2' AS MUTATO,SUM(NVL(D_29A2,0)) D_29A2
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29A2)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_2953' AS MUTATO,SUM(NVL(D_2953,0)) D_2953
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_2953)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29E3' AS MUTATO,SUM(NVL(D_29E3,0)) D_29E3
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29E3)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_29' AS MUTATO,SUM(NVL(D_29,0)) D_29
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_29)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_391' AS MUTATO,SUM(NVL(D_391,0)) D_391
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_391)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_3911' AS MUTATO,SUM(NVL(D_3911,0)) D_3911
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_3911)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_391110' AS MUTATO,SUM(NVL(D_391110,0)) D_391110
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_391110)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))		
		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_39131' AS MUTATO,SUM(NVL(D_39131,0)) D_39131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_39131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))			
		
		
		
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_392' AS MUTATO,SUM(NVL(D_392,0)) D_392
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_392)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_3925' AS MUTATO,SUM(NVL(D_3925,0)) D_3925
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_3925)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_39251' AS MUTATO,SUM(NVL(D_39251,0)) D_39251
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_39251)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_39253' AS MUTATO,SUM(NVL(D_39253,0)) D_39253
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_39253)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_394' AS MUTATO,SUM(NVL(D_394,0)) D_394
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_394)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_39' AS MUTATO,SUM(NVL(D_39,0)) D_39
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_39)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_2G' AS MUTATO,SUM(NVL(B_2G,0)) B_2G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_2G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_2N' AS MUTATO,SUM(NVL(B_2N,0)) B_2N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_2N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
		


UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_412' AS MUTATO,SUM(NVL(D_412,0)) D_412
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_412)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4121' AS MUTATO,SUM(NVL(D_4121,0)) D_4121
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4121)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41211' AS MUTATO,SUM(NVL(D_41211,0)) D_41211
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41211)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41212' AS MUTATO,SUM(NVL(D_41212,0)) D_41212
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41212)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41213' AS MUTATO,SUM(NVL(D_41213,0)) D_41213
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41213)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_412131' AS MUTATO,SUM(NVL(D_412131,0)) D_412131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_412131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_412132' AS MUTATO,SUM(NVL(D_412132,0)) D_412132
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_412132)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4122' AS MUTATO,SUM(NVL(D_4122,0)) D_4122
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4122)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41221' AS MUTATO,SUM(NVL(D_41221,0)) D_41221
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41221)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41222' AS MUTATO,SUM(NVL(D_41222,0)) D_41222
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41222)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41223' AS MUTATO,SUM(NVL(D_41223,0)) D_41223
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41223)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_412231' AS MUTATO,SUM(NVL(D_412231,0)) D_412231
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_412231)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_412232' AS MUTATO,SUM(NVL(D_412232,0)) D_412232
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_412232)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_413' AS MUTATO,SUM(NVL(D_413,0)) D_413
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_413)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_41' AS MUTATO,SUM(NVL(D_41,0)) D_41
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_41)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_421' AS MUTATO,SUM(NVL(D_421,0)) D_421
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_421)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_422' AS MUTATO,SUM(NVL(D_422,0)) D_422
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_422)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4221' AS MUTATO,SUM(NVL(D_4221,0)) D_4221
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4221)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4222' AS MUTATO,SUM(NVL(D_4222,0)) D_4222
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4222)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4223' AS MUTATO,SUM(NVL(D_4223,0)) D_4223
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4223)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4224' AS MUTATO,SUM(NVL(D_4224,0)) D_4224
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4224)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4225' AS MUTATO,SUM(NVL(D_4225,0)) D_4225
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4225)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4226' AS MUTATO,SUM(NVL(D_4226,0)) D_4226
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4226)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_42' AS MUTATO,SUM(NVL(D_42,0)) D_42
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_42)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_43' AS MUTATO,SUM(NVL(D_43,0)) D_43
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_43)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_431' AS MUTATO,SUM(NVL(D_431,0)) D_431
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_431)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_432' AS MUTATO,SUM(NVL(D_432,0)) D_432
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_432)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_44' AS MUTATO,SUM(NVL(D_44,0)) D_44
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_44)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_441' AS MUTATO,SUM(NVL(D_441,0)) D_441
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_441)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4411' AS MUTATO,SUM(NVL(D_4411,0)) D_4411
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4411)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4412' AS MUTATO,SUM(NVL(D_4412,0)) D_4412
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4412)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4413' AS MUTATO,SUM(NVL(D_4413,0)) D_4413
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4413)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_44131' AS MUTATO,SUM(NVL(D_44131,0)) D_44131
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_44131)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_44132' AS MUTATO,SUM(NVL(D_44132,0)) D_44132
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_44132)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_442' AS MUTATO,SUM(NVL(D_442,0)) D_442
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_442)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4421' AS MUTATO,SUM(NVL(D_4421,0)) D_4421
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4421)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4422' AS MUTATO,SUM(NVL(D_4422,0)) D_4422
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4422)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4423' AS MUTATO,SUM(NVL(D_4423,0)) D_4423
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4423)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_44231' AS MUTATO,SUM(NVL(D_44231,0)) D_44231
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_44231)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_44232' AS MUTATO,SUM(NVL(D_44232,0)) D_44232
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_44232)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_45' AS MUTATO,SUM(NVL(D_45,0)) D_45
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_45)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_46' AS MUTATO,SUM(NVL(D_46,0)) D_46
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_46)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_4' AS MUTATO,SUM(NVL(D_4,0)) D_4
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_4)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_4G' AS MUTATO,SUM(NVL(B_4G,0)) B_4G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_4G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_4N' AS MUTATO,SUM(NVL(B_4N,0)) B_4N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_4N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_5G' AS MUTATO,SUM(NVL(B_5G,0)) B_5G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_5G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_5N' AS MUTATO,SUM(NVL(B_5N,0)) B_5N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_5N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_5' AS MUTATO,SUM(NVL(D_5,0)) D_5
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_5)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_51B11' AS MUTATO,SUM(NVL(D_51B11,0)) D_51B11
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_51B11)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_51B12' AS MUTATO,SUM(NVL(D_51B12,0)) D_51B12
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_51B12)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_51B13' AS MUTATO,SUM(NVL(D_51B13,0)) D_51B13
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_51B13)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_61' AS MUTATO,SUM(NVL(D_61,0)) D_61
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_61)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_611' AS MUTATO,SUM(NVL(D_611,0)) D_611
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_611)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_612' AS MUTATO,SUM(NVL(D_612,0)) D_612
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_612)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_613' AS MUTATO,SUM(NVL(D_613,0)) D_613
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_613)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_614' AS MUTATO,SUM(NVL(D_614,0)) D_614
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_614)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_61SC' AS MUTATO,SUM(NVL(D_61SC,0)) D_61SC
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_61SC)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_62' AS MUTATO,SUM(NVL(D_62,0)) D_62
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_62)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_621' AS MUTATO,SUM(NVL(D_621,0)) D_621
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_621)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_622' AS MUTATO,SUM(NVL(D_622,0)) D_622
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_622)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_623' AS MUTATO,SUM(NVL(D_623,0)) D_623
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_623)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_6' AS MUTATO,SUM(NVL(D_6,0)) D_6
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_6)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_71' AS MUTATO,SUM(NVL(D_71,0)) D_71
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_71)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_711' AS MUTATO,SUM(NVL(D_711,0)) D_711
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_711)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_712' AS MUTATO,SUM(NVL(D_712,0)) D_712
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_712)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_72' AS MUTATO,SUM(NVL(D_72,0)) D_72
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_72)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_721' AS MUTATO,SUM(NVL(D_721,0)) D_721
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_721)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_722' AS MUTATO,SUM(NVL(D_722,0)) D_722
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_722)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_75' AS MUTATO,SUM(NVL(D_75,0)) D_75
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_75)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_751' AS MUTATO,SUM(NVL(D_751,0)) D_751
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_751)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7511' AS MUTATO,SUM(NVL(D_7511,0)) D_7511
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7511)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7512' AS MUTATO,SUM(NVL(D_7512,0)) D_7512
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7512)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7513' AS MUTATO,SUM(NVL(D_7513,0)) D_7513
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7513)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7514' AS MUTATO,SUM(NVL(D_7514,0)) D_7514
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7514)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7515' AS MUTATO,SUM(NVL(D_7515,0)) D_7515
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7515)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_752' AS MUTATO,SUM(NVL(D_752,0)) D_752
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_752)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7521' AS MUTATO,SUM(NVL(D_7521,0)) D_7521
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7521)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7522' AS MUTATO,SUM(NVL(D_7522,0)) D_7522
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7522)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7523' AS MUTATO,SUM(NVL(D_7523,0)) D_7523
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7523)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7524' AS MUTATO,SUM(NVL(D_7524,0)) D_7524
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7524)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7525' AS MUTATO,SUM(NVL(D_7525,0)) D_7525
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7525)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7526' AS MUTATO,SUM(NVL(D_7526,0)) D_7526
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7526)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7527' AS MUTATO,SUM(NVL(D_7527,0)) D_7527
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7527)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_7' AS MUTATO,SUM(NVL(D_7,0)) D_7
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_7)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_6G' AS MUTATO,SUM(NVL(B_6G,0)) B_6G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_6G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_6N' AS MUTATO,SUM(NVL(B_6N,0)) B_6N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_6N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'D_8' AS MUTATO,SUM(NVL(D_8,0)) D_8
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(D_8)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_8G' AS MUTATO,SUM(NVL(B_8G,0)) B_8G
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_8G)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629))
UNION ALL
SELECT "MEV","MUTATO","16419","26492","36419","46491","46492","46499","56530","66530","76512","86512","96612","96619","96621","96622","96629","106619","106622","116491","116492","116499","116611","116612","116619","116621","116622","116629","116630","126511","136511","146512","156512","166512","176511","176512","186491","186619","196530","506420","506492","506499","516420","516492","526499","526612","526619","526621","526622","526629","536499","536612","536619","536621","536622","536629" FROM(
SELECT MEV,SEMA_TIPUS || M0581 ST,'B_8N' AS MUTATO,SUM(NVL(B_8N,0)) B_8N
FROM PP23_W_W_ELOZETES_V01_T
GROUP BY MEV, SEMA_TIPUS, SEMA_TIPUS || M0581
ORDER BY M0581
)PIVOT( MAX(B_8N)
        FOR ST IN (16419,26492,36419,46491,46492,46499,56530,66530,76512,86512,96612,96619,96621,96622,96629,106619,106622,116491,116492,116499,116611,116612,116619,116621,116622,116629,116630,126511,136511,146512,156512,166512,176511,176512,186491,186619,196530,506420,506492,506499,516420,516492,526499,526612,526619,526621,526622,526629,536499,536612,536619,536621,536622,536629));

grant select on PP23.PP23_W_W_ELOZ_V01_PIVOT_T TO PP_SELECT;	

select * from PP23.PP23_W_W_ELOZ_V01_PIVOT_T;


select 'eltérés' as "idõszak", t1.m003, t1.* from (select * from PP23.PP23_W_W_VEGLEGES_V01_T where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)--SEMA_TIPUS = '10'
minus
select * from PP23.PP23_W_W_VEGLEGES_V01_0207 t4 where t4.m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)) t1 --SEMA_TIPUS = '10') t1--21
union
select 'új' as "idõszak", t2.m003, t2.* from PP23.PP23_W_W_VEGLEGES_V01_T t2 where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)
union
select 'régi' as "idõszak", t3.m003, t3.* from PP23.PP23_W_W_VEGLEGES_V01_0207 t3 where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)
order by 2;

select 'eltérés' as "idõszak", t1.m003, t1.* - t4.* from (select * from PP23.PP23_W_W_VEGLEGES_V01_T where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632);--SEMA_TIPUS = '10'

select 'eltérés' as "idõszak", t1.M003, t1.P_11 - t4.P_11, 	t1.P_118 - t4.P_118, 	t1.P_119 - t4.P_119, 	t1.P_111 - t4.P_111, 	t1.P_1111 - t4.P_1111, 	t1.P_11111 - t4.P_11111, 	t1.P_11112 - t4.P_11112, 	t1.P_1112 - t4.P_1112, 	t1.P_1113 - t4.P_1113, 	t1.P_1114 - t4.P_1114, 	t1.P_112 - t4.P_112, 	t1.P_1121 - t4.P_1121, 	t1.P_1122 - t4.P_1122, 	t1.P_1123 - t4.P_1123, 	t1.P_113 - t4.P_113, 	t1.P_1131 - t4.P_1131, 	t1.P_1132 - t4.P_1132, 	t1.P_115 - t4.P_115, 	t1.P_1151 - t4.P_1151, 	t1.P_1152 - t4.P_1152, 	t1.P_116 - t4.P_116, 	t1.P_12 - t4.P_12, 	t1.P_121 - t4.P_121, 	t1.P_1211 - t4.P_1211, 	t1.P_1212 - t4.P_1212, 	t1.P_122 - t4.P_122, 	t1.P_1221 - t4.P_1221, 	t1.P_1222 - t4.P_1222, 	t1.P_13 - t4.P_13, 	t1.P_131 - t4.P_131, 	t1.P_1312 - t4.P_1312, 	t1.P_132 - t4.P_132, 	t1.P_1361 - t4.P_1361, 	t1.P_1362 - t4.P_1362, 	t1.P_1363 - t4.P_1363, 	t1.P_1364 - t4.P_1364, 	t1.P_1365 - t4.P_1365, 	t1.P_1366 - t4.P_1366, 	t1.P_1367 - t4.P_1367, 	t1.P_14 - t4.P_14, 	t1.P_15 - t4.P_15, 	t1.P_16 - t4.P_16, 	t1.P_1 - t4.P_1, 	t1.P_21 - t4.P_21, 	t1.P_23 - t4.P_23, 	t1.P_23 - t4.P_23, 	t1.P_231 - t4.P_231, 	t1.P_232 - t4.P_232, 	t1.P_2321 - t4.P_2321, 	t1.P_2322 - t4.P_2322, 	t1.P_233 - t4.P_233, 	t1.P_2331 - t4.P_2331, 	t1.P_24 - t4.P_24, 	t1.P_26 - t4.P_26, 	t1.P_262 - t4.P_262, 	t1.P_27 - t4.P_27, 	t1.P_28 - t4.P_28, 	t1.P_29 - t4.P_29, 	t1.P_291 - t4.P_291, 	t1.P_292 - t4.P_292, 	t1.P_293 - t4.P_293, 	t1.P_2 - t4.P_2, 	t1.B_1G - t4.B_1G, 	t1.K_1 - t4.K_1, 	t1.B_1N - t4.B_1N, 	t1.D_211 - t4.D_211, 	t1.D_2111 - t4.D_2111, 	t1.D_212 - t4.D_212, 	t1.D_214 - t4.D_214, 	t1.D_214D - t4.D_214D, 	t1.D_214F - t4.D_214F, 	t1.D_214G1 - t4.D_214G1, 	t1.D_214E - t4.D_214E, 	t1.D_214I73 - t4.D_214I73, 	t1.D_214I3 - t4.D_214I3, 	t1.D_214I - t4.D_214I, 	t1.D_214BA - t4.D_214BA, 	t1.D_21 - t4.D_21, 	t1.D_312 - t4.D_312, 	t1.D_319 - t4.D_319, 	t1.D_3192 - t4.D_3192, 	t1.D_31922 - t4.D_31922, 	t1.D_31 - t4.D_31, 	t1.D_11 - t4.D_11, 	t1.D_111 - t4.D_111, 	t1.D_1111 - t4.D_1111, 	t1.D_1112 - t4.D_1112, 	t1.D_11121 - t4.D_11121, 	t1.D_11123 - t4.D_11123, 	t1.D_11124 - t4.D_11124, 	t1.D_11125 - t4.D_11125, 	t1.D_11126 - t4.D_11126, 	t1.D_11127 - t4.D_11127, 	t1.D_11128 - t4.D_11128, 	t1.D_11129 - t4.D_11129, 	t1.D_11130 - t4.D_11130, 	t1.D_11131 - t4.D_11131, 	t1.D_112 - t4.D_112, 	t1.D_1121 - t4.D_1121, 	t1.D_1122 - t4.D_1122, 	t1.D_1123 - t4.D_1123, 	t1.D_1124 - t4.D_1124, 	t1.D_1125 - t4.D_1125, 	t1.D_1126 - t4.D_1126, 	t1.D_1127 - t4.D_1127, 	t1.D_1128 - t4.D_1128, 	t1.D_12 - t4.D_12, 	t1.D_121 - t4.D_121, 	t1.D_1211 - t4.D_1211, 	t1.D_1212 - t4.D_1212, 	t1.D_1213 - t4.D_1213, 	t1.D_1214 - t4.D_1214, 	t1.D_1215 - t4.D_1215, 	t1.D_122 - t4.D_122, 	t1.D_1221 - t4.D_1221, 	t1.D_1222 - t4.D_1222, 	t1.D_1 - t4.D_1, 	t1.D_29C - t4.D_29C, 	t1.D_29C1 - t4.D_29C1, 	t1.D_29C2 - t4.D_29C2, 	t1.D_29B1 - t4.D_29B1, 	t1.D_29B3 - t4.D_29B3, 	t1.D_29A - t4.D_29A, 	t1.D_29A11 - t4.D_29A11, 	t1.D_29A12 - t4.D_29A12, 	t1.D_29A2 - t4.D_29A2, 	t1.D_2953 - t4.D_2953, 	t1.D_29E3 - t4.D_29E3, 	t1.D_29 - t4.D_29, 	t1.D_391 - t4.D_391, 	t1.D_3911 - t4.D_3911, 	t1.D_392 - t4.D_392, 	t1.D_3925 - t4.D_3925, 	t1.D_39251 - t4.D_39251, 	t1.D_39253 - t4.D_39253, 	t1.D_394 - t4.D_394, 	t1.D_39 - t4.D_39, 	t1.B_2G - t4.B_2G, 	t1.B_2N - t4.B_2N, 	t1.D_412 - t4.D_412, 	t1.D_4121 - t4.D_4121, 	t1.D_41211 - t4.D_41211, 	t1.D_41212 - t4.D_41212, 	t1.D_41213 - t4.D_41213, 	t1.D_412131 - t4.D_412131, 	t1.D_412132 - t4.D_412132, 	t1.D_4122 - t4.D_4122, 	t1.D_41221 - t4.D_41221, 	t1.D_41222 - t4.D_41222, 	t1.D_41223 - t4.D_41223, 	t1.D_412231 - t4.D_412231, 	t1.D_412232 - t4.D_412232, 	t1.D_413 - t4.D_413, 	t1.D_41 - t4.D_41, 	t1.D_421 - t4.D_421, 	t1.D_422 - t4.D_422, 	t1.D_4221 - t4.D_4221, 	t1.D_4222 - t4.D_4222, 	t1.D_4223 - t4.D_4223, 	t1.D_4224 - t4.D_4224, 	t1.D_4225 - t4.D_4225, 	t1.D_4226 - t4.D_4226, 	t1.D_42 - t4.D_42, 	t1.D_43 - t4.D_43, 	t1.D_431 - t4.D_431, 	t1.D_432 - t4.D_432, 	t1.D_44 - t4.D_44, 	t1.D_441 - t4.D_441, 	t1.D_4411 - t4.D_4411, 	t1.D_4412 - t4.D_4412, 	t1.D_4413 - t4.D_4413, 	t1.D_44131 - t4.D_44131, 	t1.D_44132 - t4.D_44132, 	t1.D_442 - t4.D_442, 	t1.D_4421 - t4.D_4421, 	t1.D_4422 - t4.D_4422, 	t1.D_4423 - t4.D_4423, 	t1.D_44231 - t4.D_44231, 	t1.D_44232 - t4.D_44232, 	t1.D_45 - t4.D_45, 	t1.D_46 - t4.D_46, 	t1.D_4 - t4.D_4, 	t1.B_4G - t4.B_4G, 	t1.B_4N - t4.B_4N, 	t1.B_5G - t4.B_5G, 	t1.B_5N - t4.B_5N, 	t1.D_5 - t4.D_5, 	t1.D_51B11 - t4.D_51B11, 	t1.D_51B12 - t4.D_51B12, 	t1.D_51B13 - t4.D_51B13, 	t1.D_61 - t4.D_61, 	t1.D_611 - t4.D_611, 	t1.D_612 - t4.D_612, 	t1.D_613 - t4.D_613, 	t1.D_614 - t4.D_614, 	t1.D_61SC - t4.D_61SC, 	t1.D_62 - t4.D_62, 	t1.D_621 - t4.D_621, 	t1.D_622 - t4.D_622, 	t1.D_623 - t4.D_623, 	t1.D_6 - t4.D_6, 	t1.D_71 - t4.D_71, 	t1.D_711 - t4.D_711, 	t1.D_712 - t4.D_712, 	t1.D_72 - t4.D_72, 	t1.D_721 - t4.D_721, 	t1.D_722 - t4.D_722, 	t1.D_75 - t4.D_75, 	t1.D_751 - t4.D_751, 	t1.D_7511 - t4.D_7511, 	t1.D_7512 - t4.D_7512, 	t1.D_7513 - t4.D_7513, 	t1.D_7514 - t4.D_7514, 	t1.D_7515 - t4.D_7515, 	t1.D_752 - t4.D_752, 	t1.D_7521 - t4.D_7521, 	t1.D_7522 - t4.D_7522, 	t1.D_7523 - t4.D_7523, 	t1.D_7524 - t4.D_7524, 	t1.D_7525 - t4.D_7525, 	t1.D_7526 - t4.D_7526, 	t1.D_7527 - t4.D_7527, 	t1.D_7 - t4.D_7, 	t1.B_6G - t4.B_6G, 	t1.B_6N - t4.B_6N, 	t1.D_8 - t4.D_8, 	t1.B_8G - t4.B_8G, 	t1.B_8N - t4.B_8N, 	t1.P_117 - t4.P_117, 	t1.D_29C6 - t4.D_29C6, 	t1.D_39131 - t4.D_39131, 	t1.D_391110 - t4.D_391110, 	t1.D_214G_03 - t4.D_214G_03, 	t1.P_1368 - t4.P_1368
from PP23.PP23_W_W_VEGLEGES_V01_T t1, PP23.PP23_W_W_VEGLEGES_V01_0207 t4 where t1.M003 = t4.M003 and t1.M003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632);

select 'új' as "idõszak", t2.m003, t2.* from PP23.PP23_W_W_VEGLEGES_V01_T t2 where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)
union
select 'régi' as "idõszak", t3.m003, t3.* from PP23.PP23_W_W_VEGLEGES_V01_0207 t3 where m003 in (11933708,11939845,12265158,12541456,13967176,13987569,14142826,14572223,14681761,14796470,22788722,23341889,23483671,23965450,24216151,25289442,26553632)
order by 2;





select * from PP23.KOZADAT_KETTOS_V01_T;--5070
select * from PP23.KUL_MUKTOKE_V01_T;--5070
select * from PP23.M_EVA_V01_ELOZETES_T;--még nem létezik
select * from PP23.PP23_BIZT_FIOK_TASA_V01_T;--11
select * from PP23.PP23_BIZT_TASA_V01_T;--23
select * from PP23.PP23_BIZT_V01_T;--23
select * from PP23.PP23_EVA_2371_V01_T;--0
select * from PP23.PP23_FISIM_PSZAF_V01_T;--193
select * from PP23.PP23_FISPSZ_V01_T;--193
select * from PP23.PP23_FISIMT_TASA_V01_T;--224
select * from PP23.PP23_HIT_TASA_V01_T;--37
select * from PP23.PP23_KETTOSOK_R00_V01_T;--4937
select * from PP23.PP23_KETT_R00_KIEG_V01_T;--még nem létezik
select * from PP23.PP23_KETTOSOK_R01_V01_T;--188
select * from PP23.PP23_KETTOSOK_R02_V01_T;--7
select * from PP23.PP23_KETTOSOK_V00_E_T;--4940
select * from PP23.PP23_KETTOSOK_V00_KIEG_E_T;--még nem létezik
select * from PP23.PP23_KETTOSOK_V01_E_T;--189
select * from PP23.PP23_W_W_ELOZ_V01_PIVOT_T;--még nem létezik