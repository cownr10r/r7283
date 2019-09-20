#' Remove front parts of copied paths
#' @param a path to files
#' @return a cleansed path to a folder of documents
#' @export


elim <- function(a){
  b <- gsub("file:\\/\\/\\/", "", a)
  return(b)
}
