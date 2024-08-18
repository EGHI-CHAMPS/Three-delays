library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = reorder(variable, prop), x = prop, fill = label)) +
  theme_hc() +
  geom_col(position = position_dodge(.8)) +
  geom_errorbar(aes(xmin = l.ci, xmax = u.ci), 
                size = .3, width = .2, position = position_dodge(.8)) +
  scale_x_continuous(labels = scales::percent_format(accuracy = 1), expand = expansion(mult = c(0, .02))) +
  facet_grid(rows = vars(label), scales = "free_y", space = "free_y") +
  labs(x = NULL, y = "Delay") +
  theme(
    panel.border = element_rect(color = "black", fill = NA, size = .5),
    strip.background = element_rect(fill = 'grey45', color = "black"),
    strip.text.y = element_text(size = 9.5, color = "white"),
    axis.title.y = element_text(face = 'bold', size = 9.5),
    legend.position = "none",
    legend.text = element_text(size = 9),
    axis.text.x = element_text(size = 9),
    axis.text.y = element_text(size = 8.5)
  )
