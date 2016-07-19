---
title: 'SISBID 2016 Module 3: Reproducible Research'
author: "Keith Baggerly"
date: "July 18-20, 2016"
output: html_document
---

This module is part of the 
[Summer Institute in Statistics for Big Data](https://www.biostat.washington.edu/suminst/sisbid)

Taught by  
Keith A. Baggerly  
[kabagger@mdanderson.org](mailto:kabagger@mdanderson.org)  
and  
Roger Peng  
[rdpeng@jhu.edu](mailto:rdpeng@jhu.edu)

# Course Goals

* Course Goals   
[pdf (100K)](2016_SISBID_3_01_course_goals.pdf),
[html (630K)](2016_SISBID_3_01_course_goals.html),
[MS Word (12K)](2016_SISBID_3_01_course_goals.docx), 
[Rmd Source (5K)](2016_SISBID_3_01_course_goals.Rmd)  

# Homeworks

* Homework   
[pdf (100K)](2016_SISBID_3_02_homework.pdf),
[html (630K)](2016_SISBID_3_02_homework.html), 
[Rmd Source (3K)](2016_SISBID_3_02_homework.Rmd)  
* Supplementary Data for Homework   
[.RData (75M)](http://odin.mdacc.tmc.edu/~kabaggerly/SISBID/homework.RData) 
* About the Homework Data   
[pdf (160K)](2016_SISBID_3_03_about_the_homework_data.pdf), 
[html (650K)](2016_SISBID_3_03_about_the_homework_data.html),
[Rmd Source (12K)](2016_SISBID_3_03_about_the_homework_data.Rmd)

# Cheat Sheets (idea stolen from [Karl Broman](https://kbroman.wordpress.com/2015/04/29/cheat-sheets-for-r-based-software-carpentry-course/))

These are from RStudio's [list](https://www.rstudio.com/resources/cheatsheets/)

* [Rmarkdown](http://www.rstudio.com/wp-content/uploads/2016/03/rmarkdown-cheatsheet-2.0.pdf); there's also a [reference guide](http://www.rstudio.com/wp-content/uploads/2015/03/rmarkdown-reference.pdf)
* [Package Development/Devtools](http://www.rstudio.com/wp-content/uploads/2015/06/devtools-cheatsheet.pdf)

This is from GitHub

* [Git/GitHub](https://services.github.com/kit/downloads/github-git-cheat-sheet.pdf)


# Course Syllabus and Lecture Materials

## Day 1, Jul 18, 2016

### Session 1, 8:30-10

* 10 minute intro 
[pdf (260K)](2016_SISBID_3_06_basic_intro.pdf)
[printable pdf (260K)](2016_SISBID_3_06_basic_intro_printable.pdf)
* General Intro to RR (75 min) 
[printable pdf (3.4M)](2016_SISBID_3_07_broad_intro_to_rr_printable.pdf)

* [Getting crushed on the Internet](http://simplystatistics.org/2015/11/16/so-you-are-getting-crushed-on-the-internet-the-new-normal-for-academics/)

* [Making your work reproducible](http://simplystatistics.org/2015/12/11/instead-of-research-on-reproducibility-just-do-reproducible-research/)

### Session 2, 10:30-12

* The Duke Saga (45 min) 
[pdf (3.6M)](2016_SISBID_3_08_train_wreck.pdf)
[printable pdf (3.6M)](2016_SISBID_3_08_train_wreck_printable.pdf)
* Using R markdown (30 min) 
[pdf (800K)](2016_SISBID_3_09_markdown_printable.pdf)
* Begin Day 1 Homework (draft Rmd file, generate html, pdf)

### Session 3, 1:30-3

* Assembling R Packages (1hr) 
[pdf (163K)](2016_SISBID_3_10_r_packages.pdf) 
[printable pdf (162K)](2016_SISBID_3_10_r_packages_printable.pdf)
* RStudio R package [pre-flight check list](https://github.com/rdpeng/daprocedures/blob/master/lists/Rpackage_preflight.md)
* More Day 1 Homework (build a toy package)

This session will be a mix of lecture and live demo.

### Session 4, 3:30-5

* Exciting Big Data/Hwk Data Intro (15 min) 
[pdf (4M)](2016_SISBID_3_11_intro_to_hwk_data.pdf) 
[printable pdf (4M)](2016_SISBID_3_11_intro_to_hwk_data_printable.pdf)
* More Day 1 Homework (explore TCGA, Tumor Portal, package)

This session will be a mix of lecture and live demo.

* Day 1 Feedback (5 min)

## Day 2, Jul 19, 2016

### Session 5, 8:30-10

* Discussion of Readings (15 min)
* Problems with RR (45 min) 
[pdf (2.5M)](2016_SISBID_3_12_problems_w_replication.pdf) 
[printable pdf (2.5M)](2016_SISBID_3_12_problems_w_replication_printable.pdf)
* Git/GitHub, Part 1 (30 min) 
[pdf (4.7M)](2016_SISBID_3_13_git_part_1.pdf)
[printable pdf (4.7M)](2016_SISBID_3_13_git_part_1_printable.pdf)

This session will be a mix of lecture and live demo.

### Session 6, 10:30-12

* Git/GitHub, Part 2 (45 min, continued)
[pdf (1.7M)](2016_SISBID_3_14_git_part_2.pdf) 
[printable pdf (1.7M)](2016_SISBID_3_14_git_part_2_printable.pdf)
* Begin Day 2 Homework (put a toy package on github, share)

This session will be a mixture of lecture and live demo.

### Session 7, 1:30-3

* Prevention vs Cure (45 min)
[printable pdf (1.7M)](2016_SISBID_3_15_prevention_printable.pdf)

* [ROC Curves of Science](http://simplystatistics.org/2013/08/01/the-roc-curves-of-science/)

* More Day 2 Homework (responding to changes suggested)

### Session 8, 3:30-5

* More Day 2 Homework (sharing real data analyses, incorporating batch effects)
* Day 2 Feedback (5 min)

## Day 3, Jul 20, 2016

### Session 9, 8:30-10

* Discussion of Readings (15 min)
* Writing Reports (45 min) 
[pdf (150K)](2016_SISBID_3_16_good_reports.pdf)
[printable pdf (150K)](2016_SISBID_3_16_good_reports_printable.pdf)
* Begin Day 3 Homework (revising vignettes as reports)

### Session 10, 10:30-12

* More Day 3 Homework
* Final Class Discussion (30 min)


# Recommended Reading/Browsing

## General

* [Christopher Gandrud, Reproducible Research with R and Rstudio, 2e (2015)](http://www.amazon.com/Reproducible-Research-Studio-Second-Chapman-ebook/dp/B010ACWGBI/ref=tmm_kin_title_0?_encoding=UTF8&sr=&qid=)
* [Hadley Wickham, R Packages (2015)](http://www.amazon.com/R-Packages-Hadley-Wickham-ebook/dp/B00VAYCHL0/ref=pd_sim_351_6?ie=UTF8&refRID=1E8HS30WBHRCW45SEWXM)
* [Yihui Xie, Dynamic Documents with R and knitr, 2e (2015)](http://www.amazon.com/Dynamic-Documents-knitr-Second-Chapman-ebook/dp/B00ZBYPJEW/ref=tmm_kin_title_0?_encoding=UTF8&sr=&qid=)

[Karl Broman's Tools for RR Course](http://kbroman.org/Tools4RR/)

## Day 1

* [Potti et al (2006)](http://www.nature.com/nm/journal/v12/n11/abs/nm1491.html)
* [our letter](http://www.nature.com/nm/journal/v13/n11/full/nm1107-1276b.html)
* [the response](http://www.nature.com/nm/journal/v13/n11/full/nm1107-1277.html)
* [Brad Perez's letter](http://www.cancerletter.com/articles/20150109_1)

## Day 2

* [Petricoin et al, Lancet (2002)](http://www.sciencedirect.com/science/article/pii/S0140673602077462)
* [Baggerly et al, Bioinformatics (2004)](http://bioinformatics.oxfordjournals.org/content/20/5/777.long)
* [Leek et el, Nat Rev Genet (2010)](http://www.nature.com/nrg/journal/v11/n10/full/nrg2825.html)

