# Floats

Put complete floating environments here and include them from section files.

Recommended layout:

```text
floats/
  figures/  # figure, figure*, wrapfigure
  tables/   # table, table*, wraptable
```

Use these snippets from sections with:

```tex
\input{floats/figures/<name>}
\input{floats/tables/<name>}
```

Keep raw image files in `figures/`; `main.tex` already sets
`\graphicspath{{figures/}}`.
