# Configuration file for the Sphinx documentation builder.

import sys, os
import sphinx_rtd_theme

sys.path.append(os.path.abspath('ext'))
sys.path.append('.')

from links.link import *
from links import *

# -- Project information

project = 'Mautic Documentation'
copyright = '2021, Mautic'
author = 'Mautic'

release = '0.1'
version = '0.1.0'

# -- General configuration

extensions = [
    'sphinx.ext.duration',
    'sphinx.ext.doctest',
    'sphinx.ext.autodoc',
    'sphinx.ext.autosummary',
    'sphinx.ext.intersphinx',
]

intersphinx_mapping = {
    'python': ('https://docs.python.org/3/', None),
    'sphinx': ('https://www.sphinx-doc.org/en/master/', None),
}
intersphinx_disabled_domains = ['std']

templates_path = ['_templates']

# -- Options for HTML output

html_theme = 'sphinx_rtd_theme'

# -- Options for EPUB output
epub_show_urls = 'footnote'
