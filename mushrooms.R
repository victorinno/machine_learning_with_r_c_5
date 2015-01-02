Sys.setenv(JAVA_HOME="")

library(RWeka)

mushrooms <- read.csv("mushrooms.csv", stringsAsFactors = TRUE)
mushrooms$veil_type <- NULL

mushrooms_1R <- OneR(type ~ ., data = mushrooms)

mushrooms_JRip <- JRip(type ~ ., data = mushrooms)

Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jdk1.7.0_51")