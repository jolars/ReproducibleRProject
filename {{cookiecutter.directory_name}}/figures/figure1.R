# script for generating figures to be stored in ../paper/figures/

library(tikzDevice)
library(ggplot2)
library(readr)

source("R/utils.R")

results <- read_csv("results/results.csv")

file <- "paper/figures/plot.tex"

tikz(file, width = 3.3, height = 2.8, standAlone = TRUE)
ggplot(results, aes(x, y)) +
  geom_point() +
  theme_minimal()
dev.off()

renderCropPDF(file)
