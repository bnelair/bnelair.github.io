.. |logo_brainmaze| image:: ../../img/brainmaze_173x173.png
   :width: 30px
   :align: middle

.. include:: ./CONTENT.md
   :parser: markdown

.. toctree::
   :maxdepth: 1
   :caption: Projects:
   :hidden:

   MEF3 tools <mef3>
   Papers with Code <https://bnelair.github.io/bnel_projects/>

BrainMaze toolbox |logo_brainmaze|
==================================

BrainMaze is a modular Python toolbox for analyzing brain electrophysiology,
behavior, and dynamics. Each component is a standalone, ``pip``-installable
package with its own documentation.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: BrainMaze EEG
      :link: https://bnelair.github.io/brainmaze-eeg/

      EEG/iEEG analysis: interictal spike detection (Janca, Barkmeier, and a
      gap-aware wrapper for recordings with dropouts), slow-wave detection,
      sleep classification, hypnogram scoring, and CRP analysis of evoked
      responses.

   .. grid-item-card:: BrainMaze EEG Models
      :link: https://bnelair.github.io/brainmaze-eeg-models/

      Ready-to-use trained EEG/iEEG models on ONNX Runtime (CPU, or NVIDIA
      (CUDA) GPU via ``onnxruntime-gpu``; no PyTorch needed): seizure
      probability and OpenSpindleNet sleep-spindle detection.

   .. grid-item-card:: BrainMaze Utils
      :link: https://bnelair.github.io/brainmaze-utils/

      Shared signal, file, and statistics utilities used across the toolbox,
      including resampling and helpers for NaN gaps in recordings.

   .. grid-item-card:: BrainMaze ZMQ
      :link: https://bnelair.github.io/brainmaze-zmq/

      ZeroMQ communication wrappers for real-time acquisition pipelines.

   .. grid-item-card:: BrainMaze Torch (superseded)
      :link: https://bnelair.github.io/brainmaze-torch/

      Superseded by **BrainMaze EEG Models** (``brainmaze-eeg-models``), which
      carries on its seizure-probability model without needing PyTorch. New
      projects should use ``brainmaze-eeg-models``.

MEF3 tools
==========

Open-source toolchain for the Multiscale Electrophysiology Format (MEF 3.0):
libraries, a streaming server, and a desktop app. See the
:doc:`MEF3 tools <mef3>` page for details, including the deprecated
``mef_tools`` library.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: mef3io
      :link: https://bnelair.github.io/mef3io/

      Read and write MEF 3.0 recordings from Python, MATLAB and C++, and
      de-identify them from Python and C++. Replaces ``mef_tools``.

   .. grid-item-card:: mef3io-server
      :link: https://bnelair.github.io/mef3io-server/

      gRPC server and client for efficient, concurrent streaming of MEF3 data,
      with caching and prefetch for viewers and data-processing applications.

   .. grid-item-card:: mef3io-studio (pre-release)
      :link: https://github.com/bnelair/mef3io-studio

      Desktop app for exploring and anonymizing MEF 3.0 recordings, built on
      mef3io (Windows, macOS, Linux). Test versions are downloadable from
      GitHub Releases.

   .. grid-item-card:: mef3io-coregistration
      :link: https://github.com/bnelair/mef3io-coregistration

      Read two MEF3 recordings that were coregistered (aligned onto one
      clock) as if they were one recording. Built on mef3io.

More
====

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: Papers with Code 🔬
      :link: bnel_projects/index.html

      Code examples and links to papers from the Bioelectronics Neurophysiology
      and Engineering Lab (BNEL) at Mayo Clinic.
