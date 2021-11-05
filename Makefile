all: FDPD.html

FDPD.html: FDPD.Rmd
	R -e 'system.time(rmarkdown::render("$<", "all"))'
