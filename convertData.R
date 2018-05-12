#!/usr/bin/Rscript

suppressMessages({
    library(gapminder)
    library(data.table)
})

gmuf <- setDT(as.data.frame(gapminder_unfiltered))
gm   <- setDT(as.data.frame(gapminder))

extractFiles <- function(gm, dir="files") {
    if (!dir.exists(dir)) dir.create(dir)

    for (continent in as.character(gm[ , .N, by=continent][[1]])) {
        d <- file.path(dir, continent)
        if (!dir.exists(d)) dir.create(d)
    }

    for (currentcountry in as.character(gm[ , .N, by=country][[1]])) {
        dat <- as.data.frame(gm[ country==currentcountry, ])
        cont <- as.character(dat[1, "continent"])
        file <- file.path(dir, cont, paste0(currentcountry, ".csv"))
        write.csv(dat, file=file, row.names=FALSE, quote=FALSE)
    }
}

# extractFiles(gm, dir="files")
extractFiles(gmuf, dir="files_unfiltered")

