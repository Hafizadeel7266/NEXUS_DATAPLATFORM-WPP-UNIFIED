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
