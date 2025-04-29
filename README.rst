
BrainMaze: Brain Electrophysiology, Behavior and Dynamics Analysis Toolbox
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

This toolbox provides tools for processing of intracranial EEG recordings. This tool was separated from the BrainMaze toolbox to support a convenient and lightweight sharing of these tools across projects.

This project was originally developed as a part of the `BEhavioral STate Analysis Toolbox (BEST) <https://github.com/bnelair/best-toolbox>`_ project. However, the development has transferred under the BrainMaze project.

This project has adapted a significant portion of the `BEST Toolbox <https://github.com/bnelair/best-toolbox>`_ and more are coming. Separation was performed to ensure lightweight deployment and better control over to code in critical parts of this project. This includes Utils and ZMQ packages. Practical implementation would be not installing pytorch and all dependencies due to functions from ZMQ and Utils etc.

Current repositories include:

- Brainmaze EEG - `Repo <https://github.com/bnelair/brainmaze_eeg>`_ - `Documentation <https://bnelair.github.io/brainmaze_eeg/>`_
    - Functionalities related to EEG signal processing including transformations, classification and feature extraction.

- BrainMaze Utils - `Repo <https://github.com/bnelair/brainmaze_utils>`_ - `Documentation <https://bnelair.github.io/brainmaze_utils/>`_
    - Elementary utilities used across multiple BrainMaze projects and codes. This was separated to ensure lightweight deployment and package controllability.

- BrainMaze ZMQ - `Repo <https://github.com/bnelair/brainmaze-zmq>`_ - `Documentation <https://bnelair.github.io/brainmaze_zmq/>`_
    - Wrappers around ZMQ controlling for optimal socket release after process being killed etc.




Acknowledgment
"""""""""""""""""""
This code was developed and originally published for the first time by (Mivalt 2022, and Sladky 2022). Additionally, codes related to individual projects available in this repository are stated below. When using this toolbox, we appreciate you citing the papers related to the utilized functionality. Please, see the sections below for references to individual submodules.

 | F. Mivalt et V. Kremen et al., “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” J. Neural Eng., vol. 19, no. 1, p. 016019, Feb. 2022, doi: 10.1088/1741-2552/ac4bfd.
 |
 | V. Sladky et al., “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” Brain Commun., vol. 4, no. 3, May 2022, doi: 10.1093/braincomms/fcac115.

Sleep classification and feature extraction
'''''''''''''''''''''''''''''''''''''''''''''''
 | F. Mivalt et V. Kremen et al., “Electrical brain stimulation and continuous behavioral state tracking in ambulatory humans,” J. Neural Eng., vol. 19, no. 1, p. 016019, Feb. 2022, doi: 10.1088/1741-2552/ac4bfd.
 |
 | F. Mivalt et V. Sladky et al., “Automated sleep classification with chronic neural implants in freely behaving canines,” J. Neural Eng., vol. 20, no. 4, p. 046025, Aug. 2023, doi: 10.1088/1741-2552/aced21.

The work was based on the following references:

 | Gerla, V., Kremen, V., Macas, M., Dudysova, D., Mladek, A., Sos, P., & Lhotska, L. (2019). Iterative expert-in-the-loop classification of sleep PSG recordings using a hierarchical clustering. Journal of Neuroscience Methods, 317(February), 61?70. https://doi.org/10.1016/j.jneumeth.2019.01.013
 |
 | Kremen, V., Brinkmann, B. H., Van Gompel, J. J., Stead, S. (Matt) M., St Louis, E. K., & Worrell, G. A. (2018). Automated Unsupervised Behavioral State Classification using Intracranial Electrophysiology. Journal of Neural Engineering. https://doi.org/10.1088/1741-2552/aae5ab
 |
 | Kremen, V., Duque, J. J., Brinkmann, B. H., Berry, B. M., Kucewicz, M. T., Khadjevand, F., G.A. Worrell, G. A. (2017). Behavioral state classification in epileptic brain using intracranial electrophysiology. Journal of Neural Engineering, 14(2), 026001. https://doi.org/10.1088/1741-2552/aa5688

Seizure detection
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 | V. Sladky et al., “Distributed brain co-processor for tracking spikes, seizures and behaviour during electrical brain stimulation,” Brain Commun., vol. 4, no. 3, May 2022, doi: 10.1093/braincomms/fcac115.

Artificial Signal Generation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 | F. Mivalt et al., “Deep Generative Networks for Algorithm Development in Implantable Neural Technology,” in 2022 IEEE International Conference on Systems, Man, and Cybernetics (SMC), Oct. 2022, pp. 1736–1741, doi: 10.1109/SMC53654.2022.9945379.

Evoked Response Potential Analysis
'''''''''''''''''''''''''''''''''''''''''''''''
 | K. J. Miller et al., “Canonical Response Parameterization: Quantifying the structure of responses to single-pulse intracranial electrical brain stimulation,” PLOS Comput. Biol., vol. 19, no. 5, p. e1011105, May 2023, doi: 10.1371/journal.pcbi.1011105.

EEG Slow Wave Detection and Analysis
'''''''''''''''''''''''''''''''''''''''''''''''
 | Carvalho DZ, Kremen V, Mivalt F, St Louis EK, McCarter SJ, Bukartyk J, Przybelski SA, Kamykowski MG, Spychalla AJ, Machulda MM, Boeve BF, Petersen RC, Jack CR Jr, Lowe VJ, Graff-Radford J, Worrell GA, Somers VK, Varga AW, Vemuri P. Non-rapid eye movement sleep slow-wave activity features are associated with amyloid accumulation in older adults with obstructive sleep apnoea. Brain Commun. 2024 Oct 7;6(5):fcae354. doi: 10.1093/braincomms/fcae354. PMID: 39429245; PMCID: PMC11487750.

Readme to the EEG Slow Detection project available in this repository in the `documentation <https://bnelair.github.io/brainmaze_eeg/project_wave_detector.html>`_. A single file example with sample data is available `here <https://github.com/bnelair/brainmaze_eeg/tree/main/demo/eeg_wave_detection>`_.


Funding
""""""""""""""""""

Individual sections of this code were developed under different projects including:

- NIH Brain Initiative UH2&3 NS095495 - *Neurophysiologically-Based Brain State Tracking & Modulation in Focal Epilepsy*,
- NIH U01-NS128612 - *An Ecosystem of Techmology and Protocols for Adaptive Neuromodulation Research in Humans*,
- DARPA - HR0011-20-2-0028 *Manipulating and Optimizing Brain Rhythms for Enhancement of Sleep (Morpheus)*.
- FEKT-K-22-7649 realized within the project Quality Internal Grants of the Brno University of Technology (KInG BUT), Reg. No. CZ.02.2.69/0.0/0.0/19_073/0016948, which is financed from the OP RDE.


