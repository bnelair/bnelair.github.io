# BrainMaze Project

## Functionalities
- **EEG Signal Processing**: Includes transformations, classification, and feature extraction.

## Submodules
### BrainMaze Utils
- **Repository**: [Repo](https://github.com/bnelair/brainmaze_utils)
- **Documentation**: [Documentation](https://bnelair.github.io/brainmaze_utils/)
- **Description**: Elementary utilities used across multiple BrainMaze projects and codes. This was separated to ensure lightweight deployment and package controllability.

### BrainMaze ZMQ
- **Repository**: [Repo](https://github.com/bnelair/brainmaze-zmq)
- **Documentation**: [Documentation](https://bnelair.github.io/brainmaze_zmq/)
- **Description**: Wrappers around ZMQ controlling for optimal socket release after process termination.

## Acknowledgment
This code was developed and originally published by **Mivalt (2022)** and **Sladky (2022)**. When using this toolbox, please cite the related papers. See the sections below for references to individual submodules.

- **F. Mivalt et V. Kremen et al.**, “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” *J. Neural Eng.*, vol. 19, no. 1, p. 016019, Feb. 2022, doi: [10.1088/1741-2552/ac4bfd](https://doi.org/10.1088/1741-2552/ac4bfd).
- **V. Sladky et al.**, “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” *Brain Commun.*, vol. 4, no. 3, May 2022, doi: [10.1093/braincomms/fcac115](https://doi.org/10.1093/braincomms/fcac115).

## Submodule References
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