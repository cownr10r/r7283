#' Take metadata and ocr text from DfR and merge it into xml files.
#'
#' @param a1 The path to the unzipped Jstor folder.
#' @param b1 The path to a folder that will contain the output files.
#' @return Produces xml files with concatenated metadata + machine readable text, and a quality control message indicating parsimony between indexed file names. Note well: Due to inconsistent text tagging from file sources originating from JSTOR, may throw error messages when processing. At point of issuance, this code originates from a problem in education research practice setting.


#' @examples jstor_ocr(a1 = "path/to/d4r/files", b1 = "destination/folder/path")
jstor_ocr <- function(a1 = input_path, b1 = output_path){

  # read in files from unzipped master folder

  hi <- list.files(paste0(a1, "/metadata"), full.names=T)
  ho <- list.files(paste0(a1, "/ocr"), full.names = T)

  # read in files to a list

  xmldata <- lapply(hi, xml2::read_xml)

  writing <- lapply(ho, readLines, warn = FALSE)

  # Remove page sequence designations, dashes, and whitespace between dashes and dislocated syllables
  # gsub out <plain_text> tags for your own <text> tags.

 #  for(i in seq_along(text)){
 #   text[[i]] <- iconv(text[[i]], "UTF-8", "UTF-8",sub='')
  #  text[[i]] <- gsub("</page>", "", text[[i]])
  #  text[[i]] <- gsub("<page sequence=\".\">", "", text[[i]])
  #  text[[i]] <- gsub("-\\s+|\\s+-\\s+|\\s+- |-" ,"", text[[i]])
   # text[[i]] <- tolower(text[[i]])
 #  }

  for(i in seq_along(writing)){
    writing[[i]] <- iconv(writing[[i]], "UTF-8", "UTF-8", sub='')
    writing[[i]] <- gsub("<.{4,20}>", "", writing[[i]])
    writing[[i]] <- gsub("^", "<text>", writing[[i]])
    writing[[i]] <- gsub("$", "</text>", writing[[i]])
    writing[[i]] <- gsub("-\\s+|\\s+-\\s+|\\s+- |-" ,"", writing[[i]])
    writing[[i]] <- tolower(writing[[i]])
  }

  textdata <- lapply(writing, xml2::read_xml)

  # cleanse names for .xml

  for(i in seq_along(hi)){
    hi[[i]] <- gsub(".*-", "", hi[[i]])
    hi[[i]] <- gsub(".xml", "", hi[[i]])
  }

  # cleanse names for .txt

  for(i in seq_along(ho)){
    ho[[i]] <- gsub(".*-", "", ho[[i]])
    ho[[i]] <- gsub(".txt","", ho[[i]])
  }



  for(i in seq_along(xmldata)){
    a <- xmldata[[i]]
    b <- textdata[[i]]
    d <- xml2::xml_add_child(a, b)
    e <- hi[[i]]
    f <- paste0("/", e)
    f <- paste0(f, ".xml")
    xml2::write_xml(a, file = paste(b1, f))
  }

  # do a quality control here -- consider identical

  ifelse(identical(hi,ho) == TRUE,
         return(print("The process has passed quality control check. All indexed .xml and .txt file names are parsimonious.")),
         return(print("The process has not passed quality control check. File merging is not reliable.")))

}
