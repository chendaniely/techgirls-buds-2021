library(tidyverse)

tumor <- read_csv("data/medicaldata_tumorgrowth.csv")

select(tumor, Group, Day, Size)

tumor %>%
  select(Group, Day, Size)

tumor %>%
  filter(Day == 0)

tumor %>%
  filter(Day == 0, Group == 1)

tumor %>%
  filter(Day == 0 & Group == 1)

tumor %>%
  filter(Day == 0 | Day == 20)

tumor %>%
  filter(Day == 0 | Day == 20) %>%
  select(Group, Day, Size)

# order matters if you select out columns
tumor %>%
  select(Group, Size) %>%
  filter(Day == 0 | Day == 20)

stats <- tumor %>%
  group_by(Group, Day) %>%
  summarize(avg_size = mean(Size),
            sd_size = sd(Size))

write_csv(stats, "data/stats.csv")
