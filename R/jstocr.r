#' merge metadata and ocr text informatics from JSTOr's D4F (Documents for Research). The function currently returns a list of information for downstream further processing.
#'
#' @param a1 The path to the unzipped folder holding all of the subfolders provided by JSTOR D4R
#' @param metadata A binary variable (T/F) indicating whether the main folder has a metadata subfolder. If there is no folder detected, it will produce an error message. Defaults to T.
#' @param ngram1 A binary variable (T/F) indicating the presence of an ngram1 subfolder. If false, the function returns an empty vector.
#' @param ngram2 A binary variable (T/F) indicating the presence of an ngram2 subfolder. If false, the function returns an empty vector.
#' @param ngram3 A binary variable (T/F) indicating the presence of an ngram3 subfolder. If false, the function returns an empty vector.
#' @param ocr A binary varialbe (T/F) indicating the presence of an ocr subfolder. If false, the function returns an empty vector.
#' @return a list of information
#' @examples
#' jstocr(a1 = path, ocr = T)
jstocr <- function(a1 = path, metadata = T, ngram1 = F, ngram2 = F, ngram3 = F, ocr = F){
  ifelse(metadata ==  T, a <- list.files(paste0(a1, "/metadata"), full.names = T), print("Please be sure you have a metadata file."))
  a3 <- length(a)
  ifelse(ngram1 == T, b <- list.files(paste0(a1, "/ngram1"), full.names = T), b <- vector(mode = "character", length = a3))
  ifelse(ngram2 == T, d <- list.files(paste0(a1, "/ngram2"), full.names = T), d <- vector(mode = "character", length = a3))
  ifelse(ngram3 == T, e <- list.files(paste0(a1, "/ngram3"), full.names = T), e <- vector(mode = "character", length = a3))
  ifelse(ocr == T, f <- list.files(paste0(a1, "/ocr"), full.names = T), f <- vector(mode = "character", length = a3))
  newlist <- list(a,b,d,e,f)
  return(newlist)

}
