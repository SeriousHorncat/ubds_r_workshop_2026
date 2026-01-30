gapminder <- read.csv('data/gapminder_data.csv')
head(gapminder)
getwd()


#subsetting dataframe
head(gapminder[["pop"]])
head(gapminder[["pop"]])
gapminder[,1:3]
gapminder[gapminder$lifeExp > 80,]
