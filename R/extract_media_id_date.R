#' Extract date from media id.
#'
#' This function has two arguments.
#' @param df Dataframe to analyze.
#' @param media_id Field that contains media id. Field is parsed for date.
#' @keywords media, id, date
#' @export
#' @examples
#' extract_media_id_date(df, media_id)


#
extract_media_id_date <- function(df, media_id) {
  library(dplyr)
  library(rlang)
  page <- enquo(media_id)
  df <- df %>% mutate(media_id_date=as.Date(str_match(!!media_id, "[0-9]{8}"), "%Y%m%d"))
  df

  # Tests
  # 1. Make sure column is not a factor.
  # 2. Make sure media id is 8 chars between start and underscore
}



# x <- data.frame(page=c("http://www.chevron.com", "www.inside.com?media=fun", "www.inside.com/404.aspx", "wwww.uber.net", "tv.chevron.com/default.aspx?channel=8&media=20180213_104112"), stringsAsFactors=FALSE)

