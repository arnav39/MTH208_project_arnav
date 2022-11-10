library(ggplot2)
library(tidyverse)

data <- data.frame(
  x = LETTERS[1:26],
  y = sample(1:100, size = 26, replace = F)
)

data$x <- as.factor(data$x)

ggplot(data, aes(x = fct_reorder(x, y, .desc = T), y = y))+
  geom_segment(aes(x = fct_reorder(x, y, .desc = T),
                   xend = fct_reorder(x, y, .desc = T),
                   y = 0,
                   yend = y),
               color = 'skyblue',
               lwd = 1)+
  geom_point(color = 'blue', size = 5, alpha=0.6, pch = 16)+
  geom_text(aes(label = y), color = 'white', size = 3)+
  theme_light()+
  coord_flip()+
  theme(
    panel.grid.major.y = element_blank(),
    panel.border = element_blank(),
    axis.ticks.y = element_blank()
  )+
  scale_x_discrete(labels = paste0("G_", 1:26))+
  xlab("Group")+
  ylab("Value")
  