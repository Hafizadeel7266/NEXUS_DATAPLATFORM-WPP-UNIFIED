--------------------------------BQ_Counts-----------------------------------------

DECLARE project_id STRING DEFAULT @@project_id;
DECLARE sql STRING;

SET sql = (
  SELECT STRING_AGG(
    FORMAT("""
      SELECT 
        '%s' AS project_id,
        '%s' AS dataset_name, 
        '%s' AS table_name, 
        COUNT(*) AS row_count
      FROM `%s.%s.%s`
    """,
      project_id,
      dataset_name,
      table_name,
      project_id,
      dataset_name,
      table_name
    )
  , " UNION ALL ")
  FROM (
    SELECT 'pds__viant__all' AS dataset_name, 'p_nexus_api_viant' AS table_name UNION ALL
    SELECT 'pds__sizmek__all', 'p_nexus_api_sizmek' UNION ALL
    SELECT 'pds__ttd__all', 'p_nexus_api_ttd_standard' UNION ALL
    SELECT 'pds__dv360__all', 'p_nexus_api_dv360_standard' UNION ALL
    SELECT 'pds__dv360__all', 'p_nexus_api_dv360_youtube' UNION ALL
    SELECT 'pds__yahoo__all', 'p_nexus_api_yahoo' UNION ALL
    SELECT 'pds__doubleverify__all', 'p_nexus_api_doubleverify' UNION ALL
    SELECT 'pds__zeta__all', 'p_nexus_api_zeta' UNION ALL
    SELECT 'pds__dcm__all', 'p_nexus_api_dcm' UNION ALL
    SELECT 'pds__amazon__all', 'p_nexus_api_amazon' UNION ALL
    SELECT 'pds__ias__all', 'p_nexus_api_ias' UNION ALL
    SELECT 'pds__xandr__all', 'p_nexus_api_xandr' UNION ALL
    SELECT 'pds__quantcast__all', 'p_nexus_api_quantcast' UNION ALL
    SELECT 'pds__miq__all', 'p_nexus_api_miq' UNION ALL
    SELECT 'pds__salesforce__all', 'p_nexus_api_salesforce'
  )
);

SET sql = CONCAT(sql, " ORDER BY 1, 2, 3");

EXECUTE IMMEDIATE sql;


--------------------------------Snowflake_Counts-----------------------------------------

SELECT 'P_AMAZON' AS schema_name, 'P_NEXUS_AMAZON' AS table_name, COUNT(*) AS row_count
FROM P_AMAZON.P_NEXUS_AMAZON

UNION ALL
SELECT 'P_DCM', 'P_NEXUS_DCM', COUNT(*)
FROM P_DCM.P_NEXUS_DCM

UNION ALL
SELECT 'P_DOUBLEVERIFY', 'P_NEXUS_DOUBLEVERIFY', COUNT(*)
FROM P_DOUBLEVERIFY.P_NEXUS_DOUBLEVERIFY

UNION ALL
SELECT 'P_DV360', 'P_NEXUS_DV360_STANDARD', COUNT(*)
FROM P_DV360.P_NEXUS_DV360_STANDARD

UNION ALL
SELECT 'P_DV360', 'P_NEXUS_DV360_YOUTUBE', COUNT(*)
FROM P_DV360.P_NEXUS_DV360_YOUTUBE

UNION ALL
SELECT 'P_IAS', 'P_NEXUS_IAS', COUNT(*)
FROM P_IAS.P_NEXUS_IAS

UNION ALL
SELECT 'P_MIQ', 'P_NEXUS_MIQ', COUNT(*)
FROM P_MIQ.P_NEXUS_MIQ

UNION ALL
SELECT 'P_QUANTCAST', 'P_NEXUS_QUANTCAST', COUNT(*)
FROM P_QUANTCAST.P_NEXUS_QUANTCAST

UNION ALL
SELECT 'P_SALESFORCE', 'P_NEXUS_SALESFORCE', COUNT(*)
FROM P_SALESFORCE.P_NEXUS_SALESFORCE

UNION ALL
SELECT 'P_SIZMEK', 'P_NEXUS_SIZMEK', COUNT(*)
FROM P_SIZMEK.P_NEXUS_SIZMEK

UNION ALL
SELECT 'P_TTD', 'P_NEXUS_TTD', COUNT(*)
FROM P_TTD.P_NEXUS_TTD

UNION ALL
SELECT 'P_VIANT', 'P_NEXUS_VIANT', COUNT(*)
FROM P_VIANT.P_NEXUS_VIANT

UNION ALL
SELECT 'P_XANDR', 'P_NEXUS_XANDR', COUNT(*)
FROM P_XANDR.P_NEXUS_XANDR

UNION ALL
SELECT 'P_YAHOO', 'P_NEXUS_YAHOO', COUNT(*)
FROM P_YAHOO.P_NEXUS_YAHOO

UNION ALL
SELECT 'P_ZETA', 'P_NEXUS_ZETA', COUNT(*)
FROM P_ZETA.P_NEXUS_ZETA

ORDER BY 1,2;
