# 🔬 Phase 1 Clinical Trial: Intralesional Immunotherapy with Active Drug Vaccine in Patients with Advanced Merkel Cell Carcinoma or Cutaneous Squamous Cell Carcinoma

[![SAS](https://img.shields.io/badge/Language-SAS_9.4-navy.svg)](https://www.sas.com/)
[![CDISC](https://img.shields.io/badge/Standard-CDISC_SDTM%2FADaM-blue.svg)](https://www.cdisc.org/)
[![Domain](https://img.shields.io/badge/Domain-Oncology_Clinical_Trials-red.svg)]()
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## 📌 Project Overview

This portfolio project utilizes **SAS 9.4** to analyze clinical trial data and generate production-grade **Tables, Listings, and Figures (TLFs)** for a Phase 1 oncology immunotherapy study evaluating an active drug vaccine in patients with advanced **Merkel Cell Carcinoma (MCC)** or **Cutaneous Squamous Cell Carcinoma (cSCC)**.

---

## 👨‍💻 Project Information

* **Author:** Ansania Salam
* **Domain:** Clinical Research / Clinical Data Analysis / Biostatistics / Oncology
* **Data Standards:** CDISC ADaM & SDTM
* **Key SAS Technologies:** SAS Studio, Base SAS 9.4_M8, ODS RTF, PROC REPORT, PROC LIFETEST, PROC SGPLOT, PROC FREQ, PROC SUMMARY

---

## 🚦 Project Status

 **Status:** Completed

---

## 📊 CDISC Standards & Input Datasets

The analysis leverages CDISC-compliant **ADaM (Analysis Data Model)** datasets derived from raw SDTM domains:

| Dataset | Description | Primary Analytical Focus |
| :--- | :--- | :--- |
| **`ADSL`** | Subject Level Analysis Dataset | Demographics, treatment arm assignments, & population counts |
| **`ADAE`** | Adverse Events Analysis Dataset | Treatment-emergent adverse events (TEAEs) & safety profiling |
| **`ADLB`** | Laboratory Results Analysis Dataset | Hematology, chemistry, & toxicity grade changes |
| **`ADVS`** | Vital Signs Analysis Dataset | Baseline & post-baseline vital signs evaluation |
| **`ADRS`** | Response Analysis Dataset | Best overall response (RECIST 1.1) & tumor assessment |
| **`ADTTE`** | Time-to-Event Analysis Dataset | Progression-free survival (PFS) & overall survival (OS) |
| **`ADEFF`** | Efficacy Analysis Dataset | Secondary efficacy endpoints & target lesion measurements |

> 🔒 *Note: Per clinical confidentiality standards, raw participant-level datasets are excluded from this repository.*

---

## 📂 Repository Structure

* [01_Tables/](./01_Tables/) — SAS programs for tables (demographics, AE, lab, efficacy)
* [02_Listings/](./02_Listings/) — SAS programs for patient listings
* [03_Figures/](./03_Figures/) — SAS programs for figures (Kaplan-Meier, waterfall plots)
* [04_OUTPUTS/](./04_OUTPUTS/) — Generated production outputs approved for public sharing
  * [04_OUTPUTS/01_Tables/](./04_OUTPUTS/01_Tables/) — Formatted RTF/PDF table outputs
  * [04_OUTPUTS/02_Listings/](./04_OUTPUTS/02_Listings/) — Formatted patient listings
  * [04_OUTPUTS/03_Figures/](./04_OUTPUTS/03_Figures/) — High-resolution clinical graphics & plots
* [LICENSE](./LICENSE) — MIT License terms
---

## 🛠️ Tools & SAS Execution Environment

* **Environment:** SAS Studio / Base SAS 9.4_M8
* **Reporting & Graphics:** ODS RTF, PROC REPORT, PROC SGPLOT, PROC LIFETEST
* **Data Manipulation:** Base SAS Data Step, PROC SUMMARY, PROC FREQ, PROC TRANSPOSE

### Execution Requirements
The programs require the corresponding input ADaM datasets and may need path updates for another SAS environment. Since the input datasets are not included, the programs cannot be run from this repository alone.

---

## 🔒 Confidentiality & Compliance

This repository contains SAS code and selected outputs developed for biostatistical training and portfolio presentation. No real patient data or unmasked protected health information (PHI) is hosted in this repository.

---

## ⚖️ License

This project is licensed under the **MIT License** - see the [LICENSE](./LICENSE) file for details.

---

## Author

Ansania Salam
