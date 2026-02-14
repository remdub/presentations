# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Marp-based slide decks for educational courses in French. Presentations are written in Markdown and auto-deployed to GitHub Pages.

## Commands

```bash
npm ci                          # install dependencies

make dev                        # live preview template.md in browser
make dev FILE=my-slides.md      # live preview a specific file

make build                      # build template.md → dist/template.html
make build FILE=my-slides.md    # build a specific file

make pdf                        # build template.md → dist/template.pdf
make pdf FILE=my-slides.md      # build a specific file
```

There are no tests or linters in this project.

## Architecture

- Each `*.md` file at the root (except `template.md` and `README.md`) is a standalone presentation
- All presentations use Marp frontmatter with `theme: custom-light` defined in `theme.css`
- `theme.css` extends Marp's `default` theme and registers as `custom-light` via `/* @theme custom-light */`
- `template.md` is a starter template — copy it to create a new presentation
- The GitHub Actions workflow (`.github/workflows/slides.yml`) builds every root `*.md` file except `template.md` into HTML, generates an index page, and deploys to GitHub Pages on push to `main`

## Conventions

- Presentation content is in French
- Slide separators: `---`
- Marp directives go in HTML comments: `<!-- _class: lead center -->`, `<!-- _paginate: skip -->`
- Available slide classes: `lead` (title slide with gradient), `center`, `columns` (two-column flex layout)
- Standard frontmatter for new presentations:
  ```yaml
  ---
  marp: true
  theme: custom-light
  paginate: true
  footer: "Informatique — Secondaire"
  ---
  ```
