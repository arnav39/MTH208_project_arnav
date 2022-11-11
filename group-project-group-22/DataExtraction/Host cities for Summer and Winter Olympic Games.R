library(rvest)

tab <- read_html("https://en.wikipedia.org/wiki/List_of_Olympic_Games_host_cities") %>% 
  html_table()

tab1 <- tab[[2]]
tab1 <- tab1[ , 3:4]

tab2 <- tab[[3]]
tab2 <- tab2[ , 3:6]
