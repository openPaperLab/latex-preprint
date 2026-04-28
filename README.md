# Preprint-Style

*A clean, aesthetic LaTeX style for preprints such as arXiv and bioRxiv.*

## Description

The project features an aesthetically pleasing and straightforward LaTeX style, ideal for “preprint” submissions on platforms like **arXiv**, **bioRxiv**, and similar repositories.
This style is derived from the [**arxiv-style**](https://github.com/kourgeorge/arxiv-style), which in turn is inspired by the [**nips_2018.sty**](https://media.nips.cc/Conferences/NIPS2018/Styles/nips_2018.sty) template.

It supports **both dual-column and single-column layouts**, enabling you to easily switch between the two formats.

## Usage

1. Use the document class **article**.
2. Copy `arxiv.sty` into the same folder as your `.tex` file.
3. Add `\usepackage{arxiv}` after `\documentclass{article}`.

> ⚠️ Note: The style file employs only the **geometry** package.
> Please do not reimport it in your main file.

See `main.tex` for a complete example.

---

### Project Structure

| File                   | Description                                                                                                   |
| ---------------------- | ------------------------------------------------------------------------------------------------------------- |
| **main.tex**           | Example template using the `arxiv` style                                                                      |
| **references.bib**     | Bibliography source for the template                                                                          |
| **style/arxiv.sty**    | The main style file providing the arXiv layout                                                                |
| **style/roundenv.sty** | Adds rounded rectangular, colored backgrounds to environments (e.g., theorem, lemma) for better visual appeal |