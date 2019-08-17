#' Take metadata and ocr text from D4R and merge it into xml files.
#'
#' @param a1 The path to the unzipped Jstor folder.
#' @param b1 The path to a folder that will contain the output files.
#' @return xml files with merged metadata and machine readable text. Quality control message indicating parsimony between indexed file names.
#' @examples jstor_ocr(a1 = "path/to/d4r/files", b1 = "destination/folder/path")
jstor_ocr <- function(a = input_path, b = output_path){

  # read in files from unzipped master folder

  hi <- list.files(paste0(a, "/metadata"), full.names=T)
  ho <- list.files(paste0(a, "/ocr"), full.names = T)

  # read in files to a list

  xmldata <- lapply(hi, xml2::read_xml)
  textdata <- lapply(ho, xml2::read_xml)

  # cleanse names for xml

  for(i in seq_along(hi)){
    hi[[i]] <- gsub(".*-", "", hi[[i]])
    hi[[i]] <- gsub(".xml", "", hi[[i]])
  }

  # cleanse names for .txt

  for(i in seq_along(ho)){
    ho[[i]] <- gsub(".*-", "", ho[[i]])
    ho[[i]] <- gsub(".txt","", ho[[i]])
  }

  # do a quality control here -- consider identical
  ifelse(identical(hi,ho) == TRUE,
         return(print("The process has passed quality control check. All indexed .xml and .txt file names are parsimonious.")),
         return(print("The process has not passed quality control check. File merging is not reliable.")))

  for(i in seq_along(xmldata)){
    a <- xmldata[[i]]
    b <- textdata[[i]]
    d <- xml2::xml_add_child(a, b)
    e <- hi[[i]]
    f <- paste(e, ".xml")
    xml2::write_xml(a, file = paste("C:/Users/mariomartinez/Desktop/snake/", f))
  }

}
