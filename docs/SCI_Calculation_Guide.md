# Step-by-Step Guide: Running the SCI Calculation Script

This guide walks you through running the **SCI Calculation 3 ways** script for VSCI and VCPMI indices.

---

## **1. Install R and RStudio**
- Make sure you have R (≥ 3.6.2) installed.
- Install RStudio for easier script execution.

---

## **2. Install Required R Packages**
Open R or RStudio and run:
```r
install.packages(c("tidyverse", "lubridate", "lazyeval"))
```

---

## **3. Place All Required Files in the Same Folder**
The following files are **mandatory** for the script to run:
1. **Updated_SCI Calculation 3 ways.Rmd** – Main analysis script.
2. **Updated_rarifyFunction.R** – Function to rarefy counts to 110.
3. **VCPMI_metrics_GENUS.R** – Metric calculation script for VCPMI.
4. **VSCI_metrics_GENUS.R** – Metric calculation script for VSCI.
5. **masterTaxaGenus.csv** – Master taxa list with tolerance values and traits.
6. **stationInfoBenSampsTESTSITE.csv** – Station metadata (site, collection date, etc.).
7. **stationBenthicsTESTSITE.csv** – Benthic macroinvertebrate data.

> **Tip:** Keep them all in one folder to avoid path issues.

---

## **4. Open and Edit the Script**
1. Open **Updated_SCI Calculation 3 ways.Rmd** in RStudio.
2. Check that all file paths in the script match your folder structure.
   - For example:
     ```r
     masterTaxaGenus <- read.csv("masterTaxaGenus.csv")
     stationBenSamps <- read_csv("stationInfoBenSampsTESTSITE.csv")
     stationBenthics <- read_csv("stationBenthicsTESTSITE.csv")
     ```

---

## **5. Source the Required Scripts**
The main R Markdown file automatically loads:
```r
source("VSCI_metrics_GENUS.R")
source("VCPMI_metrics_GENUS.R")
source("Updated_rarifyFunction.R")
```

Ensure these files are present in the working directory.

---

## **6. Run the Script**
You have two options:

### **Option A: Run Entire Script**
- In RStudio, click **Knit** → **Knit to HTML** to generate a report with results.

### **Option B: Run Line by Line**
- Highlight and run each chunk (`Ctrl + Enter`) to inspect outputs at each stage.

---

## **7. Output Files**
- The script saves results to CSV files:
  - `VASCI_rarefied.csv` (example output for VSCI)
- Similar CSV outputs will be generated for VCPMI +63 and VCPMI -65.

---

## **8. Troubleshooting**
- If you get a "file not found" error → check that all required CSV and R scripts are in the same folder.
- If you get a "package not found" error → install the missing package using `install.packages()`.
- If column names in your data differ from the template, match them exactly to avoid errors.

---

## **Contact**
For questions on SCI methodology, contact **Emma Jones** (emma.jones@deq.virginia.gov).
