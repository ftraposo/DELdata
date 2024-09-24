## code to prepare `dois` dataset goes here

usethis::use_data(dois, overwrite = TRUE)
library(readr)
library(tidyverse)
all_doi <- read_csv("~/Library/CloudStorage/Dropbox/PAPERS/5_DEL data paper/all_doi.csv")

all_doi <- all_doi %>%
  filter(file == "Data")

all_doi <- all_doi %>%
  select(-c(1))

library(dplyr)
library(stringr)

library(dplyr)
library(stringr)

library(dplyr)
library(stringr)


all_doi <- all_doi |>
  mutate(id = str_replace(id, "doi:", ""))

# Print rows that were not matched
all_doi$label

paste(shQuote(all_doi$label), collapse=", ")

remove_datatables <- c('DEL_Panel_France_Wave_1_2019_Datatable.xlsx', 'DEL_Panel_UnitedStates_Wave_1_2019_Datatable.xlsx',
                       'DEL_Panel_Germany_Wave_1_Datatable.xlsx', 'DEL_Panel_GreatBritain_Wave_1_2019_Datatable.xlsx',
                         'DEL_Panel_France_Wave_2_2020_Datatable.xls','DEL_Panel_Germany_Wave_2_2020_Datatable.xlsx',
                       'DEL_Panel_GreatBritain_Wave_2_2020_Datatable.xls','DEL_Panel_UnitedStates_Wave_2_2020_Datatable.xlsx',
                       'DEL_Panel_UnitedStates_Wave_3_2021_Datatable.xls', 'DEL_Panel_Germany_Wave_3_2021_Datatable.xls',
                       'DEL_Panel_France_Wave_3_2021_Datatable.xls', 'DEL_Panel_GreatBritain_Wave_3_2021_Datatable.xls',
                       'DEL_Panel_UnitedStates_Wave_4_2022_Datatable.xls', 'DEL_Panel_Germany_Wave_4_2022_Datatable.xls',
                      'DEL_Panel_GreatBritain_Wave_4_2022_Datatable.xls',  'DEL_Panel_France_Wave_4_2022_Datatable.xls',
                     'DEL_Panel_Germany_Wave_5_2023_Datatable.xls',  'DEL_Panel_France_Wave_5_2023_Datatable.xls',
                      'DEL_Panel_GreatBritain_Wave_5_2023_Datatable.xls', 'DEL_Panel_UnitedStates_Wave_5_2023_Datatable.xls',
                      'DEL_Tracker_GreatBritain_Wave_1_2020_Datatable.xls', 'DEL_Tracker_Germany_Wave_2_2020_Datatable.xls',
                     'DEL_Tracker_UnitedStates_Wave_1_2020_Datatable.xls', 'DEL_Tracker_UnitedStates_Wave_2_2020_Datatable.xls',
                      'DEL_Tracker_GreatBritain_Wave_2_2020_Datatable.xls', 'DEL_Tracker_France_Wave_1_2020_Datatable.xls',
                        'DEL_Tracker_France_Wave_2_2020_Datatable.xls',  'DEL_Tracker_Germany_Wave_1_2020_Datatable.xls',
                      'DEL_Tracker_Germany_Wave_4_2021_Datatable.xlsx', 'DEL_Tracker_GreatBritain_Wave_3_2021_Datatable.xlsx',
                       'DEL_Tracker_Germany_Wave_3_2021_Datatable.xlsx',  'DEL_Tracker_France_Wave_4_2021_Datatable.xlsx',
                     'DEL_Tracker_UnitedStates_Wave_4_2021_Datatable.xlsx','DEL_Tracker_GreatBritain_Wave_4_2021_Datatable.xlsx',
                     'DEL_Tracker_UnitedStates_Wave_3_2021_Datatable.xlsx', 'DEL_Tracker_France_Wave_3_2021_Datatable.xlsx',
                     'DEL_Tracker_GreatBritain_Wave_5_2022_Datatable.xlsx', 'DEL_Tracker_Germany_Wave_5_2020_Datatable.xlsx',
                     'DEL_Tracker_UnitedStates_Wave_5_2022_Datatable.xlsx',  'DEL_Tracker_France_Wave_5_2022_Datatable.xlsx',
                    'DEL_Tracker_Germany_Wave_6_2022_Datatable.xlsx', 'DEL_Tracker_UnitedStates_Wave_6_2022_Datatable.xlsx',
                    'DEL_Tracker_France_Wave_6_2022_Datatable.xlsx', 'DEL_Tracker_GreatBritain_Wave_6_2022_Datatable.xlsx',
                      'DEL_Tracker_France_Wave_8_2023_Datatable.xlsx','DEL_Tracker_UnitedStates_Wave_7_2023_Datatable.xlsx',
                    'DEL_Tracker_France_Wave_7_2023_Datatable.xlsx',  'DEL_Tracker_UnitedStates_Wave_8_2023_Datatable.xlsx',
                    'DEL_Tracker_Germany_Wave_8_2023_Datatable.xlsx', 'DEL_Tracker_GreatBritain_Wave_7_2023_Datatable.xlsx',
                    'DEL_Tracker_Germany_Wave_7_2023_Datatable.xlsx',  'DEL_Tracker_GreatBritain_Wave_8_2023_Datatable.xlsx',
                     'DEL_Tracker_GreatBritain_Wave_9_2024_Datatable.xls', 'DEL_Tracker_France_Wave_9_2024_Datatable.xls',
                   'DEL_Tracker_Germany_Wave_9_2024_Datatable.xls', 'DEL_Tracker_UnitedStates_Wave_9_2024_Datatable.xls',
                   'DEL_Tracker_UnitedStates_Wave10_2024_Datatable.xls', 'DEL_Tracker_GreatBritain_Wave_10_2024_Datatable.xls',
                   'DEL_Tracker_France_Wave_10_2024_Datatable.xls', 'DEL_Tracker_Germany_Wave_10_2024_Datatable.xls',
                   'DEL_Sandbox_France_Feb2020_Datatable.xls', 'DEL_Sandbox_GreatBritain_Jul2020_Datatable.xls',
                   'DEL_Sandbox_GreatBritain_Apr2020_Datatable.xls', 'DEL_Sandbox_Germany_Feb2020_Datatable.xls',
                   'DEL_Sandbox_UnitedStates_May2020_Datatable.xls',
                    'DEL_Sandbox_France_Jul2020_Datatable.xls', 'DEL_Sandbox_UnitedStates_Jul2020_Datatable.xls',
                   'DEL_Sandbox_Germany_Jul2020_Datatable.xls', 'DEL_Sandbox_France_May2021_Datatable.xls',
                    'DEL_Sandbox_GreatBritain_Jun2021_Datatable.xls', 'DEL_Sandbox_France_Aug2021_Datatable.xls',
                    'DEL_Sandbox_Germany_Jul2021_Datatable.xls', 'DEL_Sandbox_UnitedStates_Sep2021_Datatable.xls',
                    'DEL_Sandbox_France_Jun2022_Datatable.xls',  'DEL_Sandbox_GreatBritain_Jun2022_Datatable.xls',
                   'DEL_Sandbox_Germany_Jun2022_Datatable.xls',  'DEL_Sandbox_France_Jan2022_Datatable.xls',
                    'DEL_Sandbox_Germany_Mar2022_Datatable.xlsx', 'DEL_Sandbox_Germany_Feb2023_Datatable.xls',
                    'DEL_Sandbox_France_Feb2023_Datatable.xls', 'DEL_Sandbox_GreatBritain_Oct2023_Datatable.xls',
                    'DEL_Sandbox_Germany_Oct2023_Datatable.xls', 'DEL_Sandbox_France_May2023_Datatable.xls',
                    'DEL_Sandbox_GreatBritain_Feb2023_Datatable.xls', 'DEL_Sandbox_UnitedStates_Feb2023_Datatable.xls',
                   'DEL_Sandbox_UnitedStates_Oct2023_Datatable.xls')

all_doi <- all_doi |>
  filter(!label %in% remove_datatables)

dois <- all_doi

usethis::use_data(dois, overwrite = TRUE)
