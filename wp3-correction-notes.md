# WP3 Correction Notes

This corrected package fixes the main repository packaging issues found in the previous ZIP.

Completed corrections:

1. File extensions were corrected. Metadata and Markdown files no longer have accidental `.txt` suffixes.
2. `requirements.txt` was renamed from `requirement.txt.txt`.
3. `ro-crate-metadata.json` now references the corrected file names.
4. Croissant metadata includes a SHA256 checksum for the CSV file.
5. README content was completed with installation, reproduction, inputs, outputs, licences, contributors, and citation sections.
6. A validation notes file was added under `docs/validation/`.
7. DOI fields were intentionally left as placeholders because Zenodo and TUWRD publication still need to be completed.

Values still to replace later:

- `<ZENODO-DOI>`
- `<TUWRD-MODEL-DOI>`
- `<TUWRD-GENERATED-DATA-DOI>`
- `<ORCID-C>`
- final model metrics if the final pipeline produces different values
