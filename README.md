
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r7283

<!-- badges: start -->

<!-- badges: end -->

The goal of r7283 is to provide miscelaneous tools helpful to the
developer. Currently, the ‘rectangulate’ function provides a minimalist
dataframe from which to begin the matrix literature review. The term
‘rectangulate’ refers to making a rectangle, which is reminiscent of
the shape of a tidy dataframe.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("cownr10r/r7283")
#> Skipping install of 'r7283' from a github remote, the SHA1 (5b674faa) has not changed since last install.
#>   Use `force = TRUE` to force installation
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## Not run:
# library(r7283)
# bib <- "c:/path/to/file/here.bib"
# r7283::rectangulate(bib)
## End(**Not run**)
```

The following code provides a preliminary examination of the
recangulated object, and conversion of the document to factors, and a
look at the factors.

``` r
summary(processedbibliography)
#>    Cite.Key             Year              Evi_1          
#>  Length:17          Length:17          Length:17         
#>  Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character  
#>     Con_1              Evi_2              Con_2          
#>  Length:17          Length:17          Length:17         
#>  Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character  
#>     Evi_3              Con_3             Abstract        
#>  Length:17          Length:17          Length:17         
#>  Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character  
#>     Author              DOI                URL           
#>  Length:17          Length:17          Length:17         
#>  Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character  
#>      Vol                Num              Doc.Type        
#>  Length:17          Length:17          Length:17         
#>  Class :character   Class :character   Class :character  
#>  Mode  :character   Mode  :character   Mode  :character
document <- as.factor(processedbibliography$Doc.Type)
str(document)
#>  Factor w/ 14 levels "article","book",..: 1 1 1 1 2 3 5 4 6 7 ...
levels(document)
#>  [1] "article"       "book"          "booklet"       "conference"   
#>  [5] "inbook"        "incollection"  "inproceedings" "manual"       
#>  [9] "mastersthesis" "misc"          "phdthesis"     "proceedings"  
#> [13] "techreport"    "unpublished"
```
