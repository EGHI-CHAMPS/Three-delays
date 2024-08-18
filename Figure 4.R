library(ggplot2)
library(dplyr)

dat %>%
  ggplot(aes(y = var.label, x = prop, color = delay)) +
  theme_light() +
  geom_point(position = position_dodge(width = 0.6), size = 2) +
  geom_linerange(aes(xmin = l.ci, xmax = u.ci), 
                 position = position_dodge(width = 0.6), linewidth = 0.32) +
  geom_text(aes(label = prop.ci, x = 124.1), 
            position = position_dodge(width = 0.8), 
            hjust = 1, size = 2.73, show.legend = FALSE) +
  scale_x_continuous(labels = scales::percent_format(accuracy = 1)) +
  facet_grid(switch = 'y', space = "free_y", scales = "free", labeller = label) +
  labs(x = "%") 
  theme(
    panel.grid = element_blank(),
    strip.background = element_rect(fill = '#a4a4a4'),
    strip.text = element_text(size = 10, face = 'bold', color = 'white'),
    legend.title = element_blank(),
    legend.position = 'bottom',
    legend.text = element_text(size = 10),
    axis.text = element_text(size = 9.5),
    axis.title = element_blank(),
    axis.text.y = element_text(size = 9.5),
    panel.border = element_rect(color = "#a4a4a4", fill = NA, size = 0.1)
  ) 
