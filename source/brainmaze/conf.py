# docs/source/brainmaze/conf.py

extensions = [
    'sphinx.ext.intersphinx',
    'sphinx_design',
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',  # If you use Google/NumPy style docstrings
    'sphinx.ext.coverage',
    'sphinx.ext.autosectionlabel'
]

project = 'BrainMaze'
html_title = 'BrainMaze: A Toolbox to Analyze Brain Electrophysiology, Behavior and Dynamics'
html_short_title = 'BrainMaze Docs'
html_logo = "../../img/brainmaze_1757x1762.png"
html_favicon = "../../img/brainmaze_173x173.png"

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