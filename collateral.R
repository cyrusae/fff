library(summarytools)
library(data.table)
library(wrapr)
library(glue)
library(furrr)

pls_test <- file.choose()
df_pls <- data.table::fread(pls_test)
# data.table needs me to install.packages('bit64')
df_pls <- read.csv(pls_test)
dfSummary(df_pls)
### Initial result:
# for PLS 2020, "input string 3520 is invalid"
# "unable to translate 'DELTA CO PLD <96> DELTA PUBLIC LIBRARY' to a wide string"
# so evidently nothing threatening my job security there after all...

summary(df_pls)
