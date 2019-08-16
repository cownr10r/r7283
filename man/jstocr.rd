#' merge metadata and ocr text informatics from JSTOr's D4F (Documents for Research). The function currently returns a list of information for downstream further processing.
#'
#' @param a1 The path to the unzipped folder holding all of the subfolders provided by JSTOR D4R
#' @param metadata A binary variable (T/F) indicating whether the main folder has a metadata subfolder. If there is no folder detected, it will produce an error message. Defaults to T.
#' @param ngram1 A binary variable (T/F) indicating the presence of an ngram1 subfolder. If false, the function returns an empty vector.
#' @param ngram2 A binary variable (T/F) indicating the presence of an ngram2 subfolder. If false, the function returns an empty vector.
#' @param ngram3 A binary variable (T/F) indicating the presence of an ngram3 subfolder. If false, the function returns an empty vector.
#' @param ocr A binary varialbe (T/F) indicating the presence of an ocr subfolder. If false, the function returns an empty vector.
#' @examples
#' jstocr(a1 = path, ocr = T)

