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
