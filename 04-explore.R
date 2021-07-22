library(tidyverse)
library(ggplot2)

diamonds %>%
  count(cut) %>%
  arrange(-n)

diamonds %>%
  count(cut, color, clarity) %>%
  arrange(-n)

diamonds %>%
  count(cut, color, clarity) %>%
  arrange(n)

diamonds %>%
  count(cut, color, clarity) %>%
  arrange(color, n)

diamonds %>%
  select(price)

diamonds %>%
  pull(price) %>%
  mean()

mean(diamonds$price)
sd(diamonds$price)

ggplot(data = diamonds, mapping = aes(x = price)) +
  geom_histogram()

ggplot(data = diamonds, mapping = aes(x = color, y = price)) +
  geom_boxplot()

ggplot(data = diamonds, mapping = aes(x = color, y = price)) +
  geom_violin()

ggplot(data = diamonds, mapping = aes(x = carat, y = price)) +
  geom_point()

ggplot(data = diamonds,
       mapping = aes(x = carat,
                     y = price,
                     color = color,
                     shape = cut)) +
  geom_point() +
  facet_wrap(~cut)

ggplot(data = diamonds,
       mapping = aes(x = carat,
                     y = price,
                     color = color)) +
  geom_point() +
  geom_smooth()


data <- data.frame(
  name=c("A","B","C","D","E"),
  value=c(3,12,5,18,45)
)
