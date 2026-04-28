-- =========================================
-- BigQuery Refresh: Prod to Dev
-- =========================================

-- DCM
TRUNCATE TABLE `speedy-cargo-400414.pds__dcm__all.p_nexus_api_dcm`;
INSERT INTO `speedy-cargo-400414.pds__dcm__all.p_nexus_api_dcm`
SELECT * FROM `us-pricingtool.pds__dcm__all.p_nexus_api_dcm`;

-- Amazon
TRUNCATE TABLE `speedy-cargo-400414.pds__amazon__all.p_nexus_api_amazon`;
INSERT INTO `speedy-cargo-400414.pds__amazon__all.p_nexus_api_amazon`
SELECT * FROM `us-pricingtool.pds__amazon__all.p_nexus_api_amazon`;

-- DV360 Standard
TRUNCATE TABLE `speedy-cargo-400414.pds__dv360__all.p_nexus_api_dv360_standard`;
INSERT INTO `speedy-cargo-400414.pds__dv360__all.p_nexus_api_dv360_standard`
SELECT * FROM `us-pricingtool.pds__dv360__all.p_nexus_api_dv360_standard`;

-- DV360 YouTube
TRUNCATE TABLE `speedy-cargo-400414.pds__dv360__all.p_nexus_api_dv360_youtube`;
INSERT INTO `speedy-cargo-400414.pds__dv360__all.p_nexus_api_dv360_youtube`
SELECT * FROM `us-pricingtool.pds__dv360__all.p_nexus_api_dv360_youtube`;

-- IAS
TRUNCATE TABLE `speedy-cargo-400414.pds__ias__all.p_nexus_api_ias`;
INSERT INTO `speedy-cargo-400414.pds__ias__all.p_nexus_api_ias`
SELECT * FROM `us-pricingtool.pds__ias__all.p_nexus_api_ias`;

-- Quantcast
TRUNCATE TABLE `speedy-cargo-400414.pds__quantcast__all.p_nexus_api_quantcast`;
INSERT INTO `speedy-cargo-400414.pds__quantcast__all.p_nexus_api_quantcast`
SELECT * FROM `us-pricingtool.pds__quantcast__all.p_nexus_api_quantcast`;

-- TTD
TRUNCATE TABLE `speedy-cargo-400414.pds__ttd__all.p_nexus_api_ttd_standard`;
INSERT INTO `speedy-cargo-400414.pds__ttd__all.p_nexus_api_ttd_standard`
SELECT * FROM `us-pricingtool.pds__ttd__all.p_nexus_api_ttd_standard`;

-- Viant
TRUNCATE TABLE `speedy-cargo-400414.pds__viant__all.p_nexus_api_viant`;
INSERT INTO `speedy-cargo-400414.pds__viant__all.p_nexus_api_viant`
SELECT * FROM `us-pricingtool.pds__viant__all.p_nexus_api_viant`;

-- Xandr
TRUNCATE TABLE `speedy-cargo-400414.pds__xandr__all.p_nexus_api_xandr`;
INSERT INTO `speedy-cargo-400414.pds__xandr__all.p_nexus_api_xandr`
SELECT * FROM `us-pricingtool.pds__xandr__all.p_nexus_api_xandr`;

-- Yahoo
TRUNCATE TABLE `speedy-cargo-400414.pds__yahoo__all.p_nexus_api_yahoo`;
INSERT INTO `speedy-cargo-400414.pds__yahoo__all.p_nexus_api_yahoo`
SELECT * FROM `us-pricingtool.pds__yahoo__all.p_nexus_api_yahoo`;

-- Zeta
TRUNCATE TABLE `speedy-cargo-400414.pds__zeta__all.p_nexus_api_zeta`;
INSERT INTO `speedy-cargo-400414.pds__zeta__all.p_nexus_api_zeta`
SELECT * FROM `us-pricingtool.pds__zeta__all.p_nexus_api_zeta`;

-- DoubleVerify
TRUNCATE TABLE `speedy-cargo-400414.pds__doubleverify__all.p_nexus_api_doubleverify`;
INSERT INTO `speedy-cargo-400414.pds__doubleverify__all.p_nexus_api_doubleverify`
SELECT * FROM `us-pricingtool.pds__doubleverify__all.p_nexus_api_doubleverify`;

-- Sizmek
TRUNCATE TABLE `speedy-cargo-400414.pds__sizmek__all.p_nexus_api_sizmek`;
INSERT INTO `speedy-cargo-400414.pds__sizmek__all.p_nexus_api_sizmek`
SELECT * FROM `us-pricingtool.pds__sizmek__all.p_nexus_api_sizmek`;

-- MIQ
TRUNCATE TABLE `speedy-cargo-400414.pds__miq__all.p_nexus_api_miq`;
INSERT INTO `speedy-cargo-400414.pds__miq__all.p_nexus_api_miq`
SELECT * FROM `us-pricingtool.pds__miq__all.p_nexus_api_miq`;

-- Salesforce
TRUNCATE TABLE `speedy-cargo-400414.pds__salesforce__all.p_nexus_api_salesforce`;
INSERT INTO `speedy-cargo-400414.pds__salesforce__all.p_nexus_api_salesforce`
SELECT * FROM `us-pricingtool.pds__salesforce__all.p_nexus_api_salesforce`;

-- =========================================
-- Snowflake Refresh: Prod to Dev
-- =========================================

-- DCM
TRUNCATE TABLE TRAINING.P_DCM.P_NEXUS_DCM;
INSERT INTO TRAINING.P_DCM.P_NEXUS_DCM
SELECT * FROM NEXUS_DATAPLATFORM.P_DCM.P_NEXUS_DCM;

-- Amazon
TRUNCATE TABLE TRAINING.P_AMAZON.P_NEXUS_AMAZON;
INSERT INTO TRAINING.P_AMAZON.P_NEXUS_AMAZON
SELECT * FROM NEXUS_DATAPLATFORM.P_AMAZON.P_NEXUS_AMAZON;

-- DV360 Standard
TRUNCATE TABLE TRAINING.P_DV360.P_NEXUS_DV360_STANDARD;
INSERT INTO TRAINING.P_DV360.P_NEXUS_DV360_STANDARD
SELECT * FROM NEXUS_DATAPLATFORM.P_DV360.P_NEXUS_DV360_STANDARD;

-- DV360 YouTube
TRUNCATE TABLE TRAINING.P_DV360.P_NEXUS_DV360_YOUTUBE;
INSERT INTO TRAINING.P_DV360.P_NEXUS_DV360_YOUTUBE
SELECT * FROM NEXUS_DATAPLATFORM.P_DV360.P_NEXUS_DV360_YOUTUBE;

-- IAS
TRUNCATE TABLE TRAINING.P_IAS.P_NEXUS_IAS;
INSERT INTO TRAINING.P_IAS.P_NEXUS_IAS
SELECT * FROM NEXUS_DATAPLATFORM.P_IAS.P_NEXUS_IAS;

-- Quantcast
TRUNCATE TABLE TRAINING.P_QUANTCAST.P_NEXUS_QUANTCAST;
INSERT INTO TRAINING.P_QUANTCAST.P_NEXUS_QUANTCAST
SELECT * FROM NEXUS_DATAPLATFORM.P_QUANTCAST.P_NEXUS_QUANTCAST;

-- TTD
TRUNCATE TABLE TRAINING.P_TTD.P_NEXUS_TTD;
INSERT INTO TRAINING.P_TTD.P_NEXUS_TTD
SELECT * FROM NEXUS_DATAPLATFORM.P_TTD.P_NEXUS_TTD;

-- Viant
TRUNCATE TABLE TRAINING.P_VIANT.P_NEXUS_VIANT;
INSERT INTO TRAINING.P_VIANT.P_NEXUS_VIANT
SELECT * FROM NEXUS_DATAPLATFORM.P_VIANT.P_NEXUS_VIANT;

-- Xandr
TRUNCATE TABLE TRAINING.P_XANDR.P_NEXUS_XANDR;
INSERT INTO TRAINING.P_XANDR.P_NEXUS_XANDR
SELECT * FROM NEXUS_DATAPLATFORM.P_XANDR.P_NEXUS_XANDR;

-- Yahoo
TRUNCATE TABLE TRAINING.P_YAHOO.P_NEXUS_YAHOO;
INSERT INTO TRAINING.P_YAHOO.P_NEXUS_YAHOO
SELECT * FROM NEXUS_DATAPLATFORM.P_YAHOO.P_NEXUS_YAHOO;

-- Zeta
TRUNCATE TABLE TRAINING.P_ZETA.P_NEXUS_ZETA;
INSERT INTO TRAINING.P_ZETA.P_NEXUS_ZETA
SELECT * FROM NEXUS_DATAPLATFORM.P_ZETA.P_NEXUS_ZETA;

-- DoubleVerify
TRUNCATE TABLE TRAINING.P_DOUBLEVERIFY.P_NEXUS_DOUBLEVERIFY;
INSERT INTO TRAINING.P_DOUBLEVERIFY.P_NEXUS_DOUBLEVERIFY
SELECT * FROM NEXUS_DATAPLATFORM.P_DOUBLEVERIFY.P_NEXUS_DOUBLEVERIFY;

-- Sizmek
TRUNCATE TABLE TRAINING.P_SIZMEK.P_NEXUS_SIZMEK;
INSERT INTO TRAINING.P_SIZMEK.P_NEXUS_SIZMEK
SELECT * FROM NEXUS_DATAPLATFORM.P_SIZMEK.P_NEXUS_SIZMEK;

-- MIQ
TRUNCATE TABLE TRAINING.P_MIQ.P_NEXUS_MIQ;
INSERT INTO TRAINING.P_MIQ.P_NEXUS_MIQ
SELECT * FROM NEXUS_DATAPLATFORM.P_MIQ.P_NEXUS_MIQ;

-- Salesforce
TRUNCATE TABLE TRAINING.P_SALESFORCE.P_NEXUS_SALESFORCE;
INSERT INTO TRAINING.P_SALESFORCE.P_NEXUS_SALESFORCE
SELECT * FROM NEXUS_DATAPLATFORM.P_SALESFORCE.P_NEXUS_SALESFORCE;
