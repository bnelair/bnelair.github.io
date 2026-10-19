# Bioelectronics Neurophysiology and Engineering Lab (BNEL): software hub

Source of **https://bnelair.github.io/**, the documentation hub for the open-source software of the Bioelectronics
Neurophysiology and Engineering Lab (BNEL) at Mayo Clinic. Each tool is its own repository with its own documentation;
this site links them together.

## BrainMaze toolbox
A modular Python toolbox for analyzing brain electrophysiology, behavior and dynamics. Each component is a standalone,
`pip`-installable package.

| Package | Purpose | Documentation | Repository |
|---|---|---|---|
| brainmaze-eeg | EEG/iEEG analysis: spike detection, slow-wave detection, sleep classification, hypnogram scoring, CRP analysis | [docs](https://bnelair.github.io/brainmaze-eeg/) | [repo](https://github.com/bnelair/brainmaze-eeg) |
| brainmaze-eeg-models | Trained EEG/iEEG models on ONNX Runtime (CPU, or NVIDIA (CUDA) GPU via `onnxruntime-gpu`; no PyTorch needed) | [docs](https://bnelair.github.io/brainmaze-eeg-models/) | [repo](https://github.com/bnelair/brainmaze-eeg-models) |
| brainmaze-utils | Shared signal, file and statistics utilities | [docs](https://bnelair.github.io/brainmaze-utils/) | [repo](https://github.com/bnelair/brainmaze-utils) |
| brainmaze-zmq | ZeroMQ communication wrappers for real-time acquisition pipelines | [docs](https://bnelair.github.io/brainmaze-zmq/) | [repo](https://github.com/bnelair/brainmaze-zmq) |
| brainmaze-torch | Superseded by brainmaze-eeg-models | [docs](https://bnelair.github.io/brainmaze-torch/) | [repo](https://github.com/bnelair/brainmaze-torch) |

## MEF3 tools
Open-source toolchain for the Multiscale Electrophysiology Format (MEF 3.0). See the
[MEF3 tools page](https://bnelair.github.io/mef3.html).

- **mef3io**: read and write MEF 3.0 recordings from Python, MATLAB and C++, and de-identify them from Python and C++.
  Replaces the deprecated `mef_tools`. [docs](https://bnelair.github.io/mef3io/), [repo](https://github.com/bnelair/mef3io)
- **mef3io-server**: gRPC server and client for efficient, concurrent streaming of MEF3 data.
  [docs](https://bnelair.github.io/mef3io-server/), [repo](https://github.com/bnelair/mef3io-server)
- **mef3io-studio** (pre-release): desktop app for exploring and anonymizing MEF 3.0 recordings.
  [repo](https://github.com/bnelair/mef3io-studio)
- **mef3io-coregistration**: read two MEF3 recordings that were coregistered (aligned onto one clock) as if they were
  one recording. [repo](https://github.com/bnelair/mef3io-coregistration)

## Papers with Code
Code examples and links to papers: https://bnelair.github.io/bnel_projects/ (for example,
[EEG slow-wave detection](https://bnelair.github.io/bnel_projects/project_wave_detector.html)).

## Building the site
```bash
pip install -r requirements.txt
make html        # output in docs/
```
The site is built and deployed to GitHub Pages by `.github/workflows/docs.yml` on every push to `main`; pull requests
are built but not deployed.

## Acknowledgment
When using the BrainMaze toolbox, please cite:

- **F. Mivalt et V. Kremen et al.**, “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” *J. Neural Eng.*, vol. 19, no. 1, p. 016019, Feb. 2022, doi: [10.1088/1741-2552/ac4bfd](https://doi.org/10.1088/1741-2552/ac4bfd).
- **V. Sladky et al.**, “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” *Brain Commun.*, vol. 4, no. 3, May 2022, doi: [10.1093/braincomms/fcac115](https://doi.org/10.1093/braincomms/fcac115).

## Method references
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
- [EEG slow-wave detection project page](https://bnelair.github.io/brainmaze-eeg/project_wave_detector.html)
- [Single file example with sample data](https://github.com/bnelair/brainmaze-eeg/tree/main/demo/eeg_wave_detection)

## Funding
This project was supported by:
- **NIH Brain Initiative UH2\&3 NS095495**: *Neurophysiologically-Based Brain State Tracking \& Modulation in Focal Epilepsy*.
- **NIH U01-NS128612**: *An Ecosystem of Technology and Protocols for Adaptive Neuromodulation Research in Humans*.
- **DARPA - HR0011-20-2-0028**: *Manipulating and Optimizing Brain Rhythms for Enhancement of Sleep (Morpheus)*.
- **FEKT-K-22-7649**: Realized within the project *Quality Internal Grants of the Brno University of Technology (KInG BUT)*, Reg. No. CZ.02.2.69/0.0/0.0/19_073/0016948, financed from the OP RDE.
