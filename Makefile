FILE ?= template.md
NAME := $(basename $(FILE) .md)

dev:
	npx marp --theme theme.css -w $(FILE) -p

build:
	npx marp --theme theme.css $(FILE) -o dist/$(NAME).html

pdf:
	npx marp --theme theme.css $(FILE) --pdf -o dist/$(NAME).pdf
