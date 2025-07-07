# docs/source/brainmaze/conf.py

import os
import sys
sys.path.insert(0, os.path.abspath('../../tmp/codes'))

extensions = [
    'sphinx.ext.intersphinx',
    'sphinx_design',
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',  # If you use Google/NumPy style docstrings
    'sphinx.ext.coverage',
    'sphinx.ext.autosectionlabel'
]

project = 'BrainMaze: A Toolbox to Analyze Brain Electrophysiology, Behavior and Dynamics'
author = 'Bioelectronics Neurophysiology & Engineering Lab - Filip Mivalt M.Sc., Ph.D.'
html_title = 'BrainMaze Docs'
html_short_title = 'BrainMaze Docs'
html_logo = "../../img/brainmaze_1757x1762.png"
html_favicon = "../../img/brainmaze_173x173.png"
latex_logo = "../../img/brainmaze_1757x1762.png"

html_theme = 'sphinx_book_theme'
# html_theme = 'pydata_sphinx_theme'

html_theme_options = {
    'collapse_navigation': False,
    'navigation_depth': 5,
    "repository_url": "https://github.com/bnelair/brainmaze_docs", # Or your specific project repo
    "use_repository_button": True,
    "home_page_in_toc": True,
}

intersphinx_mapping = {
    'main_page': ('..', '../../docs/objects.inv')
}

autosectionlabel_prefix_document = True
master_doc = 'index'

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['build', '_build', '._*', '._']

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'
# pygments_style = 'abap'

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = False

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
html_show_copyright = True


