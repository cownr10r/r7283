#' Take metadata and ocr text from D4R and merge it into xml files.
#'
#' @param x  A character vector with Spanish in it. At the moment has not been tested on ascii files or latin encoding.
#' @return Neutered nouns and adjectives in Spanish. This package function was developed for a particular purpose, and
#' @return the project goal should be closely considered before implementing. The function is currently in beta testing.

neuter_spanish <- function(x){
  x <- unlist(strsplit(x, " "))
  x <- tolower(x)
  x <- gsub("[[:punct:]]", "", x)
  x <- gsub("o$", "x", x)
  x <- gsub("a$", "x", x)
  x <- gsub("as$", "xs", x)
  x <- gsub("os$", "xs", x)
  x <- paste(x, collapse = " ")
}
