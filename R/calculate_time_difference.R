#' Filter out urls we don't care for.
#'
#' This function has five arguments.
#' @param df Dataframe to analyze.
#' @param date1 Date field.
#' @param date2 Date field 2, which will be subtracted from date 1.
#' @keywords date, difference, days
#' @export
#' @examples
#' filter_urls(df, page)


# This works!
calculate_time_difference <- function(df, date1, date2, unit = "days") {
  library(dplyr)
  library(rland)
  library(stringr)
  page <- quo(page)

  #df2 <- df %>% mutate(diff_in_days = difftime(!!date1))
  df[["diff_in_days"]] <- difftime(df[[date1]], df[[date2]], units = units)
}

