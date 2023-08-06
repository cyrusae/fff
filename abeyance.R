### packages I know I'll want
pkgs <- c('summarytools', 'data.table', 'wrapr', 'furrr', 'glue', 'lubridate')

for (i in seq_along(pkgs)) {
 if (!require(pkgs[i])) install.packages(pkgs[i])
} #what do you want to forget that I'm forgetting both of these are vectorized
# also it doesn't matter because by the time it matters it'll be in a DESCRIPTION file but...
# TODO: revisit pacman anyway

### TODO: load test data sets
# options: 
## - the weaving one
## - the irises one 
## - classic airports 
## - SPADE data if I can still find it  
## - TASCHA files when I have access to 'em 
## - baseline PLS CSVs I have

# TODO: recognize dates and zip codes