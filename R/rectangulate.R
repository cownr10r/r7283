#'  A Matrix Literature Review Data Frame
#' @param a A .bib file
#' @return A dataframe to export as a foundation for the matrix literature review
rectangulate <- function(a = path_to_bib){


  rl <- function(a){
    t1 <- readLines(a)
    t2 <- capture.output(cat(t1, sep=""))
    t3 <- gsub("\t", "", t2)
    t4 <- tolower(t3)
    t5 <- strsplit(t4, "},}")
    t6 <- unlist(t5)
  }



  ab <- function(rl){
    verb_abstract <-".*abs[=][{]|.*abs\\s[=]\\s[{]|.*abs\\s(=){1}[{]|.*abs(=){1}\\s[{]|.*[,]abs(=){1}[{]|.*[,]abs\\s(=){1}\\s[{]|.*[,]abs\\s(=){1}[{]|.*[,]abs(=){1}\\s[{]|.*abstract(=){1}[{]|.*abstract\\s(=){1}\\s[{]|.*abstract(=){1}\\s[{]|.*abstract\\s(=){1}[{]|.*[,]abstract\\s(=){1}\\s[{]"
    a1 <- gsub(verb_abstract,"", rl) # ".*abstract|.*[,]abstract"
    a2 <- gsub("[}][,].*","",a1)
    a3 <- gsub("=\\{|= \\{", "", a2)
    a4 <- grepl("@", a3)
    a5 <- ifelse(a4 == FALSE, a3, NA)
    return(a5)
  }



  aut <- function(rl){
    verb_author <-".*aut[=][{]|.*aut\\s[=]\\s[{]|.*aut\\s(=){1}[{]|.*aut(=){1}\\s[{]|.*[,]aut(=){1}[{]|.*[,]aut\\s(=){1}\\s[{]|.*[,]aut\\s(=){1}[{]|.*[,]aut(=){1}\\s[{]|.*author(=){1}[{]|.*author\\s(=){1}\\s[{]|.*author(=){1}\\s[{]|.*author\\s(=){1}[{]|.*[,]author\\s(=){1}\\s[{]"
    aut <- gsub(verb_author, "", rl, perl = TRUE) #".*[}][,]author|.*[,]author"
    aut1 <- gsub("[}][,].*","",aut)
    aut2 <- gsub("=\\{|= \\{", "", aut1)
    aut3 <- grepl("@", aut2)
    aut4 <-  ifelse(aut3 == FALSE,  aut2, NA)
    return(aut4)
  }

  yr <- function(rl){
    verb_year <-".*yr(=){1}[{]|.*yr\\s(=){1}\\s[{]|.*yr\\s(=){1}[{]|.*yr(=){1}\\s[{]|.*[,]yr(=){1}[{]|.*[,]yr\\s(=){1}\\s[{]|.*[,]yr\\s(=){1}[{]|.*[,]yr(=){1}\\s[{]|.*year(=){1}[{]|.*year\\s(=){1}\\s[{]|.*year(=){1}\\s[{]|.*year\\s(=){1}[{]|.*[,]year\\s(=){1}\\s[{]"
    yr1 <- gsub(verb_year,"", rl, perl = TRUE)
    yr2 <- gsub("[}].*", "", yr1)
    yr3 <- grepl("@", yr2)
    yr4 <-  ifelse(yr3 == FALSE,  yr2, NA)
    return(yr4)
  }

  vl <- function(rl){
    verb_volume <-".*vol(=){1}[{]|.*vol\\s(=){1}\\s[{]|.*vol\\s(=){1}[{]|.*vol(=){1}\\s[{]|.*[,]vol(=){1}[{]|.*[,]vol\\s(=){1}\\s[{]|.*[,]vol\\s(=){1}[{]|.*[,]vol(=){1}\\s[{]|.*volume(=){1}[{]|.*volume\\s(=){1}\\s[{]|.*volume(=){1}\\s[{]|.*volume\\s(=){1}[{]|.*[,]volume\\s(=){1}\\s[{]"
    vl1 <- gsub(verb_volume,"",rl, perl = TRUE)
    vl2 <- gsub("[}].*", "", vl1)
    vl3 <- grepl("@", vl2)
    vl4 <-  ifelse(vl3 == FALSE,  vl2, NA)
    return(vl4)
  }

  nm <- function(rl){
    verb_number <-".*num(=){1}[{]|.*num\\s(=){1}\\s[{]|.*num\\s(=){1}[{]|.*num(=){1}\\s[{]|.*[,]num(=){1}[{]|.*[,]num\\s(=){1}\\s[{]|.*[,]num\\s(=){1}[{]|.*[,]num(=){1}\\s[{]|.*number(=){1}[{]|.*number\\s(=){1}\\s[{]|.*number(=){1}\\s[{]|.*number\\s(=){1}[{]|.*[,]number\\s(=){1}\\s[{]"
    nm1 <- gsub(verb_number,"", rl, perl = TRUE)
    nm2 <- gsub("[}].*", "", nm1)
    nm3 <- grepl("@", nm2)
    nm4 <-  ifelse(nm3 == FALSE,  nm2, NA)
    return(nm4)
  }

  ur <- function(rl){
    verb_url <- ".*url\\s[=]\\s[{]"
    ur1 <- gsub(verb_url,"", rl, perl = TRUE)
    ur2 <- gsub("[}].*", "",ur1)
    ur3 <- grepl("@", ur2)
    ur4 <-  ifelse(ur3 == FALSE,  ur2, NA)
    return(ur4)
  }

  doi <- function(rl){
    verb_doi<-".*doi(=){1}[{]|.*doi\\s(=){1}\\s[{]|.*doi\\s(=){1}[{]|.*doi(=){1}\\s[{]|.*[,]doi(=){1}[{]|.*[,]doi\\s(=){1}\\s[{]|.*[,]doi\\s(=){1}[{]|.*[,]doi(=){1}\\s[{]"
    do1 <- gsub(verb_doi, "", rl, perl = TRUE)
    do2 <- grepl("@.*", do1)
    do3 <- ifelse(do2 == FALSE, do1, NA)
    do4 <- gsub("[}].*","", do3)
    return(do4)
  }

  df <- function(rl){
    d1 <- gsub("(\\,.*)", "", rl)
    d2  <- gsub("@", "", d1)
    d3 <- strsplit(d2, "\\{")
    d4 <- data.frame(d3)
    d5 <- t(d4)
    d6 <- data.frame(d5, stringsAsFactors = FALSE, row.names = NULL)
    colnames(d6)[colnames(d6) == "X1"] <- "Doc-Type"
    colnames(d6)[colnames(d6) == "X2"] <- "Cite-Key"
    return(d6)
  }


  dat <- rl(a)
  data <- df(dat) # dataframe
  Abstract <- ab(dat)
  Vol <- vl(dat)
  Num <- nm(dat)
  Author <- aut(dat)
  Year <- yr(dat)
  DOI <- doi(dat)
  URL <- ur(dat)
  Evi_1 <- vector("character", length = length(dat))
  Con_1 <- vector("character", length = length(dat))
  Evi_2 <- vector("character", length = length(dat))
  Con_2 <- vector("character", length = length(dat))
  Evi_3 <- vector("character", length = length(dat))
  Con_3 <- vector("character", length = length(dat))
  sl <- data.frame(data, Year, Evi_1, Con_1, Evi_2, Con_2, Evi_3, Con_3, Abstract, Author, DOI, URL, Vol, Num, stringsAsFactors = FALSE)
  sl1 <- sl[c(2,3,4,5,6,7,8,9,10,11,12,13,14,15,1)]
  sl2 <- data.frame(sl1)
  return(sl2)
}
