# SCI Bioassessment Exercise (VSCI & VCPMI)

A reproducible teaching/exercise repo for calculating Stream Condition Index (SCI) scores using the **Virginia Stream Condition Index (VSCI)** and **Virginia Coastal Plain Macroinvertebrate Index (VCPMI)** from benthic macroinvertebrate data. It includes ready-to-run R Markdown, supporting functions, example datasets, and a classroom assignment.

> **Where to link (for textbooks/chapters):** Please use the repository URL in the book text. Instructors may also share a QR code in slides if helpful, but the canonical access path is the repo link.

## Contents
- `src/` — R Markdown (`Updated_SCI Calculation 3 ways.Rmd`), rarification function, and metric scripts (placeholders if not provided).
- `data/raw/` — Example input data (`masterTaxaGenus.csv`, `stationInfoBenSampsTESTSITE.csv`, `stationBenthicsTESTSITE.csv`).
- `assignments/` — The classroom assignment & prompts.
- `docs/` — Setup and method guides (Markdown + DOCX copy for users who prefer Word).
- `.github/workflows/` — Optional CI stub you can extend later (e.g., render Rmd).

## Quick start
1. **Install R (≥ 3.6.2) and RStudio.**
2. Install required packages:
   ```r
   install.packages(c("tidyverse", "lubridate", "lazyeval"))
   ```
3. Open `src/Updated_SCI Calculation 3 ways.Rmd` in RStudio.
4. Ensure these files are present in your working directory (or update paths in the Rmd):
   - `src/Updated_rarifyFunction.R`
   - `src/VSCI_metrics_GENUS.R`
   - `src/VCPMI_metrics_GENUS.R`
   - `data/raw/masterTaxaGenus.csv`
   - `data/raw/stationInfoBenSampsTESTSITE.csv`
   - `data/raw/stationBenthicsTESTSITE.csv`
5. Knit the Rmd to HTML **or** run chunks interactively (Ctrl/Cmd + Enter).

## Outputs
The Rmd writes CSV results (e.g., `VASCI_rarefied.csv`) to your working directory or `data/processed/` (you can adjust the path in the Rmd).

## Attribution
- Core SCI code authored by **Emma Jones (Virginia DEQ)**; instructional edits, data cleaning, and assignment by **Sergio A. Sabat‑Bonilla (Virginia Tech)**.
- Please contact **Emma Jones** (emma.jones@deq.virginia.gov) for questions on VSCI/VCPMI methodology.

## License
MIT — see `LICENSE`.

## Citation
If you use this repository in teaching or research, please cite:

> Sabat‑Bonilla, S. A., and Contributors (2025). *SCI Bioassessment Exercise (VSCI & VCPMI)*. GitHub Repository. https://github.com/OWNER/REPO

(Replace OWNER/REPO after you publish. Add a `CITATION.cff` if desired.)