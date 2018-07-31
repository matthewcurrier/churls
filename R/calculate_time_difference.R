#' Filter out urls we don't care for.
#'
#' This function has five arguments.
#' @param df Dataframe to analyze.
#' @param date1 Date field.
#' @param date2 Date field 2, which will be subtracted from date 1.
#' @keywords date, difference, days
#' @export
#' @examples
#' calculate_time_difference(x, "d1", "d2")


# This works!
calculate_time_difference <- function(df, date1, date2) {
    library(dplyr)
    df <- df %>% mutate(diff_in_days=as.numeric(df[[date2]] - df[[date1]]))
    df
}


# seq1 <- seq(as.Date("2018-01-01"), as.Date("2018-02-04"), by="days")
# seq2 <- seq(as.Date("2018-01-14"), as.Date("2018-02-17"), by="days")

# x <- data.frame(d1=seq1, d2=seq2, stringsAsFactors = FALSE)
