# creating publication quality graphics with ggplot2
# ggplot widly usede
# layered & reproducible

# aesthetics (aes) - map variables with visual properties
# geometries (geom_*) how data are drawn (points, lines, bars)
# scales (scale_*) how data values are transformed or displayed
# statistics (stat_*) summaries or models computed from data
# facets (facet_*)



# mapping aesthetics
# aes() links data to visuals
# common: x, y, z


#adding geometrics
# geom_point() scatterplots
# geom_line() for trends ver time
# layers are added with +
# order of layers matter!
library(ggplot2)
gapminder <- read.csv('data/gapminder_data.csv')
getwd()
#source will run the entire file.

# adding the geom_point to the return of the ggplot() rendered the
# MOAR DOTS
#ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) + geom_point()
# 3 main layers

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp)) + geom_point()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color=continent)) +  geom_line()

ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country, color=continent)) + geom_line() + geom_point()


ggplot(data = gapminder, mapping = aes(x=year, y=lifeExp, group=country)) + geom_line(mapping = aes(color=continent)) + geom_point()



ggplot(data = gapminder, mapping = aes(x=year,
                                       y=lifeExp,
                                       group=country)) +
  geom_point() + 
  geom_line(mapping = aes(color=continent))

# group of points, BEHIND another group of points. layer multiple sets of points?
