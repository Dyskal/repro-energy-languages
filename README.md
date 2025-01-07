
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

### Replication Execution
1. **Instructions**  
   - Open `reproduce_results.ipynb` to execute the analysis step-by-step.

2. **Presentation and Analysis of Results**  
   - Include results in text, tables, or figures.
   - Analyze and compare with the original study's findings.

    Because we it's too long to test each algorithm we chose to compare only 5 of them which have a different types:

      - binary-trees: The binary-trees algorithm focuses on testing the performance of memory allocation, pointer manipulation, and tree traversal operations. It involves creating and destroying binary trees of various depths, measuring how efficiently the system can handle recursive data structures. This algorithm emphasizes memory management and recursion-heavy computation, making it distinct from numerical or array-heavy tasks.
      
      - fannkuch-redux: This algorithm calculates the maximum number of flips needed to sort a permutation of integers. It focuses on intensive computation with array manipulation and permutation generation. Fannkuch-Redux tests CPU performance with arithmetic operations and control flow, unlike binary-trees, which stresses memory allocation.
      
      - mandelbrot: Mandelbrot generates a visualization of the Mandelbrot set, a complex mathematical fractal. It requires heavy floating-point arithmetic and iterative computation. This algorithm is computationally intensive but emphasizes floating-point operations, contrasting with the integer-heavy fannkuch-redux and pointer-based binary-trees.
      
      - pidigits: This algorithm calculates the digits of π (pi) using arbitrary-precision arithmetic. It measures the system's efficiency in handling large numbers and precision-demanding operations. It focuses on big-integer arithmetic and mathematical precision, unlike the other algorithms, which rely more on standard data types or graphical computations.
      
      - spectral-norm: This algorithm computes the spectral norm of a matrix, involving matrix-vector multiplications and iterative convergence. It emphasizes linear algebra and floating-point arithmetic. Unlike the others, this algorithm is highly parallelizable and stresses matrix operations, making it distinct from tree traversal or fractal generation.

   Finally, we decided to compare the algorithms using four key metrics: mean time, mean CPU usage, and the standard deviation for both time and CPU usage. All graphs are available in the given notebook.

   
   | Language | CPU x̅ | CPU σ | Time x̅ | Time σ |
   |----------|----------|-----------|-----------|------------|
   | Rust | 29.53 | 0.78 | 935.08 | 33.32 |
   | C | 39.73 | 1.03 | 841.72 | 10.05 |
   | Java | 100.19 | 1.96 | 2103.06 | 29.34 |
   | Javascript | 405.42 | 22.06 | 13348.34 | 503.57 |
   | Python | 1033.44 | 45.14 | 23754.23 | 255.78 |

   | Language | CPU x̅ | CPU σ | Time x̅ | Time σ |
   |----------|----------|-----------|-----------|------------|
   | Rust | 162.48 | 2.12 | 5243.52 | 21.99 |
   | C | 227.45 | 8.76 | 4330.30  | 101.51 |
   | Java | 363.12 | 18.99 | 6230.90 | 239.97 | 
   | Javascript | 734.09 | 51.85 | 29182.92 | 517.52 |
   | Python | 10147.61 | 1134.06 | 209302.3 | 9289.59 |

   | Language | CPU x̅ | CPU σ | Time x̅ | Time σ |
   |----------|----------|-----------|-----------|------------|
   | Rust | 28.47 | 0.59 | 873.86 | 7.43 |
   | C | 40.46 | 1.34 | 760.62 | 4.17 |
   | Java | 106.51 | 1.49 | 1984.90 | 27.71 |
   | Javascript | 183.54 | 5.32 | 3646.54 | 102.97 |
   | Python | 5108.70 | 59.43 | 117835 | 667.99 |

   | Language | CPU x̅ | CPU σ | Time x̅ | Time σ |
   |----------|----------|-----------|-----------|------------|
   | Python | 2.13 | 0.41 | 87.52 | 18.07 |
   | Rust | 8.63 | 0.86 | 635.90 | 3.76 |
   | C | 14.06 | 0.69 | 536.68 | 7.22 |
   | Java | N/A | N/A | N/A | N/A |
   | Javascript | N/A | N/A | N/A | N/A |

   | Language | CPU x̅ | CPU σ | Time x̅ | Time σ |
   |----------|----------|-----------|-----------|------------|
   | C | 12.20 | 1.78 | 223.54 | 41.16 |
   | Rust | 14.28 | 0.18 | 386.49 | 7.32 |
   | Java | 29.02 | 0.22 | 752.68 | 4.73 |
   | Javascript | 62.52 | 3.02 | 2564.52 | 54.50 |
   | Python | 2872.61 | 87.23 | 65749.01 | 687.41 |
   
   In general, the results are close to those reported in the original paper. However, it is notable that Rust occasionally outperforms C in terms of the CPU x̅ (mean) metrics. Interestingly, for the pidigits benchmark, Python appears to be the best option. This unexpected result may be caused by Python's efficient implementation.

   In contrast to the x̅ metrics, the σ (standard deviation) metrics show significant deviations from the original paper. The variability between each iteration is substantially higher in our tests. This discrepancy can be explained by several factors, such as differences in the hardware environment, varying levels of background system activity, and the lack of fine-tuned optimizations in our experimental setup compared to the original study. Additionally, our benchmarking process might involve fewer iterations, leading to less stable results.

### Does It Confirm the Original Study?

   The replication largely supports the original study’s conclusions, as the overall performance trends appear consistent when comparing the languages and algorithms. The relative performance scales between the tested languages align well with the original findings, suggesting that the conclusions remain valid.

   However, differences in our testing environment, such as using a newer compiler version and different hardware, may account for some variations in specific metrics, particularly in terms of standard deviations and edge cases like the pidigits benchmark. These factors highlight the influence of platform-specific optimizations and variability, but they do not significantly alter the general conclusions drawn in the original study

   **Similarities** 

   The replication results show strong alignment with the original study in terms of mean time and mean CPU usage across the tested algorithms and languages. This consistency suggests that the relative performance scales between the languages are preserved, supporting the original conclusions about computational efficiency.

   **Differences**

   The most notable differences are observed in the standard deviation for time and CPU usage. Our results exhibit significantly higher variability between iterations compared to the original study. These discrepancies can likely be attributed to differences in the testing environment, such as newer compiler versions, updated hardware, or system background activity, which may introduce additional noise into the measurements.

## Conclusion
- Recap findings from the reproducibility and replicability sections.
- Discuss limitations of your reproduction
