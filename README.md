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

---

## Problem 1: Body weight and energy intake

### Data Preparation
The dataset contains weekly body weight (BW) and daily energy intake (EI) data for 14 participants, randomly selected from a historical clinical study. The body weight data was recorded once per week, while energy intake initially followed a constant pattern of 3500 kcal/day for the first 3 weeks, then dropped to an average of 1560 kcal/day, with high variability between individuals.

To prepare the data for modeling, pre-processing steps included:
- Subtracting the initial body weight for each individual from their subsequent measurements.
- Calculating the difference between energy intake and energy expenditure.
- Normalizing the data, especially focusing on weeks 4 to 27, where noticeable fluctuations occurred.

This pre-processing ensured clean and consistent input data for system identification, leading to improved model accuracy.

![image](https://github.com/user-attachments/assets/9cda7025-1a62-498c-badf-06962d44f5b9)

_**Figure 1** – Plot of body weight as a function of time (weeks)_

![image](https://github.com/user-attachments/assets/3a96bddc-c9d4-4681-a04e-e97b2ad650b6)

_**Figure 2** – Plot of energy intake as a function of time (weeks)_

---

### System Identification

Selecting the optimal model requires balancing model accuracy with complexity. Several criteria were used to evaluate model quality, including $R^2$, $R^2_{CAP}$, AIC (Akaike Information Criterion), and YIC (Young Information Criterion). These metrics ensure that the model explains the data effectively while avoiding overfitting due to excessive complexity.

- **$R^2$**: Represents how much of the variance in body weight is explained by the model. Higher $R^2$ values indicate better fit.
- **AIC/YIC**: Penalize models with additional parameters to avoid overfitting. AIC focuses on the overall fit, while YIC penalizes models with higher variance in parameter estimates, ensuring model robustness.

#### Key Findings
Models were optimized for YIC first and then for $R^2$ to strike a balance between accuracy and simplicity. Although some models yielded high $R^2$ values, they were sometimes overly complex. This is particularly true for models with additional delays or extra parameters, which can result in misleadingly high $R^2$ values while failing to generalize.

For example, Participant 3's model with parameters [1 1 2 0] achieved an excellent $R^2_{CAP}$ of 0.984874 and YIC of -9.668, as shown in Figure 3. However, an alternative model with parameters [1 1 0 0] produced a better visual fit to the data (Figure 4), despite having a lower $R^2$ of 0.700795 and higher YIC of -0.947. This emphasizes the importance of considering multiple criteria during model selection.

The tables below summarize the results for each participant, showing the YIC, $R^2$, AIC, and other relevant metrics, along with the distributions of a and b parameters for the models.

#### Tables

| Participant | # a-para | # b-para | Delays | AR  | YIC    | $R^2$ | AIC    | S2      | EVN       | CondP     |
|-------------|----------|----------|--------|-----|--------|-------|--------|---------|-----------|-----------|
| 1           | 1        | 1        | 0      | 1   | -18.434| 0.998549 | -3.268 | 3.2836  | -12.6207  | 0.0000e+00|
| 2           | 1        | 1        | 0      | 0   | -16.709| 0.998102 | -2.276 | 2.8552  | -12.6145  | 0.0000e+00|
| 3           | 1        | 1        | 0      | 0   | -0.947 | 0.700795 | 2.2    | 7.7851  | -7.1630   | 0.0000e+00|
| 4           | 1        | 1        | 0      | 0   | -9.003 | 0.972577 | 4.05   | 1.2295  | -10.0204  | 0.0000e+00|
| 5           | 1        | 1        | 0      | 1   | -16.138| 0.997113 | -2.276 | 8.8532  | -12.2981  | 0.0000e+00|
| 6           | 1        | 1        | 0      | 1   | -16.046| 0.996954 | -2.349 | 8.2350  | -12.0069  | 0.0000e+00|
| 7           | 1        | 1        | 0      | 0   | -9.679 | 0.979289 | 0.147  | 9.992e-01| -10.1183  | 0.0000e+00|
| 8           | 1        | 1        | 0      | 1   | -11.307| 0.985563 | -0.658 | 4.4667  | -10.7327  | 0.0000e+00|
| 9           | 1        | 1        | 0      | 0   | -14.836| 0.996083 | -2.402 | 7.8047  | -11.1039  | 0.0000e+00|
| 10          | 1        | 1        | 0      | 1   | -14.444| 0.995668 | -1.399 | 2.1298  | -11.8927  | 0.0000e+00|
| 11          | 1        | 1        | 0      | 0   | -4.571 | 0.892236 | 1.585  | 4.2058  | -9.2670   | 0.0000e+00|
| 12          | 1        | 1        | 0      | 0   | -0.434 | 0.676610 | 2.478  | 1.027e+01| -7.1192   | 0.0000e+00|
| 13          | 1        | 1        | 0      | 0   | -2.474 | 0.811897 | 2.016  | 6.4755  | -8.1145   | 0.0000e+00|

***Table 1** – Number of a and b parameters per individual, YIC, $R^2$, and AIC*

| Participant | $R^2_{CAP}$ |
|-------------|-------------|
| 1           | 0.9982      |
| 2           | 0.9980      |
| 3           | 0.9357      |
| 4           | 0.9717      |
| 5           | 0.9971      |
| 6           | 0.9974      |
| 7           | 0.9978      |
| 8           | 0.9856      |
| 9           | 0.9957      |
| 10          | 0.9971      |
| 11          | 0.8922      |
| 12          | 0.6766      |
| 13          | 0.8119      |

***Table 2** –* $R^2_{CAP}$ *per participant*

---

### a and b Parameters

| Participant | $a_0$ | $a_1$  |
|-------------|-------|--------|
| 1           | 1     | -0.8821 |
| 2           | 1     | -0.9361 |
| 3           | 1     | -1.0215 |
| 4           | 1     | -0.9112 |
| 5           | 1     | -0.9148 |
| 6           | 1     | -1.0321 |
| 7           | 1     | -0.8935 |
| 8           | 1     | -0.9057 |
| 9           | 1     | -0.9200 |
| 10          | 1     | -0.9088 |
| 11          | 1     | -0.9164 |
| 12          | 1     | -1.0039 |
| 13          | 1     | -1.0230 |
| 14          | 1     | -1.0134 |

_**Table 3** – a-parameters for each participant_

| Participant | $b_0$      |
|-------------|------------|
| 1           | 7.9399E-04 |
| 2           | 8.9276E-04 |
| 3           | -2.7104E-04 |
| 4           | 0.0012     |
| 5           | 9.4943E-04 |
| 6           | -3.0777E-04 |
| 7           | 8.1045E-04 |
| 8           | 0.0013     |
| 9           | 6.7302E-04 |
| 10          | 5.6733E-04 |
| 11          | -4.1253E-04 |
| 12          | -2.7361E-04 |
| 13          | -3.4935E-04 |

_**Table 4** – b-parameters for each participant_

---

### SSG and TC

For the eleven 1st-order models, the steady-state gain (SSG) and time constant (TC) are calculated as follows:

$$
SSG = \frac{b_0}{1 + a_1}
$$
$$
TC = -\frac{\Delta t}{\ln(-a_1)}
$$

With $\Delta t = 1$ min, the following values were computed:

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

_**Table 5** – SSG and TC per participant_

---

### Figures

![Figure 3 – Plot of measured and modeled data with parameters [1 1 2 0] for Participant 3](https://github.com/user-attachments/assets/8f0ee06e-1f93-4146-9571-9e86f1de8cd1)

_**Figure 3** – Plot of measured and modeled data with parameters [1 1 2 0] for Participant 3_

![Figure 4 – Plot of measured and modeled data with parameters [1 1 0 0] for Participant 3](https://github.com/user-attachments/assets/d30b8617-9852-4f0b-a158-abdf6149ea7e)

_**Figure 4** – Plot of measured and modeled data with parameters [1 1 0 0] for Participant 3_

![Figure 5 – Distribution of a-parameters](https://github.com/user-attachments/assets/767acc78-8ff7-4221-8db4-7056d6bf105e)

_**Figure 5** – Distribution of a-parameters_

![Figure 6 – Distribution of b-parameters](https://github.com/user-attachments/assets/cd4a04a9-c45d-4417-8d1c-48de65a26ebd)

_**Figure 6** – Distribution of b-parameters_

---

### 3. Biological Interpretation

#### 3.1 Average Model

In the next step, an average model was determined. This method results in the following general model:

$$
y(k) = 0.9488 \cdot y(k-1) + 0.00048213 \cdot u(k)
$$

This general model was applied to each column, and the CAPTAIN toolbox was used to obtain a simulated model. The $R^2_{CAP_{averaged}}$ is shown in Table 5.

![image](https://github.com/user-attachments/assets/5624a705-054b-4b51-95fb-941e6f7adba8)

_**Figure 7** – Comparison between BW and population model with EI as input (kg) vs time (weeks)_

| Participant | $R^2_{CAP_{averaged}}$ |
|-------------|------------------------|
| 1           | 0.9629                 |
| 2           | 0.3344                 |
| 5           | 0.2966                 |
| 7           | 0.8519                 |
| 8           | 0.0732                 |
| 9           | 0.9014                 |
| 10          | 0.9316                 |
| 13          | 0.2043                 |

***Table 6** –* $R^2_{CAP_{averaged}}$ *per participant*

It is noted that the $R^2_{CAP_{averaged}}$ is good for models 1, 7, 9, and 10. However, for models 2, 5, 8, and 11, the averaged $R^2_{CAP}$ values are poor. Additionally, no $R^2_{CAP_{averaged}}$ was found for models 3, 6, 12, and 14, as these models are unstable, with poles outside the unit circle on the iopzplot. These conclusions can also be seen in Figure 6. The population model underperforms compared to individual models due to the uneven distribution of the b-parameters (Figure 6). A more even distribution of b-parameters would provide a better representation of the data.

#### 3.2 Delay

No delay is considered because BW measurements occur at the end of each week. Thus, the impact of energy intake (EI) on body weight (BW) happens without delay, given digestion takes approximately 8 hours.

#### 3.3 Time-Invariant Population Model Discussion

##### 3.3.1 Interpretation of $a_1$ and $b_0$

- The higher the $a_1$ parameter, the more the output term $a_1 \cdot y(k-1)$ is increased, meaning that for each $k$, the preceding $k-1$ term has a greater impact. For most individuals, this means the simulated output is overshadowed by the preceding term $y(k-1)$. The $a_1$ parameter tends to drive the simulated output back to its baseline (Figure 7). Consequently, with a higher $a_1$, the system reaches steady state more quickly, limiting weight loss.

![Figuur 8 – Influence of increasing $a_1$ parameter](https://github.com/user-attachments/assets/767acc78-8ff7-4221-8db4-7056d6bf105e)

***Figure 8** – Influence of increasing* $a_1$ *parameter*

- The $b_0$ parameter, on the other hand, has an opposite effect to $a_1$. It reduces the simulated output (Figure 7). A higher $b_0$ means that food intake has a greater impact on body weight. A higher $b_0$ is observed when individuals are in a starvation mode, indicating food is processed more efficiently. Initially, when individuals consume food, $a_1$ has no impact, as output stays near steady state. Once weight begins to decrease, $b_0$ pushes the output lower, driving the system to a new steady state (weight loss).

![Figuur 9 – Influence of increasing $b_1$ parameter](https://github.com/user-attachments/assets/cd4a04a9-c45d-4417-8d1c-48de65a26ebd)

***Figure 9** – Influence of increasing* $b_1$ *parameter*

##### 3.3.2 SSG and TC

The SSG for a 1st-order model is defined as:

$$
SSG = \frac{b_0}{1 + a_1}
$$

For the population model, this results in 0.0094 kg. Thus, a 1kcal/day decrease in energy intake results in a steady-state decrease in body weight of 9.4 grams.

The time constant (TC) is defined as:

$$
TC = -\frac{\Delta t}{\ln(-a_1)}
$$

For the population model, this gives 19.02 weeks. This means it would take 19.02 weeks for the output to reach 63% of its new steady state value after an input change.

---

#### 3.4 Time-Variant Model Discussion

##### 3.4.1 Time-Variant Model Estimation

The DARX function from the CAPTAIN toolbox was used. In this dynamic ARX model, the parameters vary slightly over time. This variation is modeled as a **random walk sequence**.

A noise variance ratio $Q_a$ was estimated using maximum likelihood optimization. After correction, a **smoothing** step was applied.

![Evolution of $a_1$ parameters vs time (weeks) per individual](https://github.com/user-attachments/assets/767acc78-8ff7-4221-8db4-7056d6bf105e)

***Figure 10** – Evolution of* $a_1$ *parameters vs time (weeks) per individual*

![Evolution of $b_0$ parameters vs time (weeks) per individual](https://github.com/user-attachments/assets/cd4a04a9-c45d-4417-8d1c-48de65a26ebd)

***Figure 11** – Evolution of* $b_0$ *parameters vs time (weeks) per individual*

| Participant | $R^2_{DARX}$ |
|-------------|--------------|
| 1           | 1            |
| 2           | 0.995        |
| 3           | 0.9976       |
| 4           | 0.9999       |
| 5           | 0.9951       |
| 6           | 1            |
| 7           | 0.8911       |
| 8           | 0.9348       |
| 9           | 0.9796       |
| 10          | 0.9988       |
| 11          | 0.8031       |
| 12          | 0.9995       |
| 13          | 0.9951       |

***Table 7** –* $R^2_{DARX}$ *for each individual*

It can be observed that the $a_1$ parameters remain relatively constant for almost all individuals (Figure 8). Only individuals 8 and 11 show time-dependent variations. Even though most $a_1$ parameters appear stable, they fluctuate within their boundaries, ranging from -0.5 to -1.25.

The $b_0$ parameters, on the other hand, show stronger fluctuations but remain within narrow bounds, ranging from 0.005 to 0.0005. All $b_0$ parameters, except for model 12, exhibit an upward trend. This trend correlates with a reduced energy intake during the later weeks of the study, pushing individuals into a starvation mode. This increase in $b_0$ is in line with reduced energy intake and the resulting physiological changes observed towards the end of the study.

---

## Problem 2: Impedance Response of Cancer Cells

### Data Preparation
The dataset contains impedance response data for wild-type and mutated cancer cell receptors, with measurements sampled at 1 Hz. The input is the presence or absence of a ligand, and the output is the **cell index (CI)**. The data is visualized and pre-processed before proceeding to system identification.

![Figuur 12 – gemeten output voor cellen van het type: WildType, Mutatie334, Mutatie343, Unknown en input](https://github.com/user-attachments/assets/fbf34e1a-4c07-4891-bb52-03779cde5f78)  
_**Figuur 12** – Measured output for cells of type: WildType, Mutatie334, Mutatie343, Unknown, and input_

---

### System Identification
ARX models with different structures are fitted to the data, and the best model for each cell type is selected. For each dataset, the **a- and b-parameters** are determined. Stable ARX models are split into **series, parallel**, or **feedback configurations**, and first-order models are calculated. Stability and coupling of cellular processes are assessed by analyzing these configurations.

#### Equation for Feedback Configuration:

$$
y(k) = \frac{B_0}{1 + A_1 z^{-1} + A_2 z^{-2}} u(k)
$$

Where:
- $A_1$ and $A_2$ are the poles from the first-order TFs (transfer functions).
- $B_0$ is the constant coefficient for the input function.

The general second-order feedback model can be re-written as:

$$
y(k) = \frac{b_1}{1 + a_1 z^{-1}} \cdot \frac{b_1}{1 + a_2 z^{-1}} u(k)
$$

Rewriting for clarity, this becomes:

$$
y(k) = \frac{B_0 + B_1 z^{-1}}{1 + A_1 z^{-1} + A_2 z^{-2}} u(k)
$$

#### Identified Models for Each Cell Type:

| Cell Type  | A1        | A2        | B0       | B1       | Delay    | YIC       | $R^2$  |
|------------|-----------|-----------|----------|----------|----------|-----------|--------|
| WildType   | -1.9907   | 0.9908    | 0.0062   | -0.0062  | 0        | -27.0150  | 0.9976 |
| M334       | -1.9949   | 0.9997    | 0.0058   | -0.0058  | 0        | -22.8070  | 0.9987 |
| M343       | -1.9966   | 0.9994    | 0.0052   | -0.0052  | 0        | -24.9360  | 0.9985 |
| Unknown    | -1.9942   | 0.9985    | 0.0043   | -0.0043  | 0        | -20.5960  | 0.9991 |

***Table 8** – Identified models for WildType, Mutatie334, Mutatie343, and Unknown cells.*

---

### Higher-Order Systems
For higher-order systems, the parameters are extracted from the second-order model based on the identified poles and coefficients from the first-order transfer functions.

#### Second-Order Feedback Model:

$$
y(k) = \frac{B_0 + B_1 z^{-1}}{1 + A_1 z^{-1} + A_2 z^{-2}} u(k)
$$

Where:
- $A_1$, $A_2$ are the poles from the combined first-order TF.
- $B_0$, $B_1$ represent the coefficients of the input function.

#### Table of Parameters for Each Cell Type:
| Cell  | A1        | A2        | B1       | B2       | TC1       | TC2        | SSG1      | SSG2      |
|-------|-----------|-----------|----------|----------|-----------|------------|-----------|-----------|
| WT1   | -0.99185  | -0.99896  | 0.00625  | 0.00602  | 122.22399 | 964.27197  | 0.76692   | 5.81008   |
| WT2   | -0.98623  | -0.99964  | 0.01438  | 0.00283  | 72.13169  | 2784.98712 | 1.04478   | 7.88707   |
| WT3   | -0.98790  | -0.99934  | 0.01449  | 0.00332  | 82.76472  | 1510.68097 | 1.20654   | 5.02015   |
| WT4   | -0.99153  | -1.00000  | 0.01187  | 0.00382  | 117.49870 | 1234.90077 | 1.31511   | 4.68902   |
| M3341 | -0.99280  | -0.99665  | 0.00568  | 0.00405  | 138.31705 | 297.66123  | 0.78886   | 1.21090   |
| M3342 | -1.01024  | -0.99190  | 0.00212  | 0.01360  | -98.15090 | 54.73408   | -0.20676  | 7.51766   |
| M3431 | -0.98691  | -0.99968  | 0.00868  | 0.00625  | 75.89573  | 500.23934  | 0.66298   | 1.68965   |
| Unknown1 | -0.98863  | -0.99942  | 0.01252  | 0.00396  | 186.65236 | 891.53040 | 1.14684   | 5.33281   |

***Table 9** – Poles* $a_1$, $a_2$, *coefficients* $b_1$, $b_2$, *and characteristics like* **TC1**, **TC2**, **SSG1**, **SSG2** *for each cell type.*

---

### Classification
The two unknown receptor types are classified based on model characteristics (a- and b-parameters, **SSG**, **TC-values**). Visual methods such as scatter plots and box plots are used for classification, comparing the unknown measurements with the known receptor types.

![Figuur 13 – Boxplots van a1, b1 en b2 per celtype](https://github.com/user-attachments/assets/8f992697-3df5-4e70-b49e-39f85a7b3593)  
***Figuur 13** – Boxplots of* $a_1$, $b_1$, *and* $b_2$ *per cell type*

![Figuur 14 – Boxplots van b2 per celtype met C1 en C2 van het celtype Unknown](https://github.com/user-attachments/assets/697cb3a9-abb9-4bc3-960f-2e51e7baa77c)  
***Figuur 14** – Boxplots for* $b_2$ *per cell type with* $C_2$ *and* $C_2$ *of the Unknown type*

---

### How to Run the Project
The project can be run by following the steps below:

1. **Clone the repository**.
2. **Open MATLAB** and load the data files provided in the repository.
3. **Run the script** for system identification and classification.
4. **Evaluate the output** through the generated plots, tables, and summary statistics.
