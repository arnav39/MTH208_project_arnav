library(ggplot2)
library(hrbrthemes)
library(showtext)

showtext_auto()

source('Plots/year_wise_medals/DataCleaning.R')

ggplot(temp, aes(x = year, y = Gold, group = Nation, col = Nation))+
  geom_point(
    shape = 21, size = 1)+
  geom_line()+
  theme_ipsum()+
  theme(
    plot.title = element_text(size = 20,
                              face = "bold",
                              family = "pacifico",
                              color = 'grey28',
                              hjust = 0.5,
                              lineheight = 1.2),
    plot.subtitle = element_text(size = 10,
                                 face = "bold",
                                 family = "pacifico",
                                 color = "grey28"),
    axis.text = element_text(size = 15,
                             family = "pacifico",
                             face = "bold"),
    axis.title.x = element_text(family = "pacifico", size = 15,
                                hjust = 0.5),
    axis.title.y= element_text(family = "pacifico",size = 15,
                               hjust = 0.5)
  )+
  labs(
    x = "Year",
    y = "Number of Medals",
    title = "Year Wise Performance",
    subtitle = "Tally of Gold Medals"
  )
  
