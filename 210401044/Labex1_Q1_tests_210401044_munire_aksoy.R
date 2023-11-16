library("testthat")

#2,2)
rm(list = ls())  

if (file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv")) {
  file.remove("MapsThatChangedOurWorld_StoryMap_Data.csv")  
}
source("Labex1_Q1_210401044_munire_aksoy.R")

test_that("MapsThatChangedOurWorld_StoryMap_Data.csv dosyası aktif dizinde mevcut olmalıdır", {
  testthat::expect_true(file.exists("MapsThatChangedOurWorld_StoryMap_Data.csv"))
})

test_that("maps değişkeni Global Workspace'de mevcut olmalıdır", {
  testthat::expect_true(exists("maps"))
})

test_that("maps değişkeni bir data.frame olmalıdır", {
  testthat::expect_true(is.data.frame(maps))
})

test_that("maps data.frame'in ilk sütunu 'City' olmalıdır", {
  testthat::expect_equal(names(maps)[1], "City")
})

test_that("maps data.frame'in 5. sütunu 'Title' içermelidir", {
  testthat::expect_true(any(grepl("Title", colnames(maps))))
})

test_that("Latitude sütunu numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Latitude)))
})

test_that("idx değişkeni Global Workspace'de mevcut olmalıdır", {
  testthat::expect_true(exists("idx"))
})

test_that("idx değişkeni integer olmalıdır", {
  testthat::expect_true(is.integer(idx))
})

test_that("Longitude sütunu numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Longitude)))
})
test_that("Year sütunu numeric değerlerden oluşmalıdır", {
  testthat::expect_true(all(is.numeric(maps$Year)))
})