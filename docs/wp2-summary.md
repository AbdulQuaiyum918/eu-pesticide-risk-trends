# WP2 Summary

This work package implements the data infrastructure for the pesticide risk trend dataset.

The original CSV file contains Eurostat pesticide sales/risk observations by country, substance category, year, unit, and observation value. The data was normalised into separate tables for countries, substance categories, measurement units, and observations.

The database schema is provided in `sql/schema.sql`. Query-ready SQL views are provided in `sql/views.sql`.

The main machine-learning view is `vw_ml_feature_table`, which exposes country code, substance category, year, and observation value for downstream modelling.
