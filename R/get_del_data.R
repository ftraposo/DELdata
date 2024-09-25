#' DELdata: An R package to download Development Engagement Lab datasets
#'
#' The main function of this package is `get_del_data()`, which allows you to download DEL's data based on the country, type, and years.
#'
#' @param country A vector of countries. Options include "France", "Germany", "Great Britain", and "United States".
#' @param year A vector containing one or several years. Acceptable values are from 2019 to 2024.
#' @param type A vector containing the data type. Options include "Panel", "Tracker", and "Sandbox".
#'
#' @return A list of data frames containing the requested datasets.
#' @export
#' @import stringi
#' @importFrom stringr str
#' @importFrom haven read_sav
#'
#' @examples
#' get_del_data(country = 'France', year = '2020', type = 'Panel')

get_del_data <- function(country = NULL, year = NULL, type = NULL) {

  if (!requireNamespace("dataverse", quietly = TRUE)) {
    stop("Please install the 'dataverse' package.")
  }

  if (!requireNamespace("stringi", quietly = TRUE)) {
    stop("Please install the 'stringi' package.")
  }

  if (!is.null(country)) {
    dois <- dois[dois$country %in% country, ]
  }

  if (!is.null(year)) {
    dois <- dois[dois$year %in% year, ]
  }

  if (!is.null(type)) {
    dois <- dois[dois$type %in% type, ]
  }

  result_list <- list()

  for (i in seq_len(nrow(dois))) {
    filename <- dois$label[i]
    doi <- dois$id[i]

    message("Processing DOI: ", doi)


    df <- suppressWarnings({
      response <- tryCatch({
        dataverse::get_dataframe_by_name(
          filename = filename,
          dataset = doi,
          server = "dataverse.harvard.edu",
          .f = haven::read_sav
        )
      }, error = function(e) {
        message("Error occurred while fetching DOI: ", doi, "\n", e$message)
        return(NULL)
      })
    })

    if (is.null(df)) {
      next
    }

    df_name <- paste0("data_",
                      stringi::stri_replace_all_fixed(country[1], " ", "_"), "_",  # Replace spaces with underscores
                      stringi::stri_replace_all_fixed(type[1], " ", "_"), "_",    # Replace spaces with underscores
                      year[1], "_",
                      i)  # Append the index to ensure uniqueness
    assign(df_name, df, envir = .GlobalEnv)
    message("Successfully downloaded and saved as: ", df_name)
    message("Structure of df for DOI ", doi, ":")
    str(df)
  }

  return(result_list)
}



