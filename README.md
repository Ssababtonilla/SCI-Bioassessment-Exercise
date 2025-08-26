# SCI Bioassessment Exercise (VSCI & VCPMI)
![R-CMD-check](https://github.com/Ssababtonilla/SCI-Bioassessment-Exercise/actions/workflows/r-check.yml/badge.svg)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.16952880.svg)](https://doi.org/10.5281/zenodo.16952880)

A reproducible teaching/exercise repository for calculating Stream Condition Index (SCI) scores using the **Virginia Stream Condition Index (VSCI)** and **Virginia Coastal Plain Macroinvertebrate Index (VCPMI)** from benthic macroinvertebrate data. It includes a ready-to-run R Markdown workflow, supporting functions, example datasets, and a classroom assignment.

> **For textbooks/chapters:** cite the DOI above and link to the repo:  
> https://github.com/Ssababtonilla/SCI-Bioassessment-Exercise

---

## Contents
- `src/` — main R Markdown (`Updated_SCI Calculation 3 ways.Rmd`), `Updated_rarifyFunction.R`, and metric scripts (`VSCI_metrics_GENUS.R`, `VCPMI_metrics_GENUS.R`*).
- `data/raw/` — example inputs  
  (`masterTaxaGenus.csv`, `stationInfoBenSampsTESTSITE.csv`, `stationBenthicsTESTSITE.csv`).
- `data/processed/` — outputs written by the workflow.
- `assignments/` — classroom assignment & prompts.
- `docs/` — setup/method guide (MD + DOCX copy).
- `.github/workflows/` — minimal CI (R session check).

\* The VDEQ metric scripts may be subject to redistribution limits. If not included, place your local copies in `src/` with those exact filenames.

---

## Quick start
1. **Install R (≥ 3.6.2) and RStudio.**
2. Install packages:
   ```r
   install.packages(c("tidyverse", "lubridate", "lazyeval"))
