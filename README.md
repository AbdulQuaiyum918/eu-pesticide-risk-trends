# Traffic Accident Severity Prediction in Austria

## Abstract

This project investigates whether the severity of road traffic accidents in Austria can be predicted using contextual accident information such as weather conditions, road category, lighting conditions, time of day, speed limits, and vehicle involvement.

The experiment is based on Austrian road traffic accident data published by Statistik Austria and follows FAIR data science principles.

---

## Dataset

The dataset used in this project is:

"Straßenverkehrsunfälle mit Personenschaden ab 2013"

published by Statistik Austria on data.statistik.gv.at under the CC BY 4.0 licence.

The dataset contains information about:
- accident severity
- road category
- weather conditions
- lighting conditions
- time of accident
- speed limits
- vehicle involvement
- accident location

---

## Repository Structure

- `data/` → input datasets
- `src/` → source code and scripts
- `outputs/` → generated artefacts and experiment results
- `docs/` → project documentation
- `config/` → configuration files

---

## File Organisation

### Input datasets

Format:

```text
data/raw_<dataset-name>_<year-range>.<ext>
