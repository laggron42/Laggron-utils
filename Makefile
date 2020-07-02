# Made by retke for Laggrons-Dumb-Cogs

help:
	@echo ""
	@echo "Usage:"
	@echo "	make <command>"
	@echo ""
	@echo "Commands:"
	@echo "	reformat				Reformat all .py files being tracked by git."
	@echo "	stylecheck				Check which tracked .py files need reformatting."
	# @echo "	gettext					Genereate .pot translation files with redgettext."
	# @echo " upload_translations		Upload messages.pot files to crowdin."
	@echo "	compile					Compile all python files into executables."

.PHONY: docs

reformat:
	python3 -m black -l 99 `git ls-files "*.py"`

stylecheck:
	python3 -m black -l 99 --check --diff `git ls-files "*.py"`

# gettext:
# 	redgettext --command-docstrings --verbose --recursive --exclude-files "docs/*" --exclude-files "instantcmd/*" .

# upload_translations:
# 	crowdin upload sources

# download_translations:
# 	crowdin download	

compile:
	python3 -m compileall .
