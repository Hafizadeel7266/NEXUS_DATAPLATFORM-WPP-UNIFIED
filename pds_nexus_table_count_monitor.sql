DECLARE sql STRING;

SET sql = (
  SELECT STRING_AGG(
    FORMAT("""
      SELECT '%s' AS dataset_name, '%s' AS table_name, COUNT(*) AS row_count
      FROM `%s.%s`
    """,
      dataset_name,
      table_name,
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
    SELECT 'pds__quantcast__all', 'p_nexus_api_quantcast'
  )
);

EXECUTE IMMEDIATE sql;
