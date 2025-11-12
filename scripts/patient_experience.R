library(tidyr)
library(dplyr)
library(ggplot2)
data("cms_patient_experience", package = "tidyr")

orgs <- c('TRINITY WEST', 'TRINITY HEALTH', 'REX HOSPITAL INC', 'HOLZER CLINIC LLC')

exp_summary <- cms_patient_experience |>
  filter(org_nm %in% org_nm)

exp_summary

ggplot(exp_summary, aes(prf_rate, org_nm, fill = measure_cd)) +
  geom_col(position = "dodge")

