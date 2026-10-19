.. _mef3:

MEF3 tools
==========

The **Multiscale Electrophysiology Format (MEF 3.0)** is a compressed,
optionally encrypted file format designed for large-scale, long-term
electrophysiology recordings. BNEL develops and maintains an open toolchain for
working with MEF 3.0 data, from low-level reading and writing to
high-throughput streaming for viewers and data-processing applications, and a
desktop app for working with recordings without programming.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: mef3io
      :link: https://bnelair.github.io/mef3io/

      The current library for reading and writing MEF 3.0 data from Python,
      MATLAB and C++, and for de-identifying it from Python and C++.
      **Replaces mef_tools.**

   .. grid-item-card:: mef3io-server
      :link: https://bnelair.github.io/mef3io-server/

      A gRPC server and client for efficient, concurrent streaming of MEF3
      data, with caching and prefetch for viewers and data-processing
      applications.

   .. grid-item-card:: mef3io-studio (pre-release)
      :link: https://github.com/bnelair/mef3io-studio

      Desktop app for exploring and anonymizing MEF 3.0 recordings, built on
      mef3io (Windows, macOS, Linux).

   .. grid-item-card:: mef3io-coregistration
      :link: https://github.com/bnelair/mef3io-coregistration

      Read two MEF3 recordings that were coregistered (aligned onto one
      clock) as if they were one recording. Built on mef3io.

mef3io
------

``mef3io`` is the recommended library for MEF 3.0 data. It reads and writes
MEF 3.0 recordings (EEG, iEEG, ECG and other regularly sampled signals) from
**Python**, **MATLAB** and **C++**, with one C++ core shared by all three, and
makes de-identified copies from Python and C++ (from MATLAB, through
``python -m mef3io anonymize`` in a terminal). Sessions written by mef3io open in the established MEF 3.0 tools
(meflib, pymef, mef_tools) and vice versa. It is the successor to
``mef_tools`` and the starting point for new projects that work with MEF 3.0
files.

- **Install**: ``pip install mef3io``
- **Documentation**: https://bnelair.github.io/mef3io/
- **Repository**: https://github.com/bnelair/mef3io

mef3io-server
-------------

``mef3io-server`` is a gRPC server and client for efficient, concurrent access
to MEF3 electrophysiology data. Every data call is addressed by channels and
time. It is backed by a shared per-channel cache, parallel decoding across
worker processes (built on mef3io), and configurable prefetch, and is aimed at
scenarios that need fast, repeated access to large recordings, in particular:

- **pre-caching in viewers**, so that scrolling and paging through long
  recordings stays responsive, and
- **data-processing applications**, where many workers stream overlapping
  segments concurrently.

It can also run in Docker.

- **Install**: ``pip install mef3io-server``
- **Documentation**: https://bnelair.github.io/mef3io-server/
- **Repository**: https://github.com/bnelair/mef3io-server

mef3io-studio
-------------

.. note::

   **Pre-release.** mef3io-studio is in early development. Only test versions
   are available so far, and the builds are not code-signed yet.

``mef3io-studio`` is a desktop app for exploring and anonymizing MEF 3.0
recordings, with no programming needed. It runs on **Windows, macOS and
Linux** and is built on mef3io, so every change it makes to a file is done by
the same code that the Python and MATLAB libraries use. There is no ``pip``
package: download the installer for your system from the GitHub Releases page.

- **Download**: https://github.com/bnelair/mef3io-studio/releases
- **Repository**: https://github.com/bnelair/mef3io-studio

mef3io-coregistration
---------------------

``mef3io-coregistration`` reads two MEF3 recordings that were coregistered
(aligned onto one clock) as if they were one recording. It is only the reader:
it opens a saved coregistration result (``*.coreg.json``) and reads the
recordings through it. It is built on mef3io.

- **Repository**: https://github.com/bnelair/mef3io-coregistration

Deprecated and legacy
---------------------

.. warning::

   ``mef_tools`` is **deprecated** and kept as an archive for legacy support
   only. It is no longer actively developed. New projects should use
   `mef3io`_ (and `mef3io-server`_ where streaming is needed) instead.

``mef_tools`` was the original high-level BNEL library for reading and writing
MEF3 files. It builds on the upstream ``pymef``/``meflib`` stack. Existing code
that depends on it will continue to work, but it will not receive new features.
mef3io provides drop-in classes for it
(``from mef3io import MefReader, MefWriter``). The components below are listed
for legacy context:

- **mef_tools** (archived) — high-level read/write library, BNEL:
  https://github.com/bnelair/mef_tools
- **pymef** — Python wrapper for the MEF library, upstream (msel-source):
  https://github.com/msel-source/pymef
- **meflib** — the underlying MEF C library, upstream (msel-source):
  https://github.com/msel-source/meflib
