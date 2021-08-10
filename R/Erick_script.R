library(tidyverse)

pop <- gapminder::gapminder

pop %>% filter(year > 2000) %>%
  ggplot(aes(x = continent, y = lifeExp, fill = continent)) +
  geom_col() + theme_classic()+
  facet_grid(~year) + theme(axis.text.x = element_text(angle = 90))
