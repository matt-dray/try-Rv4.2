# Get started with the new base pipe and lambda syntax in R >=v4.1
# Matt Dray, May 2022

library(dplyr)  # for the %>% pipe, wrangling functions

# Pipe into first argument
head(mtcars)       # output: first rows of dataframe
mtcars %>% head()  # equivalent
mtcars |> head()   # equivalent
mtcars |> head     # error: must use parentheses on function call

# Placeholders
lm(hp ~ cyl, data = mtcars)        # output: linear model
mtcars %>% lm(hp ~ cyl, data = .)  # equivalent
mtcars |> lm(hp ~ cyl, data = _)   # equivalent

# Placeholder must be named
mtcars %>% head(.)     # LHS passed as first argument on RHS
mtcars |> head(_)      # error: placeholder must be named if used
mtcars |> head(x = _)  # equivalent

# Lambda function syntax
sapply(mtcars, function(x) max(x) - min(x))  # output: range of each column
sapply(mtcars, \(x) max(x) - min(x))         # equivalent
mtcars %>% sapply(\(x) max(x) - min(x))      # equivalent
mtcars |> sapply(\(x) max(x) - min(x))       # equivalent

# Also try {pipebind} by Brenton Wiernik, which extends base-pipe functionality
# Read more: https://github.com/bwiernik/pipebind/blob/main/README.md
library(pipebind)
mtcars |> bind(x, x$mpg)  # e.g. use LHS on the left of a subsetting function

# A simple {dplyr} chain example with the base pipe dropped in
mtcars |> 
  slice(1:5) |> 
  select(contains("a")) |> 
  summarise(across(everything(), max)) |> 
  rename_with(toupper, everything())
