# Presentations

Marp-based slide decks for educational courses (in French). Write slides in Markdown, preview live, and deploy to GitHub Pages automatically.

## Tech stack

- [Marp CLI](https://github.com/marp-team/marp-cli) — Markdown to HTML/PDF slide converter
- Custom CSS theme (`theme.css`)
- GitHub Actions — auto-build and deploy to GitHub Pages on push to `main`

## Getting started

```bash
npm ci
```

## Usage

### Create a new presentation

Copy `template.md` and rename it:

```bash
cp template.md my-slides.md
```

Edit the frontmatter and content. The frontmatter enables Marp and sets the theme:

```yaml
---
marp: true
theme: custom-light
paginate: true
footer: "Informatique — Secondaire"
---
```

### Live preview

```bash
make dev                      # previews template.md
make dev FILE=my-slides.md    # previews a specific file
```

Opens a browser with live reload on save.

### Build HTML

```bash
make build                    # builds template.md → dist/template.html
make build FILE=my-slides.md  # builds a specific file → dist/my-slides.html
```

### Build PDF

```bash
make pdf                      # builds template.md → dist/template.pdf
make pdf FILE=my-slides.md    # builds a specific file → dist/my-slides.pdf
```

## Deployment

Pushing to `main` triggers a GitHub Actions workflow (`.github/workflows/slides.yml`) that:

1. Builds every `*.md` file (except `template.md`) into HTML in `dist/`
2. Generates an `index.html` listing all presentations
3. Deploys `dist/` to GitHub Pages

## Project structure

```
├── template.md          # Starter template for new presentations
├── theme.css            # Custom Marp theme (custom-light)
├── Makefile             # dev / build / pdf commands
├── package.json         # Marp CLI dependency
├── .github/workflows/
│   └── slides.yml       # GitHub Actions: build & deploy to Pages
└── dist/                # Build output (gitignored)
```
