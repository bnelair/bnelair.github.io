# docs/source/bnel_projects/conf.py

extensions = [
    'sphinx.ext.intersphinx',
    'sphinx_design',
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',  # If you use Google/NumPy style docstrings
    'sphinx.ext.coverage',
    'sphinx.ext.autosectionlabel'
]

project = 'BNEL - Main Page'
author = 'Bioelectronics Neurophysiology & Engineering Lab'
html_title = 'BNEL - Main Page'
html_short_title = 'BNEL - Main Page'
html_logo = "../../img/logo_bnel.png"
html_favicon = "../../img/logo_bnel.png"
latex_logo = "../../img/logo_bnel.png"

html_theme = 'sphinx_book_theme'
# html_theme = 'pydata_sphinx_theme'

html_theme_options = {
    'collapse_navigation': False,
    'navigation_depth': 5,
    "repository_url": "https://github.com/bnelair/bnelair.github.io", # Or your specific project repo
    "use_repository_button": True,
    "home_page_in_toc": True,
    "external_links": [
        # {"name": "Test Main Page Link", "url": "../index.html"},
        {"name": "Test Google Link", "url": "www.google.com"},
    ]
}

version = '0.0.1'
release = '0.0.1'
language = 'en'

autosectionlabel_prefix_document = True

# source_suffix = ['.rst', '.md']
# source_suffix = {
#    '.rst': 'restructuredtext',
#    '.md': 'markdown',
# }

master_doc = 'index'
exclude_patterns = ['build', '_build', '._*', '._']

pygments_style = 'sphinx'
# pygments_style = 'abap'

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = False

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
html_show_copyright = True


# Output file base name for HTML help builder.
htmlhelp_basename = 'BNEL Documentation'




