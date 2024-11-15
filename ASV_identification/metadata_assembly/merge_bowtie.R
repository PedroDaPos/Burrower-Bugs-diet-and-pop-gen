library(tidyverse)
setwd("/Users/ento-user/Library/CloudStorage/OneDrive-UniversityofGeorgia/Burrower Bug/BB diet and popgen paper/diet analysis/SpeciesID/BowtieAlignment")

#load input files
summary_bowtie_MC_part1 <- read_tsv("./summary_table_bowtie_updated 2.txt")
names(summary_bowtie_MC_part1) <- str_replace_all(names(summary_bowtie_MC_part1), c(" " = "."))
summary_bowtie_MC_part2 <- read_tsv("./summary_remainingfiles_updated.txt")
names(summary_bowtie_MC_part2) <- str_replace_all(names(summary_bowtie_MC_part2), c(" " = "."))
summary_bowtie_PAPR <- read_tsv("./summary_pbb3.txt")
names(summary_bowtie_PAPR) <- str_replace_all(names(summary_bowtie_PAPR), c(" " = "."))
metadata_trnf <- read_csv("./trnF_samples_metadata_with_IDS.csv")

#Select columns, Rename columns, create Species ID column
MC_part1 <- summary_bowtie_MC_part1 %>% select(Indiv_ID, High.Mapper, Low.Mapper) %>% mutate(Sp.ID = case_when(
  High.Mapper > 50 ~ "Pbilineatus", Low.Mapper > 50 ~ "Dlugubris", High.Mapper < 50 & Low.Mapper < 50 ~ "unknown")
)

MC_part2 <- summary_bowtie_MC_part2 %>% select(Indiv_ID, High.Mapper, Low.Mapper) %>% mutate(Sp.ID = case_when(
  High.Mapper > 50 ~ "Pbilineatus", Low.Mapper > 50 ~ "Dlugubris", High.Mapper < 50 & Low.Mapper < 50 ~ "unknown")
)

PAPR_samples <- summary_bowtie_PAPR %>% rename(Indiv_ID = Sample.Name) %>% mutate(Sp.ID = case_when(
  High.Mapper > 50 ~ "Pbilineatus", Low.Mapper > 50 ~ "Dlugubris", High.Mapper < 50 & Low.Mapper < 50 ~ "unknown")
)

all_samples <- bind_rows(MC_part1, MC_part2, PAPR_samples)

# Merge files and save
merge_bowtie_metadata <- left_join(metadata_trnf, all_samples, by="Indiv_ID")
write.csv(merge_bowtie_metadata, "./merge_bowtie_metadata.csv")
