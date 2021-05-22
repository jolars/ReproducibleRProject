# place scripts for running experiments here and store results in ../results/

library(readr)

dataset <- read_csv("data/dataset.csv")

model <- lm(y ~ x, data = dataset)

yhat <- predict(model)

results <- tibble(x = dataset$x, y = dataset$y, yhat = yhat)

write_csv(results, "results/results.csv")
