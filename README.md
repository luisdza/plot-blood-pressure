
<!-- README.md is generated from README.Rmd. Please edit that file -->

# plotbloodpressure

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
![Deploy to
shinyapps.io](https://github.com/luisdza/plot-blood-pressure/workflows/Deploy%20to%20shinyapps.io/badge.svg)
<!-- badges: end -->

The goal of plotbloodpressure is to …

## Installation

You can install the released version of plotbloodpressure from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("plotbloodpressure")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("luisdza/plot-blood-pressure")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(plotbloodpressure)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(bloodpressuremeasurements)
#>       Date                Time            Category              Sys       
#>  Min.   :2020-08-12   Length:42         Length:42          Min.   : 96.0  
#>  1st Qu.:2020-08-18   Class1:hms        Class :character   1st Qu.:126.2  
#>  Median :2020-08-27   Class2:difftime   Mode  :character   Median :133.5  
#>  Mean   :2020-08-26   Mode  :numeric                       Mean   :133.1  
#>  3rd Qu.:2020-09-02                                        3rd Qu.:139.8  
#>  Max.   :2020-09-09                                        Max.   :151.0  
#>       Dia             Pulse      
#>  Min.   : 74.00   Min.   :61.00  
#>  1st Qu.: 86.00   1st Qu.:69.00  
#>  Median : 90.50   Median :74.00  
#>  Mean   : 90.76   Mean   :73.79  
#>  3rd Qu.: 96.00   3rd Qu.:77.75  
#>  Max.   :104.00   Max.   :96.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-plot-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
