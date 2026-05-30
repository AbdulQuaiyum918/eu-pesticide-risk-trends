# Predicting Pesticide Risk Trends Across EU Member States Using Harmonised Risk Indicator Data

[![DOI](https://zenodo.org/badge/DOI/<ZENODO-DOI>.svg)](https://doi.org/<ZENODO-DOI>)

## Abstract

This project uses Eurostat pesticide sales and risk indicator data to build a reproducible machine learning experiment. The goal is to classify pesticide risk trends for European reporting areas as decreasing, stable, or increasing based on historical observations. The project is an educational FAIR Data Science exercise and is not intended for policy decisions.

## Repository structure

The repository is organised as follows.

```text
data/                         input dataset
src/                          experiment code
models/                       trained model artefact
output/                       generated predictions, metrics, and figures
docs/                         model card, standards analysis, and validation output
metadata/                     Croissant and FAIR4ML metadata
ro-crate-metadata.json        RO-Crate metadata
codemeta.json                 software metadata
CITATION.cff                  citation metadata
LICENSE                       software licence
requirements.txt              Python dependencies
```

## File organisation

Input files use the original dataset name where possible. Metadata files use the name of the metadata standard, for example `codemeta.json` and `ro-crate-metadata.json`. Generated model and output files use clear descriptive names such as `best_model.joblib`, `predictions.csv`, and `evaluation_metrics.csv`.

## Requirements and installation

Python 3.11 or newer is recommended.

```bash
git clone https://github.com/AbdulQuaiyum918/traffic-accident-severity-austria.git
cd traffic-accident-severity-austria
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

On Windows, activate the environment with `venv\Scriptsctivate`.

## Reproduction steps

1. Install the Python dependencies from `requirements.txt`.
2. Check that the input file is available at `data/estat_aei_pestsal_rsk_en.csv`.
3. Run the pipeline from `src/pipeline.py` after replacing the scaffold with the final training code if needed.
4. Store the trained model in `models/best_model.joblib`.
5. Store generated predictions, metrics, and plots in `output/`.
6. Verify that the metadata files still point to the final artefact names.

## Input data

The input dataset is the Eurostat pesticide sales and risk dataset `aei_pestsal_rsk`. It contains observations by reporting frequency, substance category, unit, geographic area, reporting year, observation value, observation flag, and confidentiality status.

## Output data

The generated outputs include predictions, evaluation metrics, confusion matrices, model comparison figures, feature importance output, and the trained model artefact.

## Metadata standards

The project includes RO-Crate, CodeMeta, FAIR4ML, Croissant, and Model Card documentation. The overlap between these standards is discussed in `docs/standards-overlap.md`.

## Licences

The input data is reused under the applicable Eurostat reuse conditions and is documented as CC BY 4.0 in the metadata files. The software code is licensed under MIT, as stated in `LICENSE`. Generated model and output artefacts are documented under CC BY 4.0 so that they can be reused with attribution.

## Contributors

The repository metadata includes the currently available ORCID identifiers. Replace `<ORCID-C>` with the final ORCID for the remaining contributor before the final release.

## Citation

Citation information is provided in `CITATION.cff`. After the GitHub release is archived by Zenodo, replace `<ZENODO-DOI>` with the final DOI.
