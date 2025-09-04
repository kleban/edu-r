#install.packages("tidyverse")
library(tidyverse)

?msleep

head(msleep)

msleep |> arrange(bodywt) |> head()
msleep |> arrange(bodywt) |> tail()

msleep[msleep$sleep_total > 8, ]

cor(msleep$brainwt, msleep$sleep_total, use = "complete.obs")
cor(msleep$bodywt, msleep$sleep_total, use = "complete.obs")
cor(msleep$brainwt, msleep$bodywt, use = "complete.obs")

table(msleep$vore)
proportions(table(msleep$vore))

plot(msleep$sleep_total, msleep$sleep_rem)

library(ggplot2)
ggplot(msleep, aes(x = sleep_total, y = sleep_rem, colour = vore)) +
  geom_point()
