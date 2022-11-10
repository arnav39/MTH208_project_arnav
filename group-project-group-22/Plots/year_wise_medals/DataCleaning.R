library(dplyr)
library(tibble)

load('Data/year_wise_medals.Rdata')

dat <- as.tibble(year_wise_medals)
rm(year_wise_medals)

## Grouping By nation

dat$Nation <- as.factor(dat$Nation)

a <- c("Austria", "Hungary", "Italy", "Canada")
temp <- dat %>% filter(Nation %in% a)
