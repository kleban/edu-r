library(tidyverse)
str(msleep)
plot(msleep$sleep_total, msleep$sleep_rem)

round(cor(na.omit(msleep[,-c(1:5)])),2)

head(msleep)

install.packages("reshape2")

library(ggplot2)
library(reshape2) # for melt

cor_matrix <- round(cor(na.omit(msleep[,-c(1:5)])),2)

ggplot(melt(cor_matrix), aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1)) +
  labs(title = "Heatmap for Correlation Matrix", x = "", y = "")

ggplot(subset(melt(cor_matrix), lower.tri(cor_matrix)), 
       aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1)) +
  labs(title = "Heatmap for Correlation Matrix", x = "", y = "")

ggplot(subset(melt(cor_matrix), lower.tri(cor_matrix)), 
       aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", mid = "white", high = "red", midpoint = 0) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust = 1)) +
  labs(title = "Heatmap for Correlation Matrix", x = "", y = "") +
  geom_text(aes(label = round(value, 2)), color = "white", size = 5)

pairs(na.omit(msleep[,-c(1:5)]), upper.panel = NULL)
