#' Extract media id from urls.
#'
#' This function has two arguments.
#' @param df Dataframe to analyze.
#' @param page Field that contains urls on which filtering will occur.
#' @keywords media, parameter, url, string
#' @export
#' @examples
#' extract_media_id(df, page)


#
extract_media_id <- function(df, page) {
  library(urltools)
  library(dplyr)
  library(rlang)
  #page <- quo(page)

# Make sure it's not a factor


  param_df <- param_get(df[[page]], parameter_names = c("media"))
  df <- cbind(df, param_df)
  df


}



# x <- data.frame(page=c("http://www.chevron.com", "www.inside.com?media=fun", "www.inside.com/404.aspx", "wwww.uber.net"))


