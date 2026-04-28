-- =========================================
-- BigQuery
-- =========================================
DECLARE sql STRING;

SET sql = (
  SELECT STRING_AGG(
    FORMAT("""
      SELECT '%s' AS dataset_name, table_name
      FROM `speedy-cargo-400414.%s.INFORMATION_SCHEMA.TABLES`
      WHERE table_name IN (
        'p_nexus_api_amazon',
        'p_nexus_api_dcm',
        'p_nexus_api_doubleverify',
        'p_nexus_api_dv360_standard',
        'p_nexus_api_dv360_youtube',
        'p_nexus_api_ias',
        'p_nexus_api_quantcast',
        'p_nexus_api_ttd_standard',
        'p_nexus_api_viant',
        'p_nexus_api_xandr',
        'p_nexus_api_yahoo',
        'p_nexus_api_zeta',
        'p_nexus_api_sizmek'
      )
    """, schema_name, schema_name)
  , " UNION ALL ")
  FROM `speedy-cargo-400414.INFORMATION_SCHEMA.SCHEMATA`
  WHERE schema_name LIKE '%pds%'
);

EXECUTE IMMEDIATE sql;



-- =========================================
-- Snowflake 
-- =========================================
SELECT
    table_schema AS schema_name,
    table_name
FROM information_schema.tables
WHERE UPPER(table_name) IN (
    'P_NEXUS_AMAZON',
    'P_NEXUS_DCM',
    'P_NEXUS_DOUBLEVERIFY',
    'P_NEXUS_DV360_STANDARD',
    'P_NEXUS_DV360_YOUTUBE',
    'P_NEXUS_IAS',
    'P_NEXUS_MIQ',
    'P_NEXUS_QUANTCAST',
    'P_NEXUS_SALESFORCE',
    'P_NEXUS_SIZMEK',
    'P_NEXUS_TTD',
    'P_NEXUS_VIANT',
    'P_NEXUS_XANDR',
    'P_NEXUS_YAHOO',
    'P_NEXUS_ZETA'
)
ORDER BY 1,2;
