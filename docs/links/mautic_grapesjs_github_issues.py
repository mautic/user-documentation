from . import link

link_name = "GitHub repository" 
link_text = "GitHub repository" 
link_url = "https://github.com/mautic/mautic/issues?q=is%3Aopen%2Bis%3Aissue%2Blabel%3Abuilder-grapesjs" 

link.xref_links.update({link_name: (link_text, link_url)})