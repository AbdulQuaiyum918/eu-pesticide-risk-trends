# Predicting Pesticide Risk Trends Across EU Member States

## Abstract

This project investigates whether pesticide risk trends across EU member states can be predicted using Harmonised Risk Indicator (HRI 1) data published by Eurostat.

The model classifies pesticide risk trends into:
- Decreasing
- Stable
- Increasing

The experiment follows FAIR data science principles and uses historical pesticide risk indicator data for reproducible machine learning analysis.

---

## Dataset

The dataset used in this project is:

"Eurostat Harmonised Risk Indicator Pesticide Dataset"

published by Eurostat under open European statistical data access.

The dataset contains information about:
- EU member state codes
- reporting years
- pesticide substance categories
- measurement units
- observed pesticide risk indicator values
- observation quality flags
- confidentiality status

---

## Repository Structure

- `data/` → input datasets
- `src/` → source code and scripts
- `outputs/` → generated artefacts and experiment results
- `docs/` → project documentation
- `config/` → configuration files
- `sql/` → database schema and SQL views

---

## File Organisation

### Input datasets

Format:

```text
data/raw_<dataset-name>_<year-range>.<ext>
