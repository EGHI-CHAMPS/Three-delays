library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(x = var.label, y = reorder(var, desc(var)), fill = prop)) +
  theme_light() +
  geom_tile(color = 'black') +
  facet_grid(type2 ~ ., scales = "free", space = "free_y") +
  theme(
    strip.background = element_rect(fill = 'grey45'),
    strip.text.y = element_text(size = 9.5, color = "white"),
    legend.title = element_blank(),
    legend.position = 'bottom',
    legend.text = element_text(size = 9.5),
    legend.key.size = unit(0.45, "cm"),
    axis.text.x = element_text(size = 9.5, angle = 45, hjust = 1),
    axis.text.y = element_text(size = 9),
    axis.title = element_blank(),
    panel.border = element_blank()
  )
