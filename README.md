# Zhe Zhai — academic website

Source for <https://carrie-zz.github.io>. Built with [Quarto](https://quarto.org), deployed free to GitHub Pages.

## How to update (the whole point)

Everything on the site is plain text. To change anything, edit a file and re-publish — or just **tell Claude what changed** and it does the edit + publish for you.

| Want to change… | Edit this |
|---|---|
| New publication | `publications.bib` (add a BibTeX entry — it auto-renders on the Research page) |
| Home bio / links | `index.qmd` |
| Teaching list | `teaching.qmd` |
| CV / education / appointments | `cv.qmd` (drop `cv.pdf` here to add a download button) |
| New blog post | new folder under `posts/` with an `index.qmd` |
| Site title / menu / theme | `_quarto.yml` |

## Publish

```bash
quarto publish gh-pages
```

That renders and pushes the built site to the `gh-pages` branch. Live in ~1 minute.

## Local preview

```bash
quarto preview
```

## Notes / TODO

- Replace the placeholder **Google Scholar** and **LinkedIn** links in `_quarto.yml` and `index.qmd` with real profile URLs once those accounts exist.
- Add `cv.pdf` and uncomment the download line in `cv.qmd`.
- Quarto is installed at `~/.local/bin/quarto`. Add `export PATH="$HOME/.local/bin:$PATH"` to `~/.zshrc` so `quarto` works in a plain terminal.
