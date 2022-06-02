
# try-Rv4.2

<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/matt-dray/try-Rv4.2/main?urlpath=rstudio)
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2022/06/01/try-r/)
<!-- badges: end -->

Want to try R v4.2 from the safety of your browser without installing anything? Maybe your organisation hasn't moved to >=v4.1 yet, but you want a chance to noodle around with it. 

Read more in [the accompanying blog post](https://www.rostrum.blog/2022/06/01/try-r/).

## How to

Click the 'launch binder' badge at the top of this README to launch RStudio in your browser, thanks to [the Binder project](https://mybinder.org/) and [{holepunch} package](https://github.com/karthik/holepunch). You may need to wait a few moments for it to load.

There's a simple introductory script in the `get-started.R` file.

## New features

There are two major new features to try: the base pipe (`|>`) and lambda (`\()`) syntax, which were both introduced in R v4.1. From [R news](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html):

> R now provides a simple native forward pipe syntax |>. The simple form of the forward pipe inserts the left-hand side as the first argument in the right-hand side call. The pipe implementation as a syntax transformation was motivated by suggestions from Jim Hester and Lionel Henry.

> R now provides a shorthand notation for creating functions, e.g. \(x) x + 1 is parsed as function(x) x + 1.

An underscore placeholder (`_`) for the right-hand side of a base pipe was introduced in R v4.2. From [R news](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html):

> In a forward pipe |> expression it is now possible to use a named argument with the placeholder _ in the rhs call to specify where the lhs is to be inserted. The placeholder can only appear once on the rhs.

## Provided packages

Two packages are installed with the Binder instance:

1. [The {dplyr} package](https://dplyr.tidyverse.org/) authored by Hadley Wickham, Romain François, Lionel Henry and Kirill Müller. Installed so you can compare the base pipe (`|>`) against the {magrittr} pipe (`%>%`), which was created by [Stefan Milton-Bache](https://stefanbache.dk/) and made popular by the tidyverse.
2. [The {pipebind} package](https://cran.r-project.org/package=pipebind) by [Brenton Wiernik](https://wiernik.org/). Installed for you to [explore some methods](https://github.com/bwiernik/pipebind/blob/main/README.md) for extending the functionality of the base pipe.
