
# try-Rv4.1

<!-- badges: start -->
[![Launch Rstudio Binder](http://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/matt-dray/try-Rv4.1/main?urlpath=rstudio)
<!-- badges: end -->

Want to try R v4.1 from the safety of your browser without installing anything? 

Click the 'launch binder' badge above to launch RStudio in your browser, thanks to [the Binder project](https://mybinder.org/) and [{holepunch} package](https://github.com/karthik/holepunch). You may need to wait a few minutes for it to load.

Why might you want to try this out? Maybe your org hasn't moved to v4.1 yet, but you want a chance to noodle around with it. You may want to try out two major new features in particular; from [R news](https://cran.r-project.org/doc/manuals/r-devel/NEWS.html):

> R now provides a simple native forward pipe syntax |>. The simple form of the forward pipe inserts the left-hand side as the first argument in the right-hand side call. The pipe implementation as a syntax transformation was motivated by suggestions from Jim Hester and Lionel Henry.

> R now provides a shorthand notation for creating functions, e.g. \(x) x + 1 is parsed as function(x) x + 1.

An R script is included for you to try out different methods for combining `|>` and `\()`, taken from [a Brenton Wiernik (@bmwiernik) tweet](https://twitter.com/bmwiernik/status/1398611489901121536?s=20&t=diTo9GgSFtEyDti_sTR9ug). 
(Secretly, this repo is actually just a test for setting up Binder with R v>4.1.)
