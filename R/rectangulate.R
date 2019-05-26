#' Create a data frame
#' @param a a bib file
#' @return a matrix
rectangulate <- function(a) {
  b <- readLines(a)
  return(b)
}
