stata-scheme-modern
=================================

[Overview](#overview)
| [Installation](#installation)
| [Screenshots](#screenshots)
| [Acknowledgements](#acknowledgements)

Better Stata graphical schemes

`version 1.0 1jul2019`


Overview
---------------------------------

This package provides graphical themes (schemes) for Stata that are intended to imitate defaults from popular plotting libraries in other languages (e.g. matplotlib). You can check out some pictures of what these schemes look like in the [Screenshots](#screenshots) section below. As always, scheme settings (e.g. legend placement, color options) can always be overridden.


Installation
---------------------------------

Installation is straightforward:

1. Install this package directly from this GitHub repo by typing the following command in a Stata prompt:

```stata
net install scheme-modern, from("https://raw.githubusercontent.com/mdroste/stata-scheme-modern/master/")
```

2. To use the light-colored theme, simply type:
```stata
set scheme modern, perm
```

3. To use the dark-colored theme instead, simply type:
```stata
set scheme modern_dark, perm
```


Screenshots
---------------------------------


<details>

<summary>Click for histogram example</summary>

![scheme-s2color screenshot 1](figs/fig1a.png "Scheme-s2color (default)")

![scheme-modern screenshot 1](figs/fig1b.png "Scheme-modern")

![scheme-modern_dark screenshot 1](figs/fig1c.png "Scheme-modern_dark")

</details>
<details>
<summary>Click for scatterplot example</summary>

![scheme-s2color screenshot 2](figs/fig2a.png "Scheme-s2color (default)")

![scheme-modern screenshot 2](figs/fig2b.png "Scheme-modern")

![scheme-modern_dark screenshot 2](figs/fig2c.png "Scheme-modern_dark")

</details>
<details>
<summary>Click for bar chart example</summary>

![scheme-s2color screenshot 3](figs/fig3a.png "Scheme-s2color (default)")

![scheme-modern screenshot 3](figs/fig3b.png "Scheme-modern")

![scheme-modern_dark screenshot 3](figs/fig3c.png "Scheme-modern_dark")

</details>
<details>
<summary>Click for binned scatterplot example</summary>

![scheme-s2color screenshot 4](figs/fig4a.png "Scheme-s2color (default)")

![scheme-modern screenshot 4](figs/fig4b.png "Scheme-modern")

![scheme-modern_dark screenshot 4](figs/fig4c.png "Scheme-modern_dark")

</details>
<details>
<summary>Click for line plot example</summary>

![scheme-s2color screenshot 5](figs/fig5a.png "Scheme-s2color (default)")

![scheme-modern screenshot 5](figs/fig5b.png "Scheme-modern")

![scheme-modern_dark screenshot 5](figs/fig5c.png "Scheme-modern_dark")

</details>


Acknowledgements
---------------------------------

These schemes were built by combining elements from two existing schemes: (1) the leap-slides used by the Opportunity Insights research group from 2015 to present; (2) the [cleanplots](https://www.trentonmize.com/software/cleanplots) scheme produced by Trenton D. Mize.

Interested users might also like to check out other work; for instance, the [grstyle](https://boris.unibe.ch/117391/1/grstyle-Konstanz-2018.pdf) command by Ben Jann, or [brewscheme](https://github.com/wbuchanan/brewscheme) by William Buchanan.
