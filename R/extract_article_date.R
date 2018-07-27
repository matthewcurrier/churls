#' Extract article date from url.
#'
#' This function has two arguments.
#' @param df Dataframe to analyze.
#' @param media_id Field that contains media id. Field is parsed for date.
#' @keywords media, id, date
#' @export
#' @examples
#' extract_media_id_date(df, media_id)


#
extract_article_date <- function(df, page) {
  library(dplyr)
  library(rlang)
  library(stringr)
  page <- enquo(page)
  df <- df %>% mutate(
    article_date=as.Date(str_replace_all(str_match(!!page, "\\/[0-9]{8}[_]{1}"), "[[:punct:]]", ""), "%m%d%Y")
    )
  df

  # Tests
  # 1. Make sure column is not a factor.
  # 2. Make sure media id is 8 chars between start and underscore
}



# x <- data.frame(page=c("http://www.chevron.com",
# "www.inside.com?media=fun",
# "www.inside.com/404.aspx",
# "wwww.uber.net",
# "news.chevron.com/corporate/news/article/04102018_2017annualreport.aspx",
# "tv.chevron.com/default.aspx?channel=8&media=20180213_104112"),
#  stringsAsFactors=FALSE)

