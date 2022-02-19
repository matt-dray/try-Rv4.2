# This code from a tweet by Brenton Wiernik (@bmwiernik)
#   https://twitter.com/bmwiernik/status/1398611489901121536?s=20&t=diTo9GgSFtEyDti_sTR9ug

# Anonymous function with eyeballs ()()
mtcars |> 
  transform(kmL = mpg / 2.35) |> 
  (\(d) lm(kmL ~ hp, data = d))()

# Anonymous function with curly + parens {}()
mtcars |> 
  transform(kmL = mpg / 2.35) |> 
  {\(d) lm(kmL ~ hp, data = d)}()

# Enable pipe bind =>
#   Cleanest syntax, but must Sys.setenv()
#   Hopefully enabled by default in the future? But is that certain?
Sys.setenv('_R_USE_PIPEBIND_' = "true")  # not sure if this will be possible in Binder
mtcars |> 
  transform(kmL = mpg / 2.35) |> 
  d => lm(kmL ~ hp, data = d)

# Assign wrangled data, then use assigned object
d <- mtcars |> 
  transform(kmL = mpg / 2.35)
lm(kmL ~ hp, data = d)

# Via Mattan S. Ben-Shachar (@mattansb) in the replies:
#   https://twitter.com/mattansb/status/1398650840819372033?s=20&t=diTo9GgSFtEyDti_sTR9ug

# Pass to first non-named argument
mtcars |>
  lm(formula = mpg ~ hp)
