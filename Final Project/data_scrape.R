# Data Scrape of NFL play-by-play data with nflfastR
# Jake Berberian

library(tidyverse)
library(nflfastR)

seasons <- 2010:2019
pbp <- purrr::map_df(seasons, function(x) {
  readRDS(
    url(
      glue::glue("https://raw.githubusercontent.com/guga31bb/nflfastR-data/master/data/play_by_play_{x}.rds")
    )
  )
})

# write_csv(pbp, "~/Downloads/pbp.csv")
