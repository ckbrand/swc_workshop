# Notes from Software Carpentry Workshop
# Date: January 17-18, 2017
# Author: Colleen K. Brand

library("ggplot2")
# Read in data file
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")

#head
#str
#colnames
#summary
#nrow
#ncol
#View

# African countries' life expectancies for 2007
# step 1: get 2007 data
is_2007 <- gapminder$year == 2007
# step 2: get Africa data
is_Africa <- gapminder$continent == "Africa"
# step 3: pull 2007 & Africa from gapminder
africa_2007 <- gapminder[is_2007 & is_Africa, c("country", "lifeExp")]


o <- order(africa_2007$lifeExp)

africa_2007[o, ]


ggplot(data=gapminder, aes(x= year, y=lifeExp, color=continent)) + geom_point()

ggplot(data=gapminder, aes(x= gdpPercap, y=lifeExp, color=continent)) + geom_point(aes(size=pop))

# create plot with aksvwengjks
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point() +
facet_grid(.~continent)

# save plot
ggsave(filename = "year_vs_lifexp_percont.png", width = 5, height = 4, units = "in")


