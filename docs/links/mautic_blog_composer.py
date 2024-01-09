from . import link

link_name = "composer blog post" 
link_text = "this blog post" 
link_url = "https://www.mautic.org/blog/community/important-changes-mautic-install-and-upgrade-process" 

link.xref_links.update({link_name: (link_text, link_url)})