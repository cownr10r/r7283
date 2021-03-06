% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jstor_ocr.r
\name{jstor_ocr}
\alias{jstor_ocr}
\title{Take metadata and ocr text from DfR and merge it into xml files.}
\usage{
jstor_ocr(a1 = input_path, b1 = output_path)
}
\arguments{
\item{a1}{The path to the unzipped Jstor folder.}

\item{b1}{The path to a folder that will contain the output files.}
}
\value{
Produces xml files with concatenated metadata + machine readable text, and a quality control message indicating similitude between indexed file names. Note well: Due to inconsistent text tagging from file sources originating from JSTOR, may throw error messages when processing. At point of issuance, this code originates from a problem in education research practice setting.
}
\description{
Take metadata and ocr text from DfR and merge it into xml files.
}
\examples{
jstor_ocr(a1 = "path/to/d4r/files", b1 = "destination/folder/path")
}
