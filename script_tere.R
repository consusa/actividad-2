library(ggplot2)
library(plotly)
library(gapminder)

p <- gapminder %>%
  filter(year==1977) %>%
  ggplot( aes(gdpPercap, lifeExp, size = pop, color=continent)) +
  geom_point() +
  theme_bw()

ggplotly(p)