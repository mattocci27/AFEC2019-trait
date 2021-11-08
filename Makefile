all: FDPD.html

FDPD.html: FDPD.Rmd css/*
	R -e 'system.time(rmarkdown::render("$<", "all"))'
