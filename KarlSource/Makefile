all: lectures printable Figs/rmd_compilation_fig.png

lectures: ../2017_SISBID_3_01_introduction_slides.pdf \
		  ../2017_SISBID_3_05_bigjobs_slides.pdf

printable: ../2017_SISBID_3_01_introduction_printable.pdf \
		   ../2017_SISBID_3_05_bigjobs_printable.pdf

../%.pdf: %.pdf
	cp $< ../

%_slides.pdf: %_slides.tex LaTeX/header.tex
	xelatex $<

%_printable.tex: %_slides.tex Ruby/createVersionWithNotes.rb
	Ruby/createVersionWithNotes.rb $(<F) $(@F)

%_printable.pdf: %_printable.tex LaTeX/header.tex
	xelatex $(<F)
	pdfnup $(@F) --nup 1x2 --no-landscape --paper letterpaper --frame true --scale 0.9
	mv $*_printable-nup.pdf $(@F)

Figs/rmd_compilation_fig.png: R/rmd_compilation_fig.R
	cd R;R CMD BATCH $(<F)
