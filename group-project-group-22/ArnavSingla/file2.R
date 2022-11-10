library(tidyverse)
library(tibble)
library(ggplot2)

glimpse(data)
dat <- as_tibble(data)

fct_count(dat$x)

#reorder levels x using y
ggplot(dat, aes(x = y, y = fct_reorder(x, y, .desc = T)))+
  geom_point()

fct_recode()

fct_relevel()

dat$x <- fct_relevel(dat$x, "Z")

ggplot(dat, aes(x = fct_reorder(x, y, min), y = y))+
  geom_boxplot()
