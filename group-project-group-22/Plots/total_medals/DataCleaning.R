library(dplyr)
library(tibble)

load("Data/total_medals.Rdata")

total_medals <- as.tibble(total_medals)
# dim(total_medals) 156 x 5
temp <- lapply(total_medals[, 2:5], as.integer) %>% 
  as.data.frame()
total_medals <- cbind(total_medals[, 1], temp)
total_medals$Nation <- total_medals$Nation %>% as.factor()

dat <- total_medals %>% slice_sample(n = 25)
rm(temp)