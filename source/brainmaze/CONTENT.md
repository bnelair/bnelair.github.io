# BrainMaze Project

BrainMaze: Brain Electrophysiology, Behavior and Dynamics Analysis Toolbox - A Python toolbox with tools for 
processing of intracranial iEEG recordings to analyze epilepsy, sleep, and other brain state dynamics.
The BrainMaze code has been divided into multiple separate packages to ensure modularity and ease of use. This is the 
main hub for the BrainMaze project, providing links to all submodules and containing documentation for the entire project.

Documentation to the whole BrainMaze project is available at [https://bnelair.github.io/brainmaze/](https://bnelair.github.io/brainmaze/).

This project was originally developed as a part of the 
[BEhavioral STate Analysis Toolbox (BEST)](https://github.com/bnelair/best-toolbox) project. However, further development and support 
has transferred to the BrainMaze project.

## Contributors
- Filip Mivalt M.Sc., Ph.D.
- Tereza Pridalova, M.Sc
- Vladminir Sladky, M.Sc.
- Vaclav Kremen, M.Sc., Ph.D., MBA

## Submodules

### BrainMaze EEG
- **Repository**: [Repo](https://github.com/bnelair/brainmaze_eeg)
- **Description**: Tools and utils to perform complex analysis of EEG and iEEG data. The tools currently include tools for:
- **Includes**:
  - iEEG signal preprocessing tools
  - iEEG feature extraction for sleep classification
  - Slow wave feature extraction and analysis
  - A Python implementation of the CRP method for evoked response potential analysis

### BrainMaze Torch
- **Repository**: [Repo](https://github.com/bnelair/brainmaze_torch)
- **Description**: Tools for deep learning and machine learning in the BrainMaze project. This includes:
- **Includes**:
  - Tools for seizure detection

### BrainMaze Utils
- **Repository**: [Repo](https://github.com/bnelair/brainmaze_utils)
- **Description**: Elementary utilities used across multiple BrainMaze projects and codes. This was separated to ensure lightweight deployment and package controllability.
- **Includes**:
  - Time series filtration and processing
  - Simplified Python file handling (similar to Matlab)
  - Annotation handling built on Pandas DataFrames
  - General-purpose utilities for various tasks such as statistics, distributions operations, vector operations, ...

### BrainMaze ZMQ
- **Repository**: [Repo](https://github.com/bnelair/brainmaze-zmq)
- **Description**: Elementary utils and abstract classes for Python ZMQ utilized within other projects and applications. 
- **Includes**:
  - Abstract wrappers around ZMQ controlling optimal socket release after process termination.

## How to Contribute
The project has 2 main protected branches within each of the respective repositories.
Branch *main* contains official software releases and brachn *dev* contains the latest feature implementations shared with developers.
To implement a new feature a new branch should be created from the *dev* branch with name pattern of *developer_identifier/feature_name*.

After the feature is implemented, a pull request can be created to merge the feature branch into the *dev* branch with. Pull requests need to be reviewed by the code owners.
Drafting of new releases will be performed by the code owners in using pull request from *dev* to *main* and drafting a new release on GitHub.

New code will be implemented with Sphinx compatible docstrings. This project utilizes [Google formated docs strings](https://sphinxcontrib-napoleon.readthedocs.io/en/latest/example_google.html). 
If a new module is being implemented a feature request needs to be submitted to create new documentation page for the module within specific repository.


## Acknowledgment
This code was developed and originally published by **Mivalt (2022)** and **Sladky (2022)**. When using this toolbox, please cite the related papers. See the sections below for references to individual submodules.

- **F. Mivalt et V. Kremen et al.**, “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” *J. Neural Eng.*, vol. 19, no. 1, p. 016019, Feb. 2022, doi: [10.1088/1741-2552/ac4bfd](https://doi.org/10.1088/1741-2552/ac4bfd).
- **V. Sladky et al.**, “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” *Brain Commun.*, vol. 4, no. 3, May 2022, doi: [10.1093/braincomms/fcac115](https://doi.org/10.1093/braincomms/fcac115).


## References

### Sleep Classification and Feature Extraction
- **F. Mivalt et V. Kremen et al.**, “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” *J. Neural Eng.*, vol. 19, no. 1, p. 016019, Feb. 2022, doi: [10.1088/1741-2552/ac4bfd](https://doi.org/10.1088/1741-2552/ac4bfd).
- **F. Mivalt et V. Sladky et al.**, “Automated sleep classification with chronic neural implants in freely behaving canines,” *J. Neural Eng.*, vol. 20, no. 4, p. 046025, Aug. 2023, doi: [10.1088/1741-2552/aced21](https://doi.org/10.1088/1741-2552/aced21).


#### Additional References
- **Gerla, V., et al.** (2019). Iterative expert-in-the-loop classification of sleep PSG recordings using a hierarchical clustering. *Journal of Neuroscience Methods*, 317(February), 61–70. doi: [10.1016/j.jneumeth.2019.01.013](https://doi.org/10.1016/j.jneumeth.2019.01.013)
- **Kremen, V., et al.** (2018). Automated Unsupervised Behavioral State Classification using Intracranial Electrophysiology. *Journal of Neural Engineering*. doi: [10.1088/1741-2552/aae5ab](https://doi.org/10.1088/1741-2552/aae5ab)
- **Kremen, V., et al.** (2017). Behavioral state classification in epileptic brain using intracranial electrophysiology. *Journal of Neural Engineering*, 14(2), 026001. doi: [10.1088/1741-2552/aa5688](https://doi.org/10.1088/1741-2552/aa5688)


### Seizure Detection
- **V. Sladky et al.**, “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” *Brain Commun.*, vol. 4, no. 3, May 2022, doi: [10.1093/braincomms/fcac115](https://doi.org/10.1093/braincomms/fcac115).


### Artificial Signal Generation
- **F. Mivalt et al.**, “Deep Generative Networks for Algorithm Development in Implantable Neural Technology,” in *2022 IEEE International Conference on Systems, Man, and Cybernetics (SMC)*, Oct. 2022, pp. 1736–1741, doi: [10.1109/SMC53654.2022.9945379](https://doi.org/10.1109/SMC53654.2022.9945379).


### Evoked Response Potential Analysis
- **K. J. Miller et al.**, “Canonical Response Parameterization: Quantifying the structure of responses to single-pulse intracranial electrical brain stimulation,” *PLOS Comput. Biol.*, vol. 19, no. 5, p. e1011105, May 2023, doi: [10.1371/journal.pcbi.1011105](https://doi.org/10.1371/journal.pcbi.1011105).


### EEG Slow Wave Detection and Analysis
- **Carvalho DZ, et al.**, “Non-rapid eye movement sleep slow-wave activity features are associated with amyloid accumulation in older adults with obstructive sleep apnoea,” *Brain Commun.*, Oct. 2024, doi: [10.1093/braincomms/fcae354](https://doi.org/10.1093/braincomms/fcae354).


#### Additional Resources
- [Readme to the EEG Slow Detection project](https://bnelair.github.io/brainmaze_eeg/project_wave_detector.html)
- [Single file example with sample data](https://github.com/bnelair/brainmaze_eeg/tree/main/demo/eeg_wave_detection)


## Funding
This project was supported by:
- **NIH Brain Initiative UH2\&3 NS095495**: *Neurophysiologically-Based Brain State Tracking \& Modulation in Focal Epilepsy*.
- **NIH U01-NS128612**: *An Ecosystem of Technology and Protocols for Adaptive Neuromodulation Research in Humans*.
- **DARPA - HR0011-20-2-0028**: *Manipulating and Optimizing Brain Rhythms for Enhancement of Sleep (Morpheus)*.
- **FEKT-K-22-7649**: Realized within the project *Quality Internal Grants of the Brno University of Technology (KInG BUT)*, Reg. No. CZ.02.2.69/0.0/0.0/19_073/0016948, financed from the OP RDE.


## Documentation Troubleshooting
If updating the docs web generated using sphinx, there might be a lot of changes resulting in a buffer hang up.
Using SSH over HTTPS is preferred. If you are using HTTPS, you can increase the buffer size by running the following command:

.. code-block:: bash

    git config http.postBuffer 524288000