# Tables

Put reusable table snippets in this directory and include them from sections with
`\input{tables/<file>}`.

## Automatic best/second-best marks

`style/tablemarks.sty` provides a small table helper for result tables:

```tex
\tmsetup{style=both} % text, background/color, or both

\tmcell{psnr}{38.18}      % higher is better
\tmlowcell{lpips}{0.0083} % lower is better
```

You can customize the best and second-best styles independently:

```tex
\tmsetup{
  best-style=both,
  second-style=background,
  best-color=blue!20,
  second-color=green!20,
  bold-line-width=0.30pt
}
```

Use `\tmcell` for metrics where larger is better, and `\tmlowcell` for metrics
where smaller is better. The package collects values from the table cells and
marks the best value plus the second-best distinct value automatically. Compile
twice after changing table values, or use `latexmk` to rerun automatically.

For formatted cells, `\tmcell` uses the first number in the displayed content,
so `\tmcell{psnr}{$44.91 \pm 0.03$}` works directly. Use the optional form, such
as `\tmcell[44.91]{psnr}{best: 44.91}`, only when the first number is not the
value that should be compared. See
`tables/auto_marked_example.tex` for a complete table.

For heatmap-style backgrounds, use:

```tex
\tmsetup{
  heat-color=blue,
  heat-min-intensity=8,
  heat-max-intensity=55
}

\tmheatcell{acc}{82.1}       % higher values get darker
\tmlowheatcell{error}{17.9}  % lower values get darker
```

Like best/second-best marking, heatmap cells collect values from matching group
names and need two LaTeX passes after table values change. `latexmk` handles
this automatically.

## Row backgrounds and group headers

`style/tablebeauty.sty` provides reusable row styling helpers:

```tex
\tbsetup{
  group-color=pink!15,
  highlight-color=blue!8,
  subtle-color=gray!8
}

\tbgroup{5}{Claim Decontextualization Study}
\tbhighlight FaithLens & 84.9 & 79.0 & 89.4 & 86.4 \\
\tbsubtle GPT-4.1 & 75.3 & 74.2 & 82.0 & 83.3 \\
```

Use `\tbgroup{<columns>}{<title>}` for a full-width section row, `\tbhighlight`
for the next important row, and `\tbsubtle` for a low-emphasis shaded row.
Use `\tbgroupcolor{green!12}{5}{...}` or `\tbhighlightcolor{purple!10}` for
one-off color overrides.
