install.packages("devtools")
install.packages("roxygen2")
install.packages("Rtools", version="3.5")


library(devtools)
library(roxygen2)
library(Rtools)

StrawBerry <- read.csv("../strawberry_201910_dataset.csv", header=TRUE, fileEncoding="UTF-8-BOM")
StrawBerry
summary(StrawBerry)
save(StrawBerry, file="data/StrawBerry.RData")


StrawBerry2 <- read.csv("../100_berry_dataset_vs2.csv", header=TRUE, fileEncoding="UTF-8-BOM")
StrawBerry2
summary(StrawBerry2)
save(StrawBerry2, file="data/StrawBerry2.RData")

StrawBerry3 <- read.csv("../strawberry_201909_dataset_3.csv", header=TRUE, fileEncoding="UTF-8-BOM")
StrawBerry3
summary(StrawBerry3)
save(StrawBerry3, file="data/StrawBerry3.RData")

StrawBerry4 <- read.csv("../International_strawberry_produce.csv", header=TRUE, fileEncoding="UTF-8-BOM")
StrawBerry4
summary(StrawBerry4)
save(StrawBerry4, file="data/StrawBerry4.RData")

StrawBerry5 <- read.csv("../import_export_strawberry.csv", header=TRUE, fileEncoding="UTF-8-BOM")
StrawBerry5
summary(StrawBerry5)
save(StrawBerry5, file="data/StrawBerry5.RData")

devtools::load_all()
devtools::document()

