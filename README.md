# DELdata

Public support is crucial for shaping effective development and foreign aid policies. The Development Engagement Lab (DEL) has conducted comprehensive surveys in France, Germany, Great Britain, and the U.S. to track and analyse public attitudes on foreign aid and engagement with sustainable development. In this R package we provide access to the DEL's data. This  data comprises nationally representative panel data (2019 - 2023), repeated cross-sections (2019 - 2024), and several foreign aid subject-specific datasets. DEL has made available 87 datasets totalling 246,352 observations from 129,128 unique respondents. The DEL data will enable scholars and policymakers to produce valuable insights that will generate a better understanding of how citizens think about, and engage with, global poverty and sustainable development. 

## Installation

You can install the DELdata package using `install.package()` or alternatively, you can download it using `devtools::install_github("ftraposo/DELdata")`

```r
install.package("DELdata")
```

## Example

This is a basic example how to use this package. The function has three arguments: `country`, `year`, and `type`.

```r
library(DELdata)
get_del_data(country = "France", year = "2020", type = "Panel")
```

You can also download several datasets by creating vector of your query. For example, if you want to download the data for France and Germany, you need to set `country = c("France", "Germany")`. 

```r
library(DELdata)
get_del_data(country = c("France", "Germany"), year = c("2020", "201", type = "Tracker")
```
