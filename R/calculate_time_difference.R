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
calculate_time_difference <- function(df, date1, date2) {
  # library(dplyr)
  # library(rlang)
  # library(lubridate)
  # d1 <- pull(df, enquo(date1))
  # d2 <- pull(df, enquo(date2))
  #
  #
  # x <- interval(ymd(d1), ymd(d2))
  # x <- x %/% days(1)
  # #df <- df %>% mutate(diff_in_days=x)



    #df2 <- df %>% mutate(diff_in_days = difftime(!!date1))
    df <- df %>% mutate(diff_in_days=as.numeric(df[[date2]] - df[[date1]]))
    df
}

# x <- data.frame(d1=as.Date("2018-03-01", "%Y-%m-%d"), d2=as.Date("2018-03-11", "%Y-%m-%d"))
seq1 <- seq(as.Date("2018-01-01"), as.Date("2018-02-04"), by="days")
seq2 <- seq(as.Date("2018-01-14"), as.Date("2018-02-17"), by="days")

x <- data.frame(d1=seq1, d2=seq2, stringsAsFactors = FALSE)
