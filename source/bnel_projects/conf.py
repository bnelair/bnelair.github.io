# docs/source/bnel_projects/conf.py

extensions = [
    'sphinx.ext.intersphinx',
    'sphinx_design',
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',  # If you use Google/NumPy style docstrings
    'sphinx.ext.coverage',
    'sphinx.ext.autosectionlabel'
]

project = 'BNEL Projects'
html_title = 'BNEL Projects'
html_short_title = 'BNEL Projects'
html_logo = "../../img/logo_bnel.png"
html_favicon = "../../img/logo_bnel.png"

html_theme = 'sphinx_book_theme'
# html_theme = 'pydata_sphinx_theme'

html_theme_options = {
    'collapse_navigation': False,

    "show_toc_level": 2,
    "use_edit_page_button": True,
    "use_issues_button": True,

    'navigation_depth': 5,
    "repository_url": "https://github.com/bnelair/brainmaze_docs", # Or your specific project repo
    "use_repository_button": True,
    "home_page_in_toc": True,
    "external_links": [
        {"name": "Test Main Page Link", "url": "../index.html"},
        {"name": "Test Google Link", "url": "https://www.google.com"},
    ]
}

intersphinx_mapping = {
    'main_page': ('..', '../../docs/objects.inv')
}

