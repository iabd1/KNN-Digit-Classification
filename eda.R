library(tidyverse)

digits <- read_csv("digits.csv")

digits %>% 
  count(label) %>%
  ggplot(aes(x = factor(label), y = n)) +
  geom_col() +
  labs(title = "Number of examples per digit", x = "Digit", y = "Count")

ggsave("plots/digit_counts.png")

one_digit <- digits %>% 
  filter(label == 3) %>% 
  slice(1) %>% 
  select(-label) %>% 
  unlist()

pixel_matrix <- matrix(one_digit, nrow = 8, byrow = TRUE)
pixel_matrix_rotated <- t(apply(pixel_matrix, 2, rev))  # rotate to correct orientation

png("plots/example_digit.png")
image(pixel_matrix_rotated, col = grey.colors(256), main = "Example digit: 3")
dev.off()

