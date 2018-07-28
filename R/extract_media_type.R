#' Extracts the media type from url field in dataframe and adds column that identifies media type.
#'
#' This function has five arguments.
#' @param df Dataframe to analyze.
#' @param page Field that contains urls on which media types will be extracted.
#' @keywords page, urls, media type, video, article, press release
#' @export
#' @examples
#' extract_media_type(df, page)


# This works!
extract_media_type <- function(df, page) {
  library(dplyr)
  library(stringr)
  library(rlang)
  page <- enquo(page)

  df2 <- df %>% mutate(media_release_type = case_when (
    str_detect(!!page, "\\/news\\/article\\/")==TRUE ~ "article",
    str_detect(!!page, "\\/pressreleases\\/article\\/")==TRUE ~ "press release",
    str_detect(!!page, "^tv\\.chevron\\.com")==TRUE ~ "video",
    TRUE ~ "other")
  )

  df2

}

x <- data.frame(page=c("www.chevys.com/fun/news/article/is-time-necessary.aspx",
                       "www.chevys.com/fun/pressreleases/article/is-time-necessary.aspx",
                       "tv.chevron.com/fun?media=20180912_03292.aspx"))
