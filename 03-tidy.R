library(tidyverse)

tumor <- read_csv("data/tumorgrowth_long.csv")

tumor %>%
  pivot_longer(`0`:last_col(), names_to = "day", values_to = "size")


tb <- read_csv("data/tb_long.csv")

tb %>%
  pivot_longer(starts_with(c("m", "f"))) %>%
  separate(name, into = c("sex", "age_group"), sep = 1)

cms <- read_csv("data/cms_utilization.csv")

cms_tidy <- cms %>%
  pivot_longer(`2007`:last_col(), names_to = "ayear") %>%
  pivot_wider(names_from = variable, values_from = value)

write_csv(cms_tidy, "data/cms_tidy.csv")
