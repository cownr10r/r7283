
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

This is a basic example which shows you how use rectangulate:

``` r
## Not run:
# library(r7283)
# bib <- "c:/path/to/file/here.bib"
# r7283:::rectangulate(bib)
## End(**Not run**)
```

The following code provides a preliminary examination of the
recangulated object, a conversion of the document to factors, and a
first look at the factors.

``` r
# head(processedbibliography,3)
# document <- as.factor(processedbibliography$Doc.Type)
# str(document)
# levels(document)
```
