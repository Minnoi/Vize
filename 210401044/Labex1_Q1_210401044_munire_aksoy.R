library (readr)


url <- "https://raw.githubusercontent.com/scizmeli/Red/master/MapsThatChangedOurWorld_StoryMap_Data.csv"
dosya <- "MapsThatChangedOurWorld_StoryMap_Data.csv"
download.file(url, destfile = dosya, method = "auto")
maps <- read.csv(dosya, header=TRUE, sep=";")
maps$Latitude <- as.numeric(gsub("N", "" , maps$Latitude))
idx <- grep("W", maps$Longitude)
maps$Longitude <- gsub("E", "" , maps$Longitude)
maps$Longitude <- gsub("W", "" , maps$Longitude)
maps$Year <- as.numeric(gsub("AD", "" , maps$Year))
maps$Longitude <- as.numeric(maps$Longitude)
maps$Latitude <- as.numeric(maps$Latitude)