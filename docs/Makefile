# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     =
BUILDDIR      = build
LINKSDIR      = links
LINKCHECKDIR  = build/linkcheck

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

.PHONY: link
link:
	@read -p "Enter a Unique Link Name: " link_name; \
	read -p "Enter the link text the user sees: " link_text; \
	read -p "Enter the URL: " link_url; \
	read -p "Enter the .py file name (use_lower_case_and_underscore of link name): " file_name; \
	echo "The link name is: " $$link_name; \
	echo "The link text is: " $$link_text; \
	echo "The URL is: " $$link_url; \
	echo "Creating the file: " $(LINKSDIR)/$$file_name".py"; \
	echo "Enter the link in content as :xref:\`"$$link_name"\`"; \
	echo "The user will see:" $$link_text; \
	echo "Make sure you build and test the link."; \
  echo "from . import link\n\nlink_name = \"$$link_name\" \n\
link_text = \"$$link_text\" \n\
link_url = \"$$link_url\" \n\n\
link.xref_links.update({link_name: (link_text, link_url)})" \
  > $(LINKSDIR)/$$file_name".py" \

.PHONY: checklinks
checklinks:
	$(SPHINXBUILD) -b linkcheck . $(LINKCHECKDIR)
	@echo
	@echo "Check finished. Report is in $(LINKCHECKDIR)."

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
