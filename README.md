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
```

Example:

```text
data/raw_accidents_2013_2023.csv
```

---

### Output files

Format:

```text
outputs/<type>_<description>.<ext>
```

Examples:

```text
outputs/figure_confusion_matrix.png
outputs/report_classification_metrics.csv
outputs/model_random_forest_v1.joblib
```

---

### Scripts

Format:

```text
src/<action>_<object>.py
```

Examples:

```text
src/load_data.py
src/preprocess_data.py
src/train_model.py
src/evaluate_model.py
```

---

### Configuration files

Format:

```text
config/<purpose>_config.<ext>
```

Example:

```text
config/model_config.yaml
```

---

## Authors

FAIR Data Science Group Project  
TU Wien — 2026
