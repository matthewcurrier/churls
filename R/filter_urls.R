#' Filter out urls we don't care for.
#'
#' This function has five arguments.
#' @param df Dataframe to analyze.
#' @param page Field that contains urls on which filtering will occur.
#' @param more_strings More strings to filter on.
#' @keywords paid search, sem, clicks, impressions, cpm, cpc
#' @export
#' @examples
#' filter_urls(df, page)


# This works!
filter_urls <- function(df, page) {
  library(dplyr)
  library(stringr)
  page <- enquo(page)


  strings <- c('search\\.aspx\\?qt=',
               '404\\.aspx',
               '\\.aspx\\?q=',
               'results\\.aspx',
               'error\\.aspx',
               '\\?tags=',
               '\\?cat=',
               '\\?!!page=',
               'search\\?q=',
               'search\\?k=',
               '111\\.221\\.29\\.49',
               '127\\.0\\.0\\.1',
               '14\\.177\\.235\\.221',
               '192\\.110\\.165\\.94',
               'prcxgxaxbhejijdhggbfjjebjhdrp',
               'www\\.webinspect\\.hp\\.com',
               '0watchmoviesonline0\\.blogspot\\.com',
               'z5h64q92x9\\.net',
               'spiwivar2',
               '146\\.23\\.28\\.65',
               '146\\.38\\.116\\.223',
               '172\\.229\\.237\\.56',
               '^$',
               '^\\/$',
               '^\\/index.html')
 # strings <- c(strings, more_strings)
 # message <- paste("Urls were filtered based on this string: ", strings)
 # print(message)

  df <- df %>% filter(!str_detect(!!page, paste(strings, collapse = '|')))

}

