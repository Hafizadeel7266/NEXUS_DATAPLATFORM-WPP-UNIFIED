-- e_nexus_advertisers: Metrics by Datasource (BigQuery)

SELECT
  datasource,
  ROUND(SUM(impressions), 0) AS impressions,
  ROUND(SUM(payable_units), 0) AS payable_units,
  ROUND(SUM(billable_units), 0) AS billable_units,
  ROUND(SUM(uncapped_spend), 0) AS uncapped_spend
FROM `eds__advertisers__all.e_nexus_advertisers`
GROUP BY datasource
ORDER BY datasource;


-- e_nexus_advertisers: Metrics by Datasource (Snowflake)

SELECT
  datasource,
  ROUND(SUM(impressions), 0) AS impressions,
  ROUND(SUM(payable_units), 0) AS payable_units,
  ROUND(SUM(billable_units), 0) AS billable_units,
  ROUND(SUM(uncapped_spend), 0) AS uncapped_spend
FROM EDS__ADVERTISERS__ALL.E_NEXUS_ADVERTISERS
GROUP BY datasource
ORDER BY datasource;
