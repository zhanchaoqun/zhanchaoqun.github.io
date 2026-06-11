# Chaoqun Zhan — Personal Website

A [Quarto](https://quarto.org) academic website for a trade economist.
Plain-text and Git-based, so it can be maintained with an AI assistant
(Cursor) and auto-deployed to GitHub Pages.

## Structure

```
_quarto.yml        # site config + navbar + theme
styles.scss        # custom styling
index.qmd          # Home / landing
research.qmd       # Publications, working papers, work in progress
teaching.qmd       # Courses and office hours
contact.qmd        # Contact details
images/            # profile.jpg, favicon.png
files/             # cv.pdf, paper PDFs
.github/workflows/ # auto-deploy to GitHub Pages
```

## One-time setup

1. **Install Quarto:** https://quarto.org/docs/get-started/ (macOS: `brew install --cask quarto`)
2. **Add assets:**
   - `images/profile.jpg` — a headshot
   - `images/favicon.png` — a small square icon
   - `files/cv.pdf` — your CV
3. **Edit placeholders** in the `.qmd` files (links, abstracts, courses).

## Preview locally

```bash
quarto preview
```

## Deploy (GitHub Pages)

1. Create a GitHub repo (for a user site, name it `<username>.github.io`).
2. Push this folder:
   ```bash
   git init
   git add -A
   git commit -m "Initial website"
   git branch -M main
   git remote add origin git@github.com:<username>/<username>.github.io.git
   git push -u origin main
   ```
3. In the repo: **Settings → Pages → Build and deployment → Source: GitHub Actions**.
4. Every push to `main` rebuilds and redeploys the site automatically.

## Updating with AI

Open this folder in Cursor and describe the change in plain language, e.g.
"Add my new working paper to research.qmd with a PDF link." Review the diff,
commit, and push — the site redeploys itself.
