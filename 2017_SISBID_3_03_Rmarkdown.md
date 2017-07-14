# RStudio and RMarkdown

We'll be using RStudio throughout the workshop, so we'll start with a
brief orientation for those not familiar with it.

The rest of this session concerns
[literate programming](https://en.wikipedia.org/wiki/Literate_programming)
with [RMarkdown](https://rmarkdown.rstudio.com), a combination of the
"markup" language
[Markdown](https://daringfireball.net/projects/markdown/syntax) with
chunks of code (generally in R). When compiled (using the R packages
[knitr](https://yihui.name/knitr/) and
[rmarkdown](https://cran.r-project.org/package=rmarkdown), and with
the tool [pandoc](https://pandoc.org/)), the code chunks are executed
and replaced with their results (for example figures), to produce a
final document that could be an HTML, PDF or Word document.

## RStudio

[RStudio](https://rstudio.com) is a
"[graphical user interface](https://en.wikipedia.org/wiki/Graphical_user_interface)"
(GUI) for R, developed wholly separately from R, by the company
RStudio.

When you open RStudio, you'll see four "panes":

- R console
- code editor
- environment/history
- files/plots/packages/help

You can reorganize the layout of the panes by going to Tools → Global
Options → Pane Layout.


## RMarkdown

As an applied statistician working with a lot of different scientific
collaborators, I spend a lot of my time writing reports describing
analysis results. When starting out, I'd often just send a
collaborator an email with my report as the body of the email and with
a bunch of attached figures. I moved to writing formal reports, in
Word or LaTeX. But there was a lot of copy-paste of figures, and
messing about to get page breaks just right.

I now write all such reports using RMarkdown, with the output being a
single HTML file, which can be opened in any web browser.
I'll show a couple of examples. The advantages are:

- The results are fully reproducible, and can be easily revised if
  data or analysis choices change.
- With a single HTML page, I don't have to worry about page breaks and
  try to get figures to fit onto a page.  Figures can be as long as I
  want, and my collaborators generally appreciate that level of
  detail.
- The figures can also be interactive.

[RMarkdown](https://rmarkdown.rstudio.com) is a mixture of text
(written in
"[Markdown](https://daringfireball.net/projects/markdown/syntax)") and
chunks of code. When compiled, the code chunks are executed and
replaced with their results.
