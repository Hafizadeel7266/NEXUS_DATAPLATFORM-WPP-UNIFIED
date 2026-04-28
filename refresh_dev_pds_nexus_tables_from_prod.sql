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
