library(rvest)
html <- read_html("https://en.wikipedia.org/wiki/List_of_Olympic_Games_host_cities")
tab <- html_table(html)

tab1 <- tab[[2]]
tab2 <- tab[[3]]
