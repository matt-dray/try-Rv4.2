
# try-Rv4.2

<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/matt-dray/try-Rv4.2/main?urlpath=rstudio)
<!-- badges: end -->

Want to try R v4.2 from the safety of your browser without installing anything? Why? Maybe your org hasn't moved to >=v4.1 yet, but you want a chance to noodle around with it. 

Click the 'launch binder' badge above to launch RStudio in your browser, thanks to [the Binder project](https://mybinder.org/) and [{holepunch} package](https://github.com/karthik/holepunch). You may need to wait a few moments for it to load.

You may want to try out two major new features in particular, the base pipe (`|>`) and lambda (`\()`) syntax, which were introduced in R v4.1. from [R news](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html):

> R now provides a simple native forward pipe syntax |>. The simple form of the forward pipe inserts the left-hand side as the first argument in the right-hand side call. The pipe implementation as a syntax transformation was motivated by suggestions from Jim Hester and Lionel Henry.

> R now provides a shorthand notation for creating functions, e.g. \(x) x + 1 is parsed as function(x) x + 1.

An underscore placeholder (`_`) for the right-hand side of a base pipe was introduced in R v4.2. From [R news](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html):

>In a forward pipe |> expression it is now possible to use a named argument with the placeholder _ in the rhs call to specify where the lhs is to be inserted. The placeholder can only appear once on the rhs.

The {magrittr} package is also installed into the instance so that you can compare the functionality of the base pipe (`|>`) against the {magrittr} pipe (`%>%`) made popular by the tidyverse.
