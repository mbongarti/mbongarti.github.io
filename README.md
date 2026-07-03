# mbongarti.github.io

Personal academic website for Marcelo Bongarti, Postdoctoral Researcher in Applied Mathematics at the Weierstraß Institute (WIAS Berlin). Built as a static [Jekyll](https://jekyllrb.com/) site and hosted via [GitHub Pages](https://pages.github.com/).

Live at: https://mbongarti.github.io

## Structure

```
.
├── _config.yml        # Jekyll site config (title, description, markdown engine)
├── _layouts/
│   └── default.html   # Shared page layout (nav, sidebar, footer, all site CSS)
├── index.html          # About / home page
├── research.html        # Publications
├── projects.html        # Projects
├── teaching.html        # Teaching
├── cv.html            # CV page (embeds cv.pdf)
├── cv.pdf
├── photo_black.jpg / Las_Trig.jpg / thesis_form.jpg   # Site images
└── serve.sh            # Local dev server script
```

Each top-level `.html` page uses `_layouts/default.html` and supplies its own content; there are no Jekyll collections or posts — this is a small handful of static pages.

## Local development

Requires Ruby + Jekyll (via Bundler or gem install).

```bash
./serve.sh
```

This runs `jekyll serve --watch --port 4000`, so the site is available at `http://localhost:4000` and rebuilds on file changes.

`serve.sh` currently hardcodes a Ruby 2.6.0 gem path (`$HOME/.gem/ruby/2.6.0`) — adjust that export if your local Ruby/gem setup differs.

## Deployment

The site is served directly from this repository by GitHub Pages (repo name `mbongarti.github.io` triggers user-site hosting automatically). Pushing to `main` rebuilds and republishes the site — there is no separate build/deploy step to run manually.

## Notes

- `_site/` and `.jekyll-cache/` are build artifacts and are git-ignored; don't edit files there directly.
- `.venv/` is a local Python virtual environment, unrelated to the Jekyll build.
