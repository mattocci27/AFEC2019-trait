all: FDPD.html diversity.html

FDPD.html: FDPD.Rmd css/*
	R -e 'system.time(rmarkdown::render("$<", "all"))'

diversity.html: diversity.Rmd css/* data/*
	R -e 'system.time(rmarkdown::render("$<", "all"))'
