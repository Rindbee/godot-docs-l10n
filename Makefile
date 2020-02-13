# The common options of sphinx, using Multi-Threads.
SPHINXOPTS    = -j auto
# Set size of paper.
PAPER         =
# Set the command of sphinx-build
SPHINXBUILD   = sphinx-build
# Set the command of sphinx-intl
SPHINXINTL   = sphinx-intl
# Set the target directory to build html.
BUILDDIR      = build
# Set the po/pot direcotry.
SPHINXDIR     = sphinx
# Set locale build options for rewrite
OVERRIDEOPTS      =

# Internal variables.
PAPEROPT_a4     = -D latex_paper_size=a4
PAPEROPT_letter = -D latex_paper_size=letter
ALLSPHINXOPTS   = -d "$(BUILDDIR)/doctrees" $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) docs
# the i18n builder cannot share the environment and doctrees with the others
I18NSPHINXOPTS  = $(PAPEROPT_$(PAPER)) $(SPHINXOPTS) docs

# full paths
LANGUAGES_FULL=$(filter %/, $(wildcard sphinx/po/*/))
# names only
LANGUAGES=$(notdir $(LANGUAGES_FULL:%/=%))

# full paths
CHAPTERS_FULL:=$(filter %/, $(wildcard docs/*/))
# names only
CHAPTERS:=$(notdir $(sort $(CHAPTERS_FULL:%/=%)))
# intersect make goals and possible chapters
QUICKY_CHAPTERS=$(filter $(MAKECMDGOALS),$(CHAPTERS))


# -----------------------
# for echoing output only
ifeq ($(QUICKY_CHAPTERS), )
	CONTENTS_HTML="index.html"
else
	CONTENTS_HTML="contents_quicky.html"
endif

# os specific
ifeq ($(OS), Darwin)
	# OSX
	OPEN_CMD="open"
else
	# Linux/FreeBSD
	OPEN_CMD="xdg-open"
endif
# end output for echoing
# ----------------------


ifneq "$(findstring singlehtml, $(MAKECMDGOALS))" ""
	.DEFAULT_GOAL := singlehtml
else ifneq "$(findstring pdf, $(MAKECMDGOALS))" ""
	.DEFAULT_GOAL := pdf
else
	.DEFAULT_GOAL := html
endif


$(CHAPTERS): $(.DEFAULT_GOAL)


# --------------------
# Check commands exist

.SPHINXBUILD_EXISTS:
	@if ! which $(SPHINXBUILD) > /dev/null 2>&1; then \
		echo -e >&2 \
			"The '$(SPHINXBUILD)' command was not found.\n"\
			"Make sure you have Sphinx installed, then set the SPHINXBUILD environment variable to\n"\
			"point to the full path of the '$(SPHINXBUILD)' executable.\n"\
			"Alternatively you can add the directory with the executable to your PATH.\n"\
			"If you don't have Sphinx installed, grab it from http://sphinx-doc.org)\n"; \
		false; \
	fi

# End command checking
# --------------------


html: .FORCE .SPHINXBUILD_EXISTS
	# './' (input), './html/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b html $(SPHINXOPTS) $(OVERRIDEOPRS) ./docs "$(BUILDDIR)/html"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/html/$(CONTENTS_HTML)"

zh: .FORCE .SPHINXBUILD_EXISTS
	# './' (input), './html/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b html -D language='zh_CN' $(SPHINXOPTS) ./docs "$(BUILDDIR)/html"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/html/$(CONTENTS_HTML)"

html_server: .FORCE .SPHINXBUILD_EXISTS
	# './' (input), './html/' (output)
	# - Single thread because we run many builds at once.
	# - Optimize to use less memory per-process.
	PYTHONOPTIMIZE=2 \
	$(SPHINXBUILD) -a -E -b html $(SPHINXOPTS) -j 1 ./docs "$(BUILDDIR)/html"

epub: .FORCE .SPHINXBUILD_EXISTS
	# './' (input), './epub/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b epub $(SPHINXOPTS) ./docs "$(BUILDDIR)/epub"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/epub/*.epub"

singlehtml: .FORCE .SPHINXBUILD_EXISTS
	# './' (input), './html/' (output)
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b singlehtml $(SPHINXOPTS) ./docs "$(BUILDDIR)/singlehtml"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD) $(shell pwd)"/$(BUILDDIR)/singlehtml/$(CONTENTS_HTML)"

pdf: .FORCE
	QUICKY_CHAPTERS=$(QUICKY_CHAPTERS) \
	$(SPHINXBUILD) -b latex ./docs "$(BUILDDIR)/latex"
	make -C "$(BUILDDIR)/latex" LATEXOPTS="-interaction nonstopmode"

	@echo "To view, run:"
	@echo "  "$(OPEN_CMD)" $(shell pwd)"/$(BUILDDIR)/latex/godot_manual.pdf"

readme: .FORCE
	rst2html5 readme.rst > ./build/readme.html

	@echo "Build finished. The HTML page is in $(BUILDDIR)/readme.html."
	@echo "To view, run:"
	@echo "  "$(OPEN_CMD)" $(shell pwd)"/$(BUILDDIR)/readme.html"


check_links: .FORCE
	$(SPHINXBUILD) -b linkcheck $(ALLSPHINXOPTS) $(BUILDDIR)/linkcheck
	@echo
	@echo "Link check complete; look for any errors in the above output " \
	      "or in $(BUILDDIR)/linkcheck/output.txt."

clean: .FORCE
	rm -rf $(BUILDDIR)/html
	rm -rf $(BUILDDIR)/templates


update_po:	.FORCE
	$(SPHINXINTL) --config=docs/conf.py update --pot-dir=$(BUILDDIR)/templates --language="zh_CN"
	@echo ""

gettext: .FORCE .SPHINXBUILD_EXISTS
	$(SPHINXBUILD) -t builder_html -b gettext $(I18NSPHINXOPTS) $(BUILDDIR)/templates
	@echo ""
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/templates."
	@echo ""
# -----------------------------------------------------------------------------
# Help for build targets
help:
	@echo ""
	@echo "Documentation"
	@echo "============="
	@echo ""
	@echo "Convenience targets provided for building docs"
	@echo "- html                 to make standalone HTML files (default)"
	@echo "- singlehtml           to make a single large HTML file"
	@echo "- pdf                  to make a PDF using LaTeX warning: this currently has some problems,"
	@echo "                       though the PDF generates, there are various unresolved issues	"
	@echo "- readme               to make a 'readme.html' file"
	@echo "- clean                to delete all old build files"
	@echo ""
	@echo "Chapters               to quickly build a single chapter"
	@$(foreach ch,$(CHAPTERS),echo "- "$(ch);)
	@echo ""
	@echo "Translations"
	@echo "============"
	@echo ""
	@echo "- gettext              to make PO message catalogs"
	@echo "- update_po            to update PO message catalogs"
	@echo "- report_po_progress   to check the progress/fuzzy strings"
	@echo ""

.FORCE:
