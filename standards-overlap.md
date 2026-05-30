# Standards Overlap Analysis

## Overview

This project uses five metadata standards: RO-Crate, CodeMeta, FAIR4ML, Croissant, and Model Card. Below we analyse the overlap and complementarity between each pair.

## Pairwise Comparison Table

| Field / Concern | RO-Crate | CodeMeta | FAIR4ML | Croissant | Model Card |
|---|:---:|:---:|:---:|:---:|:---:|
| Project/dataset name | ✓ | ✓ | ✓ | ✓ | ✓ |
| Description | ✓ | ✓ | ✓ | ✓ | ✓ |
| Authors / creators | ✓ | ✓ | – | – | – |
| ORCIDs | ✓ | ✓ | – | – | – |
| Licence | ✓ | ✓ | ✓ | ✓ | ✓ |
| Version | – | ✓ | ✓ | – | – |
| Programming language | – | ✓ | – | – | – |
| Dependencies (with versions) | – | ✓ | – | – | – |
| Code repository URL | ✓ | ✓ | – | – | – |
| Dataset field schemas | – | – | – | ✓ | – |
| Data types per field | – | – | – | ✓ | – |
| Unit references (QUDT/SI) | – | – | – | ✓ | – |
| Distribution/download info | ✓ | – | – | ✓ | – |
| Algorithm name & version | – | – | ✓ | – | ✓ |
| Hyperparameters | – | – | ✓ | – | – |
| Evaluation metrics | – | – | ✓ | – | ✓ |
| Intended use | – | – | ✓ | – | ✓ |
| Known limitations | – | – | ✓ | – | ✓ |
| Out-of-scope uses | – | – | – | – | ✓ |
| Ethical considerations | – | – | – | – | ✓ |
| Training data reference | – | – | ✓ | – | ✓ |
| File relationships | ✓ | – | – | – | – |
| DOI / persistent identifier | ✓ | – | ✓ | – | – |
| Date published/created | ✓ | ✓ | ✓ | ✓ | – |

## Detailed Pair Analysis

### RO-Crate ↔ CodeMeta
**(a) Shared fields:** name, description, authors (with ORCIDs), licence, date, code repository URL.
**(b) Unique to RO-Crate:** file-level descriptions, inter-entity relationships (hasPart), DOIs for individual artefacts, multiple licence assignments.
**(b) Unique to CodeMeta:** programming language, runtime platform, software dependencies with version pins, operating system.
**(c) Conflicts:** None. Both use Schema.org vocabulary. CodeMeta focuses on the software as a whole while RO-Crate treats it as one entity among many.

### RO-Crate ↔ FAIR4ML
**(a) Shared fields:** identifier/DOI, licence, description.
**(b) Unique to RO-Crate:** full experiment package structure, all file types (not just the model), author details with ORCIDs.
**(b) Unique to FAIR4ML:** algorithm specifics, hyperparameters, evaluation metrics, intended use, limitations, task type.
**(c) Conflicts:** None. FAIR4ML is referenced from within the RO-Crate as a described file.

### RO-Crate ↔ Croissant
**(a) Shared fields:** dataset name, description, licence, distribution/download URL.
**(b) Unique to RO-Crate:** relationships between all artefacts, author information, software and model descriptions.
**(b) Unique to Croissant:** field-level schema (data types, units), record-set structure, QUDT unit references.
**(c) Conflicts:** None. Croissant provides deeper dataset description while RO-Crate provides the packaging context.

### RO-Crate ↔ Model Card
**(a) Shared fields:** model name/description, licence.
**(b) Unique to RO-Crate:** machine-readable structure, file relationships, identifiers.
**(b) Unique to Model Card:** human-readable narrative on intended use, ethical considerations, out-of-scope uses, detailed evaluation table.
**(c) Conflicts:** None. Model Card is a human narrative; RO-Crate is machine-readable packaging.

### CodeMeta ↔ FAIR4ML
**(a) Shared fields:** version, software name.
**(b) Unique to CodeMeta:** all software dependencies, programming language, runtime platform, code repository.
**(b) Unique to FAIR4ML:** ML-specific (hyperparameters, metrics, training data, intended use, limitations).
**(c) Conflicts:** None — different scopes (software vs. model).

### CodeMeta ↔ Croissant
**(a) Shared fields:** name, licence.
**(b) Unique to CodeMeta:** software-centric metadata (dependencies, language, repository).
**(b) Unique to Croissant:** data-centric metadata (field schemas, unit references, distributions).
**(c) Conflicts:** None — entirely different purposes.

### CodeMeta ↔ Model Card
**(a) Shared fields:** name (implicitly).
**(b) Unique to CodeMeta:** technical software metadata.
**(b) Unique to Model Card:** model behaviour documentation, ethics, limitations.
**(c) Conflicts:** None.

### FAIR4ML ↔ Croissant
**(a) Shared fields:** training dataset reference (name/DOI).
**(b) Unique to FAIR4ML:** model-specific (algorithm, hyperparameters, metrics).
**(b) Unique to Croissant:** dataset field-level schema, data types, units.
**(c) Conflicts:** None. They complement each other — Croissant describes what goes IN, FAIR4ML describes what comes OUT.

### FAIR4ML ↔ Model Card
**(a) Shared fields:** evaluation metrics, intended use, limitations, training data reference, algorithm name.
**(b) Unique to FAIR4ML:** machine-readable format, hyperparameter values as structured data, task type.
**(b) Unique to Model Card:** ethical considerations, out-of-scope uses (as narrative), human-readable format.
**(c) Conflicts:** Potential inconsistency if metric values differ between the two. Mitigation: generate both from the same evaluation script.

### Croissant ↔ Model Card
**(a) Shared fields:** training data reference (implicit).
**(b) Unique to Croissant:** input data schema details.
**(b) Unique to Model Card:** model performance, ethics, usage guidance.
**(c) Conflicts:** None.

## Discussion

The five standards serve complementary roles forming a complete documentation stack: RO-Crate provides the overarching package structure and links everything together; CodeMeta documents the software and its technical requirements; Croissant describes the input data at field level; FAIR4ML captures ML-specific model metadata in machine-readable form; and Model Card provides a human-readable responsible-AI narrative. The main risk of inconsistency is between FAIR4ML and Model Card (duplicate metric values) — this should be mitigated by generating both from a single source of truth (the evaluation script output). No fundamental conflicts exist between any pair of standards.