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
   Papers with Code <bnel_projects/index.html>

BrainMaze toolbox |logo_brainmaze|
==================================

BrainMaze is a modular Python toolbox for analyzing brain electrophysiology,
behavior, and dynamics. Each component is a standalone, ``pip``-installable
package with its own documentation.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: BrainMaze EEG
      :link: https://bnelair.github.io/brainmaze-eeg/

      iEEG signal processing, sleep classification, slow-wave and CRP analysis.

   .. grid-item-card:: BrainMaze Utils
      :link: https://bnelair.github.io/brainmaze-utils/

      Shared signal, file, and statistics utilities used across the toolbox.

   .. grid-item-card:: BrainMaze Torch
      :link: https://bnelair.github.io/brainmaze-torch/

      Deep-learning tools for the toolbox, including seizure detection.

   .. grid-item-card:: BrainMaze ZMQ
      :link: https://bnelair.github.io/brainmaze-zmq/

      ZeroMQ communication wrappers for real-time acquisition pipelines.

MEF3 tools
==========

Open Python and gRPC toolchain for the Multiscale Electrophysiology Format
(MEF3). See the :doc:`MEF3 tools <mef3>` page for details, including the
deprecated ``mef_tools`` library.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: mef3io
      :link: https://bnelair.github.io/mef3io/

      Read and write MEF3 data in Python. Replaces ``mef_tools``.

   .. grid-item-card:: mef3io-server
      :link: https://bnelair.github.io/mef3io-server/

      gRPC streaming server with pre-caching for viewers and data-processing
      applications.

More
====

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: Papers with Code 🔬
      :link: bnel_projects/index.html

      Code examples and links to papers from the Bioelectronics Neurophysiology
      and Engineering Lab (BNEL) at Mayo Clinic.
