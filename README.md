
# Ranking Programming Languages by Energy Efficiency

## Introduction

The "Ranking Programming Languages by Energy Efficiency" study (SCP 2021) aimed to evaluate programming languages based on their energy consumption, performance, and memory usage using Rosetta Code examples. However, reproducing these results is challenging due to several issues: the use of hardcoded values, outdated benchmarks, and poor design practices. Additionally, the metrics rely heavily on Linux systems and Intel CPUs, limiting generalization across different hardware or environments. Expanding this research to other workloads, compilers, interpreters, and containerized environments would require significant adaptation and modernization efforts.

## Reproducibility

### How to Reproduce the Results
1. **Requirements**  
   - Dependencies : Different compiler (C, Rust, Python, Java, Javascript)
   - System requirements : Linux and Intel CPU is mandatory

2. **Setting Up the Environment**  
   - Provide instructions for using the Dockerfile to create a reproducible environment:   //TODO
     ```bash
     docker build -t reproducible-project .
     docker run -it reproducible-project
     ```

3. **Reproducing Results**  
   - Describe how to run the automated scripts or notebooks to reproduce data and analyze results: //TODO
     ```bash
     bash scripts/run_analysis.sh
     ```
   - Mention Jupyter notebooks (if applicable):  
     Open `notebooks/reproduce_results.ipynb` to execute the analysis step-by-step.

4. **Automation (Bonus)**  
   - Explain the included GitHub Action that produces or analyzes data automatically.  
    
### Encountered Issues and Improvements
- Report any challenges, errors, or deviations from the original study. //TODO
- Describe how these issues were resolved or improved, if applicable. //TODO

### Is the Original Study Reproducible?
Reproducing the "Ranking Programming Languages by Energy Efficiency" study is particularly difficult due to several issues:
- Hardcoded Values: The use of fixed, non-adaptive parameters in the code limits flexibility and makes it difficult to adapt the benchmarks to different systems or configurations, reducing reproducibility.
- Outdated Benchmarks: The examples are based on older versions of programming languages and libraries, which may have been optimized or changed significantly since the study was conducted. This leads to discrepancies in performance and energy efficiency results when using modern versions.
- Poor Design Practices: Inconsistent coding styles, lack of documentation, and inadequate modularization hinder understanding and modification of the code. This makes it harder to ensure consistent results across different environments or workloads.
- Platform Dependency: The metrics are designed for Linux and Intel CPUs, making it difficult to reproduce results on other operating systems or hardware architectures (e.g., ARM, AMD). This platform dependency restricts the study's applicability and generalization.
- Toolchain Variability: Differences in compilers, interpreters, and measurement tools can lead to variations in energy consumption results, requiring careful calibration and consistent tool versions to ensure accurate comparisons.

//TODO graphics

## Replicability

### Variability Factors
- **List of Factors**: Identify all potential sources of variability (e.g., dataset splits, random seeds, hardware).  
  Example table:
  | Variability Factor | Possible Values     | Relevance                                   |
  |--------------------|---------------------|--------------------------------------------|
  | Random Seed        | [0, 42, 123]       | Impacts consistency of random processes    |
  | Hardware           | CPU, GPU (NVIDIA)  | May affect computation time and results    |
  | Dataset Version    | v1.0, v1.1         | Ensures comparability across experiments   |

- **Constraints Across Factors**:  
  - Document any constraints or interdependencies among variability factors.  
    For example:
    - Random Seed must align with dataset splits for consistent results.
    - Hardware constraints may limit the choice of GPU-based factors.

- **Exploring Variability Factors via CLI (Bonus)**  
   - Provide instructions to use the command-line interface (CLI) to explore variability factors and their combinations:  
     ```bash
     python explore_variability.py --random-seed 42 --hardware GPU --dataset-version v1.1
     ```
   - Describe the functionality and parameters of the CLI:
     - `--random-seed`: Specify the random seed to use.
     - `--hardware`: Choose between CPU or GPU.
     - `--dataset-version`: Select the dataset version.


### Replication Execution
1. **Instructions**  
   - Provide detailed steps or commands for running the replication(s):  
     ```bash
     bash scripts/replicate_experiment.sh
     ```

2. **Presentation and Analysis of Results**  
   - Include results in text, tables, or figures.
   - Analyze and compare with the original study's findings.

### Does It Confirm the Original Study?
- Summarize the extent to which the replication supports the original study’s conclusions.
- Highlight similarities and differences, if any.

## Conclusion
- Recap findings from the reproducibility and replicability sections.
- Discuss limitations of your
