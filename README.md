
<!-- README.md is generated from README.Rmd. Please edit that file -->

# r7283

<!-- badges: start -->

<!-- badges: end -->

The goal of r7283 is to provide miscellaneous tools for education
researchers. Currently, the ‘rectangulate’ function provides a
minimalist data frame from which to begin the matrix literature review.
The term ‘rectangulate’ refers to making a rectangle, which is
reminiscent of the shape of a tidy matrix.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
# devtools::install_github("cownr10r/r7283")
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
head(processedbibliography,3)
#>   Cite.Key Year Evi_1 Con_1 Evi_2 Con_2 Evi_3 Con_3
#> 1  ab3278b 2016                                    
#> 2    1759y <NA>                                    
#> 3  2034589 2008                                    
#>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Abstract
#> 1 lorem ipsum dolor sit amet, consectetur adipiscing elit. mauris facilisis, metus ac dictum tempus, ligula velit imperdiet mi, sit amet tristique lectus odio ac mauris. suspendisse interdum odio sed ligula congue vulputate. suspendisse ac purus id mi volutpat semper id nec leo. vestibulum ornare urna nunc, quis posuere massa pulvinar sit amet. morbi sed nisi felis. integer diam orci, tincidunt sit amet ipsum non, fringilla luctus urna. sed vulputate vestibulum mi a semper. curabitur ut sem in leo auctor blandit vitae sed urna. donec tincidunt porta eros, viverra pharetra turpis. vivamus nisi turpis, dapibus ac sem cursus, elementum ullamcorper sem. mauris suscipit venenatis lectus pulvinar euismod. 
#> 2                                                                                                                                              morbi sodales aliquet diam et ullamcorper. pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. sed gravida eu augue ac fringilla. nulla facilisi. in vestibulum viverra venenatis. in elit enim, vehicula sed neque quis, varius luctus neque. aliquam vestibulum orci at dapibus pellentesque. morbi eu enim cursus, gravida nunc a, faucibus nulla. maecenas eget mi sed purus tempor ornare id at enim. pellentesque semper augue sed lorem molestie tincidunt faucibus sed nisl. aenean tincidunt neque vitae lectus elementum ultrices.
#> 3                                                                                                                                                                                                     nulla nec dui sollicitudin, efficitur diam vitae, euismod ex. nam imperdiet dolor ut nunc pellentesque, a ornare nibh efficitur. etiam placerat mattis massa vitae feugiat. integer lectus ligula, sollicitudin et sodales eget, porta quis arcu. interdum et malesuada fames ac ante ipsum primis in faucibus. nam ultrices ultricies gravida. aenean luctus lectus vitae eros consequat, a vestibulum magna dapibus. pellentesque tincidunt leo justo, molestie semper orci fringilla quis. cras interdum elementum sagittis.
#>              Author                        DOI
#> 1              <NA> 10.1016/j.ssci.2016.01.016
#> 2   author author1*   10.1016/2134901823.12390
#> 3 author1,  author2                       <NA>
#>                                      URL  Vol Num Doc.Type
#> 1 http://praesent accumsan/felis/dapibus   49   1  article
#> 2        http://donec/semper/scelerisque <NA>   1  article
#> 3      http://proin/euismod/congue/magna  469   8  article
document <- as.factor(processedbibliography$Doc.Type)
str(document)
#>  Factor w/ 14 levels "article","book",..: 1 1 1 1 2 3 5 4 6 7 ...
levels(document)
#>  [1] "article"       "book"          "booklet"       "conference"   
#>  [5] "inbook"        "incollection"  "inproceedings" "manual"       
#>  [9] "mastersthesis" "misc"          "phdthesis"     "proceedings"  
#> [13] "techreport"    "unpublished"
```
