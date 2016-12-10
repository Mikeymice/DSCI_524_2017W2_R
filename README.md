# Standard Deviation

[![Build Status](https://travis-ci.org/AndrewLim1990/stdDev.svg?branch=master)](https://travis-ci.org/AndrewLim1990/stdDev)

This package contains functions in `R` that calculate commonly used statistics from a list of numbers. As of yet, this package contains code to compute the following:

- standard deviation
- standard error

#### To install please execute the following in `R`:

`devtools::install_github("AndrewLim1990/stdDev")`

#### How to use:

Usage: `standard_deviation(x)`  
Input: `x`: a vector of doubles  
Output: standard deviation of the array `x`

Example:

```
x<-c(1,2,3,4)
standard_deviation(x)
```

--

Usage: `standarderror(x)`  
Input: `x`: a vector of doubles  
Output: standard error of the array `x`

Example:

```
x<-c(1,2,3,4)
standarderror(x)
```
