# Zhe Zhai — academic website

Source for <https://carrie-zz.github.io>. Built with [Quarto](https://quarto.org), deployed free to GitHub Pages.

## How to update (the whole point)

Everything on the site is plain text. To change anything, edit a file and re-publish — or just **tell Claude what changed** and it does the edit + publish for you.

| Want to change… | Edit this |
|---|---|
| New publication | `publications.bib` (add a BibTeX entry — it auto-renders on the Research page) |
| Home bio / links | `index.qmd` |
| Teaching list | `teaching.qmd` |
| CV (downloadable PDF) | **Do not edit `cv.pdf` here.** It is pulled from the CV folder — see "CV source of truth" below. |
| CV page text (education, appointments) | `cv.qmd` |
| New blog post | new folder under `posts/` with an `index.qmd` |
| Site title / menu / theme | `_quarto.yml` |

## CV source of truth

The CV lives in your **CV folder**, not here:
`~/Library/Mobile Documents/com~apple~CloudDocs/Personal documents/CV/CV_ZHAI Zhe.pdf`
(the whole folder is also reachable via the `cv-source` link in the project root).

You edit the CV there (`CV_ZHAI Zhe.tex` → `xelatex "CV_ZHAI Zhe.tex"`). This website only
**pulls that PDF**. To update the site's CV:

```bash
./pull-cv.sh            # copy CV_ZHAI Zhe.pdf into cv.pdf
./pull-cv.sh --publish  # ...and render + deploy in one step
```

Or just tell Claude **"update my CV on the site."**

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
