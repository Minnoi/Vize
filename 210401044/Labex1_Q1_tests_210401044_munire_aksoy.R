library("testthat")

#2,2)
rm(list = ls())  

if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")  
}