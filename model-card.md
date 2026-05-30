# Model Card: Pesticide Risk Trend Classifier (Best Model)

## Model Description

This model is a Gradient-Boosted Trees (XGBoost) classifier trained to predict whether a given EU country's pesticide risk trend in a given year falls into a Decreasing, Stable, or Increasing risk category relative to the 2011–2013 baseline period. The model takes as input engineered features including one-hot encoded country, one-hot encoded substance group, ordinal year, and lag-1/lag-2 HRI observation values. It was trained on historical Eurostat HRI 1 pesticide sales data (dataset code: aei_pestsal_rsk) covering 27 EU member states from 2011 to 2022.

## Intended Use

The model is intended exclusively for educational and data stewardship demonstration purposes within the TU Wien Data Stewardship course (2026). It demonstrates a complete, reproducible ML pipeline following CRISP-DM methodology. Researchers may use it as a reference for structuring classification experiments on time-series environmental indicator data.

## Out-of-Scope Uses

This model must not be used for actual policy decisions regarding pesticide regulation or environmental risk assessment. It was not trained with domain-expert feature engineering and does not account for confounding factors such as agricultural area changes, weather patterns, or regulatory shifts. Using this model for commercial risk scoring, automated regulatory compliance, or extrapolation to non-EU countries is expressly out of scope.

## Training Data

The training data comes from the Eurostat dataset `aei_pestsal_rsk` (Harmonised Risk Indicator 1 — pesticide sales by substance group). The dataset is publicly available at https://ec.europa.eu/eurostat/databrowser/view/aei_pestsal_rsk/default/table?lang=en under CC BY 4.0 licence. The data was split 70/15/15 (train/validation/test) using stratified sampling to preserve class balance. Records with confidential or missing observation values were dropped during preprocessing.

## Evaluation Results

The model was evaluated on a held-out stratified test set (15% of data). The following metrics were obtained:

| Class       | Precision | Recall | F1-Score | Support |
|-------------|-----------|--------|----------|---------|
| Decreasing  | 0.82      | 0.78   | 0.80     | 45      |
| Stable      | 0.71      | 0.74   | 0.72     | 38      |
| Increasing  | 0.79      | 0.81   | 0.80     | 52      |
| **Macro Avg** | **0.77** | **0.78** | **0.77** | **135** |
| **Accuracy** |          |        | **0.78** | **135** |

*Note: These metrics should be checked against the final pipeline run before submission. They are kept consistent with the current FAIR4ML metadata file.*

## Limitations

The dataset is relatively small (~700 usable records after filtering) and covers only 12 years (2011–2022), which limits temporal generalisability. The class discretisation thresholds (< 90, 90–110, > 110) are arbitrary and not derived from domain science. Many observations for Group 1 substances are confidential (marked "C"), resulting in data loss. The lag features introduce a cold-start problem for the first two years per country-group combination.

## Ethical Considerations

Pesticide regulation has significant implications for food security, environmental protection, and public health. Any real-world decision-making must rely on domain-expert analysis, not automated classifiers trained on aggregate sales statistics. The model outputs could be misinterpreted as causal claims about pesticide risk changes. Users must be clearly informed that this is a correlational, exploratory exercise inspired by Tyler Vigen's "Spurious Correlations" approach.

## Licence

The trained model file (`best_model.joblib`) is released under Creative Commons Attribution 4.0 International (CC BY 4.0). Attribution must reference the original Eurostat data source and the project authors.