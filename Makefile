# Makefile for Sphinx documentation with sphinx-multiproject

PROJECTS      := main_page bnel_projects brainmaze mef_tools

SOURCEDIR     = source
HTMLDIR       = docs
PYTHONCODEDIR = tmp/codes

# Phony targets prevent conflicts with files of the same name
.PHONY: html clean help all

# Default target
all: html

# Show help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  html      to build all projects"
	@echo "  clean     to remove all build files"

# Target to clean the entire build directory
clean:
	@echo "Removing all build files..."
	@rm -rf "$(HTMLDIR)"

# Target to build all projects
html:
	@echo "Building all projects: $(PROJECTS)"
	@# This loop iterates through each project name in the PROJECTS list
	@for proj in $(PROJECTS); do \
		echo ">>> Building project: $$proj"; \
		\
		if [ "$$proj" = "main_page" ]; then \
			OUTPUT_PATH="$(HTMLDIR)"; \
		else \
			OUTPUT_PATH="$(HTMLDIR)/$$proj"; \
		fi; \
		\
		python -m sphinx.cmd.build -b html "$(SOURCEDIR)/$$proj" "$$OUTPUT_PATH"; \
	done
	@echo "\n--- Multi-project build finished successfully! ---"
	@echo "Your documentation is ready in: $(HTMLDIR)"
	@touch "$(HTMLDIR)/.nojekyll"

