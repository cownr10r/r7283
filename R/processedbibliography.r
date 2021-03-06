#' Processed bibliography accomplished by rectangulate
#'
#' A dataset containing 17 observations of 15 variables
#' diamonds. Missing values result in NA entries.
#'
#' @format A data frame with 17 rows and  15 variables
#' \itemize{
#'   \item Cite.Key. The citekey that will be used for citations either in latex or pandoc.
#'   \item Year. A character vector holding the year in which the documents were published.
#'   \item Evi_1. An empty vector to hold the first bit of evidence from which the first conclusion will be drawn.
#'   \item Evi_2. An empty vector to hold the second bit of evidence from which the second conclusion will be drawn.
#'   \item Evi_3. An empty vector to hold the third bit of evidence from which the third conclusion will be drawn.
#'   \item Con_1. An empty vector to hold the first conclusion based on the first bit of evidence.
#'   \item Con_2. An empty vector to hold the second conclusion based on the second bit of evidence.
#'   \item Con_3. An empty vector to hold the third conclusion based on the third bit of evidence.
#'   \item Abstract. A character vector with the abstract provided by the publishing authors.
#'   \item Author. A character vector with the names and other values of the publishing authors. This may require further cleaning.
#'   \item DOI. The digital object identifier assigned by the journal, publishing house, conference, or institution sponsoring the document
#'   \item URL. The url affiliated with the document
#'   \item Vol. The volume number of the document
#'   \item Num. The number of the issue associated with the volume holding the document.
#'   \item Doc.Type. A classification of document by the most commonly recognized bib entries recognized by LaTeX and BibTex.
#' }
#' @docType data
#' @keywords datasets,processedbibliography
#' @usage data(processedbibliography)
"processedbibliography"
