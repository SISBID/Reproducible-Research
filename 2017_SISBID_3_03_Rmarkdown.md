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

To get a list of RStudio keyboard shortcuts, go to Help → Keyboard
Shortcuts Help.

You can type code directly into the R console


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

### Creating a new RMarkdown document

In RStudio, to create a new RMarkdown document, go to File → New File
→ R Markdown. Then provide a title (you can change it later) and
choose the default output format (though we'll stick with the default,
HTML).

A new document will be created, with some default content that
provide useful reminders of some of the options.

Immediately save the document, giving the file a name and ensuring
that it's saved in the correct place.

### Things to notice

- The [YAML](http://yaml.org) header at the top, defining the title,
  author, and date. Additional options can be included here.

- The document is a mixture of text (in Markdown) and chunks of code
  (in R)

- Markdown features such as for `<URLs>`, `**bold**`, `## Sections`,
  and `in-line code`. And three "backticks" for multi-line chunks of
  code.

- The chunks of code starting with a line like

      ```{r pressure, echo=FALSE}

  are the key code chunks that get executed when the document is
  compiled. Each chunk can have a name (here, "`pressure`"), which is
  optional but strongly recommended. For code that produces a graph,
  the graph will be inserted into the document that's produced.

- Click the "Knit" button (with the cutest-icon-ever ball of yarn) to
  compile the document.




### A worked example

I'll do some live coding to create a more extended example of an
RMarkdown document.

I'm going to use these packages:

- [babynames](https://github.com/hadley/babynames)
- [dplyr](https://github.com/hadley/dplyr)
- [ggplot2](https://github.com/hadley/ggplot2)
- [DT](https://github.com/rstudio/DT)
- [plotly](https://plot.ly/r)

Key things to illustrate:

- Some Markdown features
- Code chunks that do some work
- Code chunks that make plots
- In-line code
- Making an interactive data table
- Making an interactive plot


### Chunk options

There are a bunch of different
[chunk options](https://yihui.name/knitr/options#chunk_options),
to control the code chunks.  Here are some common ones.

- `echo=FALSE`
- `results="hide"`
- `include=FALSE`
- `eval=FALSE`
- `warning=FALSE`
- `message=FALSE`
- `fig.width=[#]`
- `fig.height=[#]`

That first chunk of code in the default RMarkdown document shows how
to set _global_ chunk options. It's the most obscure part of
RMarkdown and the package [knitr](https://yihui.name/kniitr), which is
probably why it's included in the default document.

You can override any global chunk options in specific chunks.


### In-line code

In-line code (with single-back ticks and an `r`) need to be within one
line; they can't span across lines.

I'll often precede a paragraph with a code chunk with `include=FALSE`,
defining various variables, to simplify the in-line code.

Never hard-code a result or summary statistic again! Everything
straight from the data.

The YAML header can include in-line code or Markdown fanciness, for
example:

    ---
    title: "knitr/R Markdown example"
    author: "[Karl Broman](http://kbroman.org)"
    date: "`r Sys.Date()`"
    output: html_document
    ---

### Reproducible knitr documents

- Don't use absolute paths

- If you _must_ use absolute paths, define the various directories
  with variables at the top of your document

- For simulations, use `set.seed` in your first chunk.

- Include a final code chunk with `getwd()` and
  either `sessionInfo()` or `devtools::session_info()`.


### Controlling figures

- The default is for RMarkdown to use the `png()` graphics device.

- Specify another graphics device with the chunk option `dev`

- Pass arguments to the graphics device with the chunk option
  `dev.args`. For example:

      ```{r figure, dev.args=list(pointsize=18)}

- In addition to `fig.height` and `fig.width`, consider `out.height`
  and `out.width`.  The `out.` ones are for the graphics device; the
  `fig.` ones are for the size in the document produced.


### Tables

Tables are a constant pain. I'll often just print a data frame as a
crude table.

Other options:

- `kable()` in the [knitr](https://yihui.name/knitr) package.
- `pandoc.table()` in the [pander](http://rapporter.github.io/pander) package
- `xtable()` in the [xtable](https://cran.r-project.org/package=xtable) package.
- `DT()` in the [DT](https://github.com/rstudio/DT) package.


### Additional document options

There are several
[html document options](http://rmarkdown.rstudio.com/html_document_format.html)
that I like, to be inserted into the YAML header:

    ---
    title: "Doc options"
    output:
        html_document:
            toc: true
            toc_float: true
            code_folding: hide
    ---


### Other languages

You can execute code in many languages besides R, including
python, SQL, bash, and javascript.

A key issue is that variables are not remembered between these chunks
and can't be passed between R chunks and back except by writing to and
reading from files.

    ```{python python_chunk}
    x = 5**3
    print(x)
    y = 'hello, python world'
    print(y.split(' '))
    ```


### Resources

- Karl's [Knitr in a Knutshell](http://kbroman.org/knitr_knutshell) tutorial
- [Dynamic Documents with R and knitr (book)](https://www.amazon.com/gp/product/1498716962?ie=UTF8&tag=7210-20)
- [R Markdown](http://rmarkdown.rstudio.com) documentation
