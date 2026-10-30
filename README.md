<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:1E3A8A,100:BE123C&height=220&section=header&text=Phase%201%20Oncology%20Clinical%20Trial&fontSize=38&fontColor=ffffff&animation=fadeIn&desc=%F0%9F%8E%97%EF%B8%8F%20TLF%20programming%20in%20SAS%20%7C%20CDISC%20ADaM%20%F0%9F%A7%AC&descSize=18&descAlignY=68" alt="Phase 1 Oncology Clinical Trial banner" />

<img src="./assets/oncology-logo.svg" width="130" alt="Oncology ribbon logo" />

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=20&pduration=2500&duration=3500&pause=900&color=BE123C&center=true&vCenter=true&width=700&lines=Tables+%C2%B7+Listings+%C2%B7+Figures;SDTM+%E2%86%92+ADaM+%E2%86%92+TLF;Kaplan-Meier+%C2%B7+Waterfall+%C2%B7+TEAE+summaries" alt="typing" />

<br>

<img src="https://img.shields.io/badge/SAS-9.4_M8-1E3A8A?style=for-the-badge&logo=sas&logoColor=white" />
<img src="https://img.shields.io/badge/CDISC-SDTM%20%2F%20ADaM-2563EB?style=for-the-badge" />
<img src="https://img.shields.io/badge/🎗️_Domain-Oncology-BE123C?style=for-the-badge" />
<img src="https://img.shields.io/badge/RECIST-1.1-0F766E?style=for-the-badge" />

<img src="https://img.shields.io/badge/🧬_Phase_1-Immunotherapy-7C3AED?style=flat-square" />
<img src="https://img.shields.io/badge/💉_Intralesional-Drug_Vaccine-E11D48?style=flat-square" />
<img src="https://img.shields.io/badge/Outputs-Tables%20%7C%20Listings%20%7C%20Figures-1E3A8A?style=flat-square" />
<img src="https://img.shields.io/badge/License-MIT-blue?style=flat-square" />
<img src="https://img.shields.io/badge/Status-Completed-success?style=flat-square" />

## 🔬 Intralesional Immunotherapy with Active Drug Vaccine in Patients with Advanced Merkel Cell Carcinoma or Cutaneous Squamous Cell Carcinoma

**SAS programs for Tables, Listings and Figures (TLFs) in a Phase 1 oncology study.**

🎗️ 🧬 🔬 💉 🩺 📊

</div>

---

## 📌 Project Overview

This portfolio project uses **SAS 9.4** to analyse clinical trial data and produce **Tables, Listings and Figures (TLFs)** for a Phase 1 oncology immunotherapy study. The study evaluates an active drug vaccine in patients with advanced **Merkel Cell Carcinoma (MCC)** or **Cutaneous Squamous Cell Carcinoma (cSCC)**.

---

## 🧾 Study at a Glance

| | |
|---|---|
| 🧪 **Phase** | Phase 1 |
| 🎗️ **Indication** | Advanced Merkel Cell Carcinoma (MCC) or Cutaneous Squamous Cell Carcinoma (cSCC) |
| 💉 **Intervention** | Intralesional immunotherapy with an active drug vaccine |
| 🧬 **Data standards** | CDISC SDTM and ADaM |
| 💻 **Software** | SAS Studio, Base SAS 9.4_M8 |
| 📊 **Deliverables** | Tables, Listings and Figures |

---

## 🔄 Workflow

```mermaid
flowchart LR
    A[🧬 SDTM domains] --> B[📐 ADaM datasets]
    B --> C[💻 SAS programs]
    C --> D[📋 Tables]
    C --> E[🩺 Listings]
    C --> F[📈 Figures]
    style A fill:#1E3A8A,color:#fff,stroke:none
    style B fill:#2563EB,color:#fff,stroke:none
    style C fill:#7C3AED,color:#fff,stroke:none
    style D fill:#BE123C,color:#fff,stroke:none
    style E fill:#E11D48,color:#fff,stroke:none
    style F fill:#F43F5E,color:#fff,stroke:none
```

---

## ⭐ Main Concepts Highlighted

<table>
<tr>
<td width="50%">

### 💻 SAS programming
- **Data Step**
- **PROC SUMMARY** and **PROC FREQ** for summaries
- **PROC TRANSPOSE** for reshaping data
- **ODS RTF** and **PROC REPORT** for production-style tables and listings

</td>
<td width="50%">

### 🧬 Clinical analysis
- **Survival analysis** with **PROC LIFETEST** for PFS and OS
- **RECIST 1.1** best overall response
- **TEAE** safety summaries
- **CDISC ADaM** analysis datasets

</td>
</tr>
</table>

| Concept | Where it is used |
|---------|------------------|
| 📉 **Kaplan-Meier plots** | Progression-free survival and overall survival (`ADTTE`) |
| 🌊 **Waterfall plots** | Tumour assessment and target lesion measurements |
| ⚠️ **TEAE tables** | Safety profile from adverse events (`ADAE`) |
| 🧪 **Lab toxicity grades** | Hematology and chemistry shifts (`ADLB`) |
| 🎗️ **Best overall response** | Response by RECIST 1.1 (`ADRS`) |

---

## 👩‍💻 Project Information

| | |
|---|---|
| **Author** | Ansania Salam |
| **Domain** | Clinical Research · Clinical Data Analysis · Biostatistics · Oncology |
| **Key SAS tools** | SAS Studio, Base SAS 9.4_M8, ODS RTF, PROC REPORT, PROC LIFETEST, PROC SGPLOT, PROC FREQ, PROC SUMMARY |
| **Status** | ✅ Completed |

---

## 📊 CDISC Standards & Input Datasets

The analysis uses CDISC-compliant **ADaM (Analysis Data Model)** datasets derived from raw SDTM domains.

| Dataset | Description | Analytical Focus |
|:--------|:------------|:-----------------|
| **`ADSL`** | Subject Level Analysis Dataset | Demographics, treatment arm assignments and population counts |
| **`ADAE`** | Adverse Events Analysis Dataset | Treatment-emergent adverse events (TEAEs) and safety profile |
| **`ADLB`** | Laboratory Results Analysis Dataset | Hematology, chemistry and toxicity grade changes |
| **`ADVS`** | Vital Signs Analysis Dataset | Baseline and post-baseline vital signs |
| **`ADRS`** | Response Analysis Dataset | Best overall response (RECIST 1.1) and tumour assessment |
| **`ADTTE`** | Time-to-Event Analysis Dataset | Progression-free survival (PFS) and overall survival (OS) |
| **`ADEFF`** | Efficacy Analysis Dataset | Secondary efficacy endpoints and target lesion measurements |

> 🔒 **Note:** Following clinical confidentiality standards, raw participant-level datasets are not included in this repository.

---

## 📂 Repository Structure

| Folder / File | What's inside |
|---------------|---------------|
| 📁 [01_Tables/](./01_Tables/) | SAS programs for tables (demographics, AE, lab, efficacy) |
| 📁 [02_Listings/](./02_Listings/) | SAS programs for patient listings |
| 📁 [03_Figures/](./03_Figures/) | SAS programs for figures (Kaplan-Meier, waterfall plots) |
| 📁 [04_OUTPUTS/](./04_OUTPUTS/) | Generated outputs approved for public sharing |
| &nbsp;&nbsp;&nbsp;↳ 📄 [01_Tables/](./04_OUTPUTS/01_Tables/) | Formatted RTF/PDF table outputs |
| &nbsp;&nbsp;&nbsp;↳ 📄 [02_Listings/](./04_OUTPUTS/02_Listings/) | Formatted patient listings |
| &nbsp;&nbsp;&nbsp;↳ 🖼️ [03_Figures/](./04_OUTPUTS/03_Figures/) | High-resolution clinical graphics and plots |
| 🎗️ [assets/](./assets/) | Project logo |
| ⚖️ [LICENSE](./LICENSE) | MIT License terms |

---

## 🎯 Skills Shown in This Project

| Area | What it covers |
|------|----------------|
| **SAS programming** | Data Step, PROC SUMMARY, PROC FREQ, PROC TRANSPOSE |
| **Reporting** | ODS RTF, PROC REPORT for production-style tables and listings |
| **Graphics** | PROC SGPLOT figures, including Kaplan-Meier and waterfall plots |
| **Survival analysis** | PROC LIFETEST for PFS and OS |
| **Clinical standards** | CDISC ADaM datasets, RECIST 1.1 response, TEAE safety summaries |

---

## 🛠️ Tools & SAS Execution Environment

| | |
|---|---|
| **Environment** | SAS Studio / Base SAS 9.4_M8 |
| **Reporting & graphics** | ODS RTF, PROC REPORT, PROC SGPLOT, PROC LIFETEST |
| **Data manipulation** | Base SAS Data Step, PROC SUMMARY, PROC FREQ, PROC TRANSPOSE |

### ⚙️ Execution Requirements

The programs need the matching input ADaM datasets and may need path updates to run in another SAS environment. Because the input datasets are not included, the programs cannot be run from this repository alone.

---

## 🔒 Confidentiality & Compliance

This repository contains SAS code and selected outputs developed for biostatistical training and portfolio presentation. No real patient data or unmasked protected health information (PHI) is hosted here.

---

## 👤 Author

<p align="center">
  <b>Ansania Salam</b><br><br>
  <a href="https://www.linkedin.com/in/ansania-salam">
    <img src="https://img.shields.io/badge/LinkedIn-Ansania%20Salam-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" />
  </a>
</p>

---

## ⚖️ License

This project is licensed under the **MIT License**. See the [LICENSE](./LICENSE) file for details.

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:BE123C,100:1E3A8A&height=100&section=footer" alt="footer" />
