#' Take metadata and ocr text from D4R and merge it into xml files.
#'
#' @param a1 The path to the unzipped Jstor folder.
#' @param b1 The path to a folder that will contain the output files.
#' @return xml files with merged metadata and machine readable text.
#' @examples jstor_ocr(a1 = "path/to/d4r/files", b1 = "destination/folder/path")
jstor_ocr <- function(a1 = input_path, b1 = output_path){

  hi <- list.files(paste0(a, "/metadata"), full.names=T)
  ho <- list.files(paste0(a, "/ocr"), full.names = T)

  # THIS IS THE MOST DEVELOPED CODE YET
  xmldata <- lapply(hi, xml2::read_xml)
  textdata <- lapply(ho, xml2::read_xml)

  # process list names -- eliminate the long names and keep only doi info.

  for(i in seq_along(hi)){
    hi[[i]] <- gsub(".*-", "", hi[[i]])
    hi[[i]] <- gsub(".xml", "", hi[[i]])
  }

  for(i in seq_along(ho)){
    ho[[i]] <- gsub(".*-", "", ho[[i]])
    ho[[i]] <- gsub(".txt","", ho[[i]])
  }


  for(i in seq_along(xmldata)){
    a <- xmldata[[i]]
    b <- textdata[[i]]
    d <- xml2::xml_add_child(a, b) # The problem is somehwere here.
    e <- hi[[i]]
    f <- paste(e, ".xml")
    xml2::write_xml(a, file = paste(b1, f))
  }

}
