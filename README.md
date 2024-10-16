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
The dataset contains weekly body weight (BW) and daily energy intake (EI) data for 14 participants, randomly selected from a historical clinical study. The body weight data was recorded once per week, while energy intake initially followed a constant pattern of 3500 kcal/day for the first 3 weeks, then dropped to an average of 1560 kcal/day, with high variability between individuals.

To prepare the data for modeling, pre-processing steps included:
- Subtracting the initial body weight for each individual from their subsequent measurements.
- Calculating the difference between energy intake and energy expenditure.
- Normalizing the data, especially focusing on weeks 4 to 27, where noticeable fluctuations occurred.

This pre-processing ensured clean and consistent input data for system identification, leading to improved model accuracy.

![image](https://github.com/user-attachments/assets/9cda7025-1a62-498c-badf-06962d44f5b9)

![image](https://github.com/user-attachments/assets/3a96bddc-c9d4-4681-a04e-e97b2ad650b6)



### System Identification

Selecting the optimal model requires balancing model accuracy with complexity. Several criteria were used to evaluate model quality, including \(R^2\), \(R^2_{CAP}\), AIC (Akaike Information Criterion), and YIC (Young Information Criterion). These metrics ensure that the model explains the data effectively while avoiding overfitting due to excessive complexity.

- **\(R^2\)**: Represents how much of the variance in body weight is explained by the model. Higher \(R^2\) values indicate better fit.
- **AIC/YIC**: Penalize models with additional parameters to avoid overfitting. AIC focuses on the overall fit, while YIC penalizes models with higher variance in parameter estimates, ensuring model robustness.

#### Key Findings
Models were optimized for YIC first and then for \(R^2\) to strike a balance between accuracy and simplicity. Although some models yielded high \(R^2\) values, they were sometimes overly complex. This is particularly true for models with additional delays or extra parameters, which can result in misleadingly high \(R^2\) values while failing to generalize.

For example, Participant 3's model with parameters [1 1 2 0] achieved an excellent \(R^2_{CAP}\) of 0.984874 and YIC of -9.668, as shown in Figure 3. However, an alternative model with parameters [1 1 0 0] produced a better visual fit to the data (Figure 4), despite having a lower \(R^2\) of 0.700795 and higher YIC of -0.947. This emphasizes the importance of considering multiple criteria during model selection.

The tables below summarize the results for each participant, showing the YIC, \(R^2\), AIC, and other relevant metrics, along with the distributions of a and b parameters for the models.

#### Tables

| Participant | # a-para | # b-para | Delays | AR  | YIC    | \(R^2\) | AIC    | S2      | EVN       | CondP     |
|-------------|----------|----------|--------|-----|--------|---------|--------|---------|-----------|-----------|
| 1           | 1        | 1        | 0      | 1   | -18.434| 0.998549| -3.268 | 3.2836  | -12.6207  | 0.0000e+00|
| 2           | 1        | 1        | 0      | 0   | -16.709| 0.998102| -2.276 | 2.8552  | -12.6145  | 0.0000e+00|
| 3           | 1        | 1        | 0      | 0   | -0.947 | 0.700795| 2.2    | 7.7851  | -7.1630   | 0.0000e+00|
| 4           | 1        | 1        | 0      | 0   | -9.003 | 0.972577| 4.05   | 1.2295  | -10.0204  | 0.0000e+00|
| 5           | 1        | 1        | 0      | 1   | -16.138| 0.997113| -2.276 | 8.8532  | -12.2981  | 0.0000e+00|
| 6           | 1        | 1        | 0      | 1   | -16.046| 0.996954| -2.349 | 8.2350  | -12.0069  | 0.0000e+00|
| 7           | 1        | 1        | 0      | 0   | -9.679 | 0.979289| 0.147  | 9.992e-01| -10.1183  | 0.0000e+00|
| 8           | 1        | 1        | 0      | 1   | -11.307| 0.985563| -0.658 | 4.4667  | -10.7327  | 0.0000e+00|
| 9           | 1        | 1        | 0      | 0   | -14.836| 0.996083| -2.402 | 7.8047  | -11.1039  | 0.0000e+00|
| 10          | 1        | 1        | 0      | 1   | -14.444| 0.995668| -1.399 | 2.1298  | -11.8927  | 0.0000e+00|
| 11          | 1        | 1        | 0      | 0   | -4.571 | 0.892236| 1.585  | 4.2058  | -9.2670   | 0.0000e+00|
| 12          | 1        | 1        | 0      | 0   | -0.434 | 0.676610| 2.478  | 1.027e+01| -7.1192   | 0.0000e+00|
| 13          | 1        | 1        | 0      | 0   | -2.474 | 0.811897| 2.016  | 6.4755  | -8.1145   | 0.0000e+00|

_Table 1 – Number of a and b parameters per individual, YIC, \(R^2\), and AIC_

| Participant | \(R^2_{CAP}\) |
|-------------|---------------|
| 1           | 0.9982        |
| 2           | 0.9980        |
| 3           | 0.9357        |
| 4           | 0.9717        |
| 5           | 0.9971        |
| 6           | 0.9974        |
| 7           | 0.9978        |
| 8           | 0.9856        |
| 9           | 0.9957        |
| 10          | 0.9971        |
| 11          | 0.8922        |
| 12          | 0.6766        |
| 13          | 0.8119        |

_Table 2 – \(R^2_{CAP}\) per participant_

---

### a and b Parameters

| Participant | \(a_0\) | \(a_1\)  |
|-------------|---------|----------|
| 1           | 1       | -0.8821  |
| 2           | 1       | -0.9361  |
| 3           | 1       | -1.0215  |
| 4           | 1       | -0.9112  |
| 5           | 1       | -0.9148  |
| 6           | 1       | -1.0321  |
| 7           | 1       | -0.8935  |
| 8           | 1       | -0.9057  |
| 9           | 1       | -0.9200  |
| 10          | 1       | -0.9088  |
| 11          | 1       | -0.9164  |
| 12          | 1       | -1.0039  |
| 13          | 1       | -1.0230  |
| 14          | 1       | -1.0134  |

_Table 3 – a-parameters for each participant_

| Participant | \(b_0\)      |
|-------------|--------------|
| 1           | 7.9399E-04   |
| 2           | 8.9276E-04   |
| 3           | -2.7104E-04  |
| 4           | 0.0012       |
| 5           | 9.4943E-04   |
| 6           | -3.0777E-04  |
| 7           | 8.1045E-04   |
| 8           | 0.0013       |
| 9           | 6.7302E-04   |
| 10          | 5.6733E-04   |
| 11          | -4.1253E-04  |
| 12          | -2.7361E-04  |
| 13          | -3.4935E-04  |

_Table 4 – b-parameters for each participant_

---

### SSG and TC

For the eleven 1st-order models, the steady-state gain (SSG) and time constant (TC) are calculated as follows:

\[
SSG = \frac{b_0}{1 + a_1}
\]
\[
TC = -\frac{\Delta t}{\ln(-a_1)}
\]

With \(\Delta t = 1\) min, the following values were computed:

| Participant | SSG   | TC     |
|-------------|-------|--------|
| 1           | 7.947 | 0.0142 |
| 2           | 15.519| 0.0176 |
| 3           | -47.0196| 0.0115|
| 4           | 10.7574| 0.0096|
| 5           | 11.2283| 0.0076|
| 6           | -31.6649| 0.0133|
| 7           | 8.8845 | 0.0084|
| 8           | 10.1051| 0.002 |
| 9           | 11.9895| 0.015 |
| 10          | 9.4655 | 0.1066|

_Table 5 – SSG and TC per participant_

---

### Figures

![Figure 3 – Plot of measured and modeled data with parameters [1 1 2 0] for Participant 3](https://github.com/user-attachments/assets/8f0ee06e-1f93-4146-9571-9e86f1de8cd1)

_Figure 3 – Plot of measured and modeled data with parameters [1 1 2 0] for Participant 3_

![Figure 4 – Plot of measured and modeled data with parameters [1 1 0 0] for Participant 3](https://github.com/user-attachments/assets/d30b8617-9852-4f0b-a158-abdf6149ea7e)

_Figure 4 – Plot of measured and modeled data with parameters [1 1 0 0] for Participant 3_

![Figure 5 – Distribution of a-parameters](https://github.com/user-attachments/assets/767acc78-8ff7-4221-8db4-7056d6bf105e)

_Figure 5 – Distribution of a-parameters_

![Figure 6 – Distribution of b-parameters](https://github.com/user-attachments/assets/cd4a04a9-c45d-4417-8d1c-48de65a26ebd)

_Figure 6 – Distribution of b-parameters_



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
