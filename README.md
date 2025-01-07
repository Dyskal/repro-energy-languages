
# Ranking Programming Languages by Energy Efficiency

## Introduction

The "Ranking Programming Languages by Energy Efficiency" study (SCP 2021) aimed to evaluate programming languages based on their energy consumption, performance, and memory usage using Rosetta Code examples. However, reproducing these results is challenging due to several issues: the use of hardcoded values, outdated benchmarks, and poor design practices. Additionally, the metrics rely heavily on Linux systems and Intel CPUs, limiting generalization across different hardware or environments. Expanding this research to other workloads, compilers, interpreters, and containerized environments would require significant adaptation and modernization efforts.

## Reproducibility

### How to Reproduce the Results
1. **Requirements**  
   - Dependencies : Different compilers (C, Rust, Python, Java, Javascript)
   - System requirements : Linux and Intel CPU is mandatory
   - Ubuntu is recommended

2. **Setting Up the Environment**
     ```bash
     sudo modprobe msr
     chmod +x ./deps.sh && ./deps.sh
     ```

3. **Reproducing Results**
     - Open `reproduce_results.ipynb` to execute the analysis step-by-step.
    
### Encountered Issues and Improvements
During the reproduction process, we encountered several challenges that highlighted the limitations of the original study:

- **Hardcoded Values**: The reliance on fixed parameters in the benchmarks limited flexibility and adaptability. This made it difficult to run the benchmarks in different environments without manual adjustments.

- **Outdated Benchmarks**: Many benchmarks were based on older versions of programming languages and libraries, leading to discrepancies in performance and energy efficiency results when using modern versions. We updated these benchmarks to the latest stable language versions to show changes of modern days compilers.

- **Poor Design Practices**: The original code exhibited inconsistent coding styles, lack of documentation, and inadequate modularization, which hindered understanding and made it challenging to reproduce results consistently.

- **Platform Dependency**: The metrics were specifically designed for Linux and Intel CPUs, complicating reproduction on other operating systems or hardware architectures (e.g., ARM, AMD). This platform dependency restricted the applicability of the study.

- **Toolchain Variability**: Differences in compilers, interpreters, and measurement tools resulted in variations in energy consumption results, requiring careful calibration to ensure accurate comparisons.

While we did not modify the original code to maintain fidelity to the original study, we updated the compilers and language versions and we documented these challenges and provided guidelines for users to navigate them. This document aims to assist future researchers in reproducing the results as closely as possible while being aware of the inherent limitations.

### Is the Original Study Reproducible?
Reproducing the "Ranking Programming Languages by Energy Efficiency" study is particularly difficult due to several issues:
- **Hardcoded Values**: The use of fixed, non-adaptive parameters in the code limits flexibility and makes it difficult to adapt the benchmarks to different systems or configurations, reducing reproducibility.
- **Outdated Benchmarks**: The examples are based on older versions of programming languages and libraries, which may have been optimized or changed significantly since the study was conducted. This leads to discrepancies in performance and energy efficiency results when using modern versions.
- **Poor Design Practices**: Inconsistent coding styles, lack of documentation, and inadequate modularization hinder understanding and modification of the code. This makes it harder to ensure consistent results across different environments or workloads.
- **Platform Dependency**: The metrics are designed for Linux and Intel CPUs, making it difficult to reproduce results on other operating systems or hardware architectures (e.g., ARM, AMD). This platform dependency restricts the study's applicability and generalization.
- **Toolchain Variability**: Differences in compilers, interpreters, and measurement tools can lead to variations in energy consumption results, requiring careful calibration and consistent tool versions to ensure accurate comparisons.

## Replicability

### Variability Factors
Identifying potential sources of variability is crucial for understanding how different conditions can affect the results of our analysis. Below is a table summarizing key variability factors that may influence the outcomes:

| Variability Factor       | Possible Values                          | Relevance                                   |
|--------------------------|-----------------------------------------|--------------------------------------------|
| Compiler Version         | GCC 9.3, GCC 10.2, Clang 11.0          | Affects optimization and performance       |
| Programming Language Version | Python 3.8, Python 3.9, Java 11, Java 17 | Changes in performance characteristics |
| CPU Architecture         | Intel i5, Intel i7, AMD Ryzen 5       | Influences execution speed and efficiency  |
| Operating System         | Ubuntu 20.04, Ubuntu 22.04, Fedora 34 | Affects system calls and resource management |
| Hardware Configuration    | 8GB RAM, 16GB RAM, SSD, HDD           | Impacts overall performance                 |
| Environment Variables     | `OPTIMIZE=1`, `DEBUG=1`               | Can change compiler and interpreter behavior |
| Input Data Variability   | Small dataset, Large dataset            | Affects execution paths and resource usage |
| Measurement Tools        | `perf`, `powerstat`, `Intel VTune`    | Variability in accuracy and precision of measurements |

### Constraints Across Factors 
- **Interdependencies**: Some variability factors may have interdependencies. For example, the choice of compiler may be influenced by the programming language version being used, and certain optimizations may only be available in specific compiler versions.
- **Hardware Constraints**: The choice of CPU architecture may limit the available compilers or language versions that can be effectively utilized, as some compilers may not support certain architectures.

### Replication Execution //TODO
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
- Discuss limitations of your reproduction
