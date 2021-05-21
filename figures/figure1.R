# script for generating figures to be stored in ../paper/figures/

library(tikzDevice)
library(ggplot2)
library(readr)

source("R/utils.R")

results <- read_csv("results/results.csv")

file <- "paper/figures/plot.tex"

tikz(file, standAlone = TRUE)
with(results, plot(x, yhat))
dev.off()

renderCropPDF(file)
