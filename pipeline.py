"""Training pipeline placeholder for the FAIR Data Science WP3 repository.

Replace this scaffold with the final experiment code if the complete pipeline is kept in the repository.
The WP3 metadata files already reference this location as the reproducible software entry point.
"""

from pathlib import Path

DATA_PATH = Path("data/estat_aei_pestsal_rsk_en.csv")
MODEL_PATH = Path("models/best_model.joblib")


def main() -> None:
    print("Run the final pesticide risk trend modelling pipeline from this entry point.")
    print(f"Input data: {DATA_PATH}")
    print(f"Model output: {MODEL_PATH}")


if __name__ == "__main__":
    main()
