metadata <- read.csv("./Burrower_bugs_metadata_DEC32024.csv", header = TRUE)
metadata <- metadata %>% filter(!is.na(Sp.ID)) %>% filter(!is.na(Year))
metadata$Month <- factor(metadata$Month, levels = c("March", "April", "May", "June", "July",
                                                     "August", "September", "October"))
ggplot(metadata, aes(x= factor(Month), fill = Sp.ID)) + 
  geom_bar(position = position_dodge(preserve = "single")) +
  scale_fill_manual(values = c("darkgray", "black", "lightgray"), 
                    labels = c(expression(italic("Dallasiellus lugubris"), italic("Pangaeus bilineatus"), "unknown"))) +
  facet_grid(~ Year, scales = "free_x", space = "free_x") + 
  labs(x = "Month", y = "Number of individuals", fill = "Species") +
  theme_classic()

ggsave("./individuals_per_month.pdf", width = 15.1, height = 4.82)
