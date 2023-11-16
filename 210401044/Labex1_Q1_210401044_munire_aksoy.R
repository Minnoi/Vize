library (readr)


url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = dosya, method = "auto")