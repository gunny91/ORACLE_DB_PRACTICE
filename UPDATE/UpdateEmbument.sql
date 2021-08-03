--1.업데이트 대상 추리기!!!!
-- 2. test
-- 그리고 rollback
--건수 확인 중요!

--UPDATE  EMBUMENT
--       SET KOR_DESC = ( SELECT m.KOR_DESC FROM tempembument t ,TEMBUMENT m  WHERE t.menu_id=m.menu_ID(+) )
--
--;

select *
  from EMBUMENT
where (BUSINESS_TYP, MENU_CD) in (
SELECT BUSINESS_TYP, MENU_CD
   FROM TEMBUMENT m
 )
;


select *
  from EMBUMENT e
where exists (
SELECT BUSINESS_TYP, MENU_CD
   FROM TEMBUMENT m
 where  m.BUSINESS_TYP = e.BUSINESS_TYP
and        m.MENU_CD        = e.MENU_CD
 )
;

update tempembument
       set business_typ ='PH';

select * from embument where business_typ='PH';


SELECT *
  FROM HCOM.HSFGDRMT
 WHERE CAT_SEQ = '494'
   AND LC_ID = '1041';
  -- AND KOR_DESC IS NOT NULL;
--full name 에다가 KOR_DESC update

-- select로 업데이트할 갯수 확인하기!
--UPDATE HSFGDRMTl'/;
--        SET  FULL_NAME = KOR_DESC
--        ,SHORT_NAME = KOR_DESC
--        ,ALIAS_NAME = KOR_DESC
--     WHERE CAT_SEQ = '494'
--   AND LC_ID = '1041'
--   AND KOR_DESC IS NOT NULL;
--
--UPDATE HSFGDRMT
--      SET KOR_DESC =''
--         WHERE CAT_SEQ = '494'
--   AND LC_ID = '1041'
--  -- AND KOR_DESC IS NOT NULL;
--;
  UPDATE HSFGDRMT
      SET KOR_DESC = ''
 WHERE CAT_SEQ = '494'
   AND LC_ID = '1041'
   AND KOR_DESC IS NOT NULL;
--

--update embument using exsits
SELECT *
  FROM EMBUMENT
WHERE (BUSINESS_TYP, MENU_CD) IN (
SELECT BUSINESS_TYP, MENU_CD
   FROM TEMBUMENT M
 )
;
SELECT BUSINESS_TYP,MENU_ID, MENU_NM,MENU_NM_ENG, KOR_DESC,MENU_CD FROM EMBUMENT WHERE BUSINESS_TYP='PH';

UPDATE EMBUMENT mmm
        SET KOR_DESC = (SELECT Mm.KOR_DESC
                                         FROM TEMBUMENT mm
                                      WHERE 1=1
                                           AND  mmm.BUSINESS_TYP  = mm.BUSINESS_TYP
                                           AND  mmm.menu_cd = mm.menu_Cd
                                      )
  where (BUSINESS_TYP, MENU_CD) IN  (SELECT BUSINESS_TYP, MENU_CD
                                         FROM TEMBUMENT mm)


;
select * from embument WHERE KOR_DESC is not null;


------PH	PH	205129	PH	薬剤部	薬剤部		MS	Y	3	HIS.MS.EC.CS.MU.UI	MSMain	EMRFile06/COMMON/IMAGE/MenuICON/ETC/MYPAGE/PH_MAIN.png																					Y																						약제
------DR	DR_MEDREC_CSFM_SaveConsentFormManagement	264984	DR_MEDREC_CSFM_SaveConsentFormManagement	文書ファイル管理	文書ファイル管理	N	DR_MEDREC_CSFM	Y	1	HIS.MC.DR.RM.OC.UI	/SaveConsentFormManagement.xaml	EMRFile06/COMMON/IMAGE/MenuICON/MC/SaveConsentFormManagement.png		N	POPUP						N		N										Y														/EMRFILE05/BusinessGuide/3/2014_7_28_C8037/ecab949a-0dd5-440d-81bd-7311247952fe.doc	/EMRFILE05/BusinessGuide/3/2014_7_28_C8037/50da47cf-c6fd-4a81-aa76-395302cd822f.pdf		Y	GBEST				문서파일 관리
------DR	DR_MEDREC_CSFM_SelectConsentFormAskPrinting	264985	DR_MEDREC_CSFM_SelectConsentFormAskPrinting	文書ファイル出力	文書ファイル出力	N	DR_MEDREC_CSFM	Y	2	HIS.MC.DR.RM.OC.UI	/SelectConsentFormAskPrinting.xaml	EMRFile06/COMMON/IMAGE/MenuICON/MC/SelectConsentFormAskPrinting.png		N	POPUP						N		N										Y														/EMRFILE05/BusinessGuide/3/2014_7_28_C8037/9d3fcbfd-9e2a-48de-b86d-dd666f3dffb3.doc	/EMRFILE05/BusinessGuide/3/2014_7_28_C8037/11b9610b-6c6f-458b-a7df-7b15c8e64086.pdf		Y	GBEST				문서파일 출력
------DR	DR_MEDORD_PT_MngReMedicalExaminationReservationMng	264854	DR_MEDORD_PT_MngReMedicalExaminationReservationMng	予約なし患者	再診予約管理_看護師	N	DR_MEDORD_PT	Y	6	HIS.PA.AC.PE.AP.UI	/MngReMedicalExaminationReservationMng.xaml	EMRFile06/COMMON/IMAGE/MenuICON/PA/MngReMedicalExaminationReservationMng.png		N	POPUP						N	50;80;1840;850	N										Y																						재진예약관리
------DR	DR_USRCONFIG_ORDER_SaveAntibioticAgentManagement	232371	DR_USRCONFIG_ORDER_SaveAntibioticAgentManagement	Antibiotics guide	Antibiotics guide	N	DR_USRCONFIG_ORDER	Y	2	HIS.MC.DM.OR.AN.UI	/SaveAntibioticAgentManagement.xaml	EMRFile06/COMMON/IMAGE/MenuICON/MC/SaveAntibioticAgentManagement.png		N	POPUP						N		N										N																						항생제 관리

