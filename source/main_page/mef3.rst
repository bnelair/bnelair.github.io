.. _mef3:

MEF3 tools
==========

The **Multiscale Electrophysiology Format (MEF3)** is a compressed, encrypted
file format designed for large-scale, long-term electrophysiology recordings.
BNEL develops and maintains an open Python and gRPC toolchain for working with
MEF3 data, from low-level reading and writing to high-throughput streaming for
viewers and data-processing applications.

.. grid:: 1 2 2 2
   :gutter: 2

   .. grid-item-card:: mef3io
      :link: https://bnelair.github.io/mef3io/

      The current library for reading and writing MEF3 data in Python.
      **Replaces mef_tools.**

   .. grid-item-card:: mef3io-server
      :link: https://bnelair.github.io/mef3io-server/

      A gRPC server for efficient, concurrent streaming of MEF3 data, with
      pre-caching for viewers and data-processing applications.

mef3io
------

``mef3io`` is the recommended library for reading and writing MEF3 data in
Python. It is the successor to ``mef_tools`` and the starting point for new
projects that work with MEF3 files.

- **Documentation**: https://bnelair.github.io/mef3io/
- **Repository**: https://github.com/bnelair/mef3io

mef3io-server
-------------

``mef3io-server`` is a gRPC server for efficient, concurrent streaming of MEF3
electrophysiology data. It is aimed at scenarios that need fast, repeated access
to large recordings, in particular:

- **pre-caching in viewers**, so that scrolling and paging through long
  recordings stays responsive, and
- **data-processing applications**, where many workers stream overlapping
  segments concurrently.

- **Documentation**: https://bnelair.github.io/mef3io-server/
- **Repository**: https://github.com/bnelair/mef3io-server

Deprecated and legacy
---------------------

.. warning::

   ``mef_tools`` is **deprecated** and kept as an archive for legacy support
   only. It is no longer actively developed. New projects should use
   `mef3io`_ (and `mef3io-server`_ where streaming is needed) instead.

``mef_tools`` was the original high-level BNEL library for reading and writing
MEF3 files. It builds on the upstream ``pymef``/``meflib`` stack. Existing code
that depends on it will continue to work, but it will not receive new features.
The components below are listed for legacy context:

- **mef_tools** (archived) — high-level read/write library, BNEL:
  https://github.com/bnelair/mef_tools
- **pymef** — Python wrapper for the MEF library, upstream (msel-source):
  https://github.com/msel-source/pymef
- **meflib** — the underlying MEF C library, upstream (msel-source):
  https://github.com/msel-source/meflib
