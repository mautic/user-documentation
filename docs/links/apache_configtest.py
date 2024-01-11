from . import link

link_name = "Apache configtest" 
link_text = "configtest" 
link_url = "http://httpd.apache.org/docs/2.2/programs/apachectl.html" 

link.xref_links.update({link_name: (link_text, link_url)})
