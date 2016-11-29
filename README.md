# Standard Deviation

#### To install please execute the following in `R`:

`devtools::install_github("alim1990/stdDev", host ="github.ubc.ca/api/v3", auth_token=c7bf3282a7ac2559baf44a1bfbe975a6acc9258b)`

#### How to use:

Usage: `standard_deviation(x)`  
Input: `x`: an array of numbers  
Output: standard deviation of the array `x`

Example:

```
x<-c(1,2,3,4)
standard_deviation(x)
```

--

Usage: `standarderror(x)`  
Input: `x`: an array of numbers  
Output: standard error of the array `x`

Example:

```
x<-c(1,2,3,4)
standarderror(x)
```