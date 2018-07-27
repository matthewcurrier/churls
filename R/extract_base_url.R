#' Extract base url from vector of urls. Function will take a url and strip everything to right of question mark.
#'
#' This function has two arguments.
#' @param df Dataframe to analyze.
#' @param page Field that contains urls on which base url will be extracted.
#' @keywords media, parameter, url, string
#' @export
#' @examples
#' extract_base_url(df, page)


#
extract_base_url <- function(df, page) {
  library(tidyr)
  library(rlang)
  page <- enquo(page)

  # Make sure it's not a factor
  df <- df %>% separate(!!page, into = c("url_wo_query_string", "query_string"), sep = "\\?", remove = FALSE)
  df

}
