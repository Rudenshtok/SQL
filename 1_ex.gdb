--SELECT * FROM pg_catalog.pg_tables;
--SELECT * FROM msu_analytics.partner
--SELECT * FROM msu_analytics.location
--SELECT * FROM msu_analytics.legend

SELECT distinct P.partner_rk
FROM msu_analytics.partner AS P
JOIN msu_analytics.location AS L
ON L.partner_rk = P.partner_rk
JOIN msu_analytics.legend AS Le
ON P.partner_rk = Le.partner_rk;

