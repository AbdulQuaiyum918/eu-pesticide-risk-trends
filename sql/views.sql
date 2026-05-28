CREATE VIEW vw_country_yearly_trends AS
SELECT
    c.geo_code,
    o.time_period,
    SUM(o.obs_value) AS total_pesticide_kg
FROM observations o
JOIN countries c ON o.country_id = c.country_id
GROUP BY c.geo_code, o.time_period;

CREATE VIEW vw_substance_category_summary AS
SELECT
    s.subst_cat,
    o.time_period,
    SUM(o.obs_value) AS total_pesticide_kg
FROM observations o
JOIN substance_categories s ON o.category_id = s.category_id
GROUP BY s.subst_cat, o.time_period;

CREATE VIEW vw_ml_feature_table AS
SELECT
    c.geo_code,
    s.subst_cat,
    o.time_period,
    o.obs_value
FROM observations o
JOIN countries c ON o.country_id = c.country_id
JOIN substance_categories s ON o.category_id = s.category_id;
