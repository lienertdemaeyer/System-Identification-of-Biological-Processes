# System Identification of Biological Processes

## Project Overview

This project focuses on applying system identification techniques to model and analyze two biological processes:
1. **Body weight and energy intake**
2. **Impedance response of cancer cells**

Using MATLAB and time-invariant ARX models, the project explores the dynamic relationships between input-output variables in biological data, analyzes system stability, and interprets parameter variability.

### Table of Contents
- [Problem 1: Body weight and energy intake](#problem-1-body-weight-and-energy-intake)
  - [Data Preparation](#data-preparation)
  - [System Identification](#system-identification)
  - [Biological Interpretation](#biological-interpretation)
  - [Time-varying Dynamics](#time-varying-dynamics)
- [Problem 2: Impedance response of cancer cells](#problem-2-impedance-response-of-cancer-cells)
  - [Data Preparation](#data-preparation-1)
  - [System Identification](#system-identification-1)
  - [Classification](#classification)
- [How to Run the Project](#how-to-run-the-project)

## Problem 1: Body weight and energy intake

### Data Preparation
The dataset contains weekly body weight (BW) and daily energy intake (EI) data for 14 participants, randomly selected from a historical clinical study. The data is visualized and pre-processed for system identification, ensuring the data is ready for modeling.

### System Identification
Using time-invariant ARX models, the relationships between body weight and energy intake are modeled for each individual. A range of ARX models with different structures is fitted, and the best model for each subject is selected based on selection criteria. A general model structure is then applied to all datasets, with the a- and b-parameters calculated for each individual.

### Biological Interpretation
An average model for the entire population is created, and the biological significance of the model parameters (such as the steady-state gain and time constant) is discussed. The effect of parameter changes on body weight dynamics is analyzed, and the model's delay (if any) is interpreted.

### Time-varying Dynamics
A method for time-variant parameter estimation is applied to study how parameters change over time. The time-varying dynamics of the a- and b-parameters are plotted and interpreted to understand the variations in biological responses over the 27-week study period.

## Problem 2: Impedance response of cancer cells

### Data Preparation
The dataset contains impedance response data for wild-type and mutated cancer cell receptors, with measurements sampled at 1 Hz. The input is the presence or absence of a ligand, and the output is the cell index (CI). Data is visualized and pre-processed before proceeding to system identification.

### System Identification
ARX models with different structures are fitted to the data, and the best model for each cell type is selected. For each dataset, the a- and b-parameters are determined. Stable ARX models are split into series, parallel, or feedback configurations, and first-order models are calculated. Stability and coupling of cellular processes are assessed by analyzing these configurations.

### Classification
The two unknown receptor types are classified based on model characteristics (a- and b-parameters, SSG, TC-values). Visual methods such as scatter plots and box plots are used for classification, comparing the unknown measurements with the known receptor types.
