library(tidyr)
library(dplyr)
library(ggplot2)
data("cms_patient_care", package = "tidyr")

# Select a few columns and take a small sample
care_small <- cms_patient_care |>
  dplyr::select(facility_name, measure_abbr, score) |>
  dplyr::slice_head(n = 30)

care_small

ggplot(care_small, aes(score, measure_abbr, fill = facility_name)) +
  geom_col(position = 'dodge') +
  theme_minimal() +
  labs(
    title = "Patient Care Scores by Measure",
    x = "Measure Abbreviation",
    y = "Score"
  )

