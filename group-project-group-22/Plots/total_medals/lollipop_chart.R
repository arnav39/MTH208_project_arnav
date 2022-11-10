library(ggplot2)
library(showtext)

# font_add_google(name = "Pacifico",
#                 family = "pacifico")
showtext_auto() # To use family pacifico

source('Plots/total_medals/DataCleaning.R')
highlight <- dat[which.max(dat$Gold), ] 
# Can print which country has the maximum number of gold medals

gold <- ggplot(dat, aes(y = fct_reorder(Nation, Gold, .desc = T), x = Gold))+
  geom_segment(aes(y = fct_reorder(Nation, Gold, .desc = T),
                   yend = fct_reorder(Nation, Gold, .desc = T),
                   x = 0,
                   xend = Gold),
               color = "bisque1",
               lwd = 1)+
  geom_point(color = "darkred", size = 8, alpha=0.6, pch = 16)+
  geom_text(aes(label = Gold), color = 'white', size = 2)+
  theme_light()+
  theme(
    plot.title = element_text(size = 20,
                              face = "bold",
                              family = "pacifico",
                              color = 'grey28',
                              hjust = 0.5,
                              lineheight = 1.2),
    axis.text = element_text(size = 8,
                             family = "pacifico",
                             face = "bold"),
    axis.text.x = element_text(size = 10),
    axis.title.x = element_text(family = "pacifico"),
    panel.grid.major.x = element_blank(),
    axis.title.y = element_text(family = "pacifico"),
    axis.ticks.y = element_blank(),
    panel.border = element_blank()
  )+
  labs(x = "Number of Gold Medals",
       y = "Nation",
       title = "Race of Nations for GOLD")
