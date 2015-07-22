---
title: 'SISBID 2015 Module 5: Reproducible Research'
author: "Keith Baggerly"
date: "July 17, 2015"
output: html_document
---

This module is part of the 
[Summer Institute in Statistics for Big Data](http://www.biostat.washington.edu/suminst/sisbid/schedule)

Taught by  
Keith A. Baggerly  
[kabaggerly@mdanderson.org](mailto:kabaggerly@mdanderson.org)  
and  
Roger Peng  
[rdpeng@jhu.edu](mailto:rdpeng@jhu.edu)

# Course Goals

* Course Goals 
[pdf (100K)](2015_SISBID_5_01_course_goals.pdf) 
[html (630K)](2015_SISBID_5_01_course_goals.html)
[MS Word (12K)](2015_SISBID_5_01_course_goals.docx) 
[Rmd Source (5K)](2015_SISBID_5_01_course_goals.Rmd)

# Homeworks

* Homework 
[pdf (100K)](2015_SISBID_5_02_homework.pdf) 
[html (630K)](2015_SISBID_5_02_homework.html) 
[Rmd Source (3K)](2015_SISBID_5_02_homework.Rmd)
* Supplementary Data for Homework 
[.RData (75M)](http://odin.mdacc.tmc.edu/~kabaggerly/SISBID/homework.RData) 
* About the Homework Data 
[pdf (160K)](2015_SISBID_5_03_about_the_homework_data.pdf) 
[html (650K)](2015_SISBID_5_03_about_the_homework_data.html)
[Rmd Source (12K)](2015_SISBID_5_03_about_the_homework_data.Rmd)

# Cheat Sheets (idea stolen from [Karl Broman](https://kbroman.wordpress.com/2015/04/29/cheat-sheets-for-r-based-software-carpentry-course/))

* [Git/GitHub](2015_SISBID_5_04_github_git_cheat_sheet.pdf)
* [Rmarkdown](2015_SISBID_5_05_rmarkdown_cheatsheet.pdf)

# Course Syllabus and Lecture Materials

## Day 1, Jul 20, 2015

### Session 1, 8:30-10

* 10 minute intro 
[pdf (260K)](2015_SISBID_5_06_basic_intro.pdf)
[printable pdf (260K)](2015_SISBID_5_06_basic_intro_printable.pdf)
* General Intro to RR (75 min) 
[printable pdf (4M)](2015_SISBID_5_07_broad_intro_to_rr_printable.pdf)

### Session 2, 10:30-12

* The Duke Saga (45 min) 
[pdf (3.6M)](2015_SISBID_5_08_train_wreck.pdf)
[printable pdf (3.6M)](2015_SISBID_5_08_train_wreck_printable.pdf)
* Using R markdown (30 min) 
[pdf (800K)](2015_SISBID_5_09_markdown_printable.pdf)
* Begin Day 1 Homework (draft Rmd file, generate html, pdf)

### Session 3, 1:30-3

* Assembling R Packages (1hr) 
[pdf (163K)](2015_SISBID_5_10_r_packages.pdf) 
[printable pdf (162K)](2015_SISBID_5_10_r_packages_printable.pdf)
* More Day 1 Homework (build a toy package)

### Session 4, 3:30-5

* Exciting Big Data/Hwk Data Intro (15 min) 
[pdf (4M)](2015_SISBID_5_11_intro_to_hwk_data.pdf) 
[printable pdf (4M)](2015_SISBID_5_11_intro_to_hwk_data_printable.pdf)
* More Day 1 Homework (explore TCGA, Tumor Portal, package)
* Day 1 Feedback (5 min)

## Day 2, Jul 21, 2015

### Session 5, 8:30-10

* Problems with RR (45 min) 
[pdf (2.5M)](2015_SISBID_5_12_problems_w_replication.pdf) 
[printable pdf (2.5M)](2015_SISBID_5_12_problems_w_replication_printable.pdf)
* Git/GitHub, Part 1 (45 min) 
[pdf (4.7M)](2015_SISBID_5_13_git_part_1.pdf)
[printable pdf (4.7M)](2015_SISBID_5_13_git_part_1_printable.pdf)

* [Installing Git on Windows (video)](https://panopto-a.akamaihd.net/sessions/40f5cc37-b919-413d-bf3a-759aa134482b/89c6fa1e-7f51-406e-87ae-8d21659275fb-74d1ca15-867e-41ba-8f39-ddce7e64f39e.mp4?invocationId=9abe93e4-4224-e511-9466-22000b010df0)

* [Installing Git on Windows (document)](http://www.biostat.washington.edu/sites/www/content/files/Summer_Institute_in_Statistics_for_Big_Data/Course_Materials_&amp;_Software/editing_path.pdf)

### Session 6, 10:30-12

* Git/GitHub, Part 2 (45 min, continued)
[pdf (1.7M)](2015_SISBID_5_14_git_part_2.pdf) 
[printable pdf (1.7M)](2015_SISBID_5_14_git_part_2_printable.pdf)
* Begin Day 2 Homework (put a toy package on github, share)

### Session 7, 1:30-3

* Prevention vs Cure (45 min)
[printable pdf (1.7M)](2015_SISBID_5_15_prevention_printable.pdf)
* More Day 2 Homework (responding to changes suggested)

### Session 8, 3:30-5

* More Day 2 Homework (sharing real data analyses, incorporating batch effects)
* Day 2 Feedback (5 min)

## Day 3, Jul 22, 2015

### Session 9, 8:30-10

* Writing Reports (45 min) 
[pdf (150K)](2015_SISBID_5_16_good_reports.pdf)
[printable pdf (150K)](2015_SISBID_5_16_good_reports_printable.pdf)
* Begin Day 3 Homework (revising vignettes as reports)

### Session 10, 10:30-12

* More Day 3 Homework
* Final Class Discussion (30 min)
* Wrapup Notes 
[pdf (100K)](2015_SISBID_5_17_wrapup.pdf)
[printable pdf (100K)](2015_SISBID_5_17_wrapup_printable.pdf)


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
[Leek et el, Nat Rev Genet (2010)](http://www.nature.com/nrg/journal/v11/n10/full/nrg2825.html)

