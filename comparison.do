
cd C:\Users\Mike\Documents\Github\stata-modern
cap mkdir figs

*-------------------------------------------------------------------------------
* Fig 1: Histograms
*-------------------------------------------------------------------------------

sysuse nlsw88, clear

set scheme s2color
histogram wage, title("Histogram") subtitle("Default scheme") name(fig1a, replace)
graph export "figs/fig1a.png", replace
set scheme modern
histogram wage, title("Histogram") subtitle("Modern color scheme") name(fig1b, replace)
graph export "figs/fig1b.png", replace
set scheme modern_dark
histogram wage, title("Histogram") subtitle("Modern_dark color scheme") name(fig1c, replace)
graph export "figs/fig1c.png", replace

*-------------------------------------------------------------------------------
* Fig 2: Scatter plots
*-------------------------------------------------------------------------------

sysuse nlsw88, clear

set scheme s2color
scatter wage tenure if union==1, title("Scatterplot") subtitle("Default color scheme") name(fig2a, replace)
graph export "figs/fig2a.png", replace
set scheme modern
scatter wage tenure if union==1, title("Scatterplot") subtitle("Modern color scheme") name(fig2b, replace)
graph export "figs/fig2b.png", replace
set scheme modern_dark
scatter wage tenure if union==1, title("Scatterplot") subtitle("Modern_dark color scheme") name(fig2c, replace)
graph export "figs/fig2c.png", replace

*-------------------------------------------------------------------------------
* Fig 3: Horizontal bar plot
*-------------------------------------------------------------------------------

sysuse pop2000, clear
replace maletotal = -maletotal/1e+6
replace femtotal = femtotal/1e+6

set scheme s2color
twoway (bar maletotal agegrp, horizontal xvarlab(Males)) ///
	   (bar femtotal agegrp, horizontal xvarlab(Females)) ///
	, ylabel(1(1)17, angle(horizontal) valuelabel labsize(*.8)) ///
	xtitle("Population in millions") ytitle("") ///
	xlabel(-10 "10" -7.5 "7.5" -5 "5" -2.5 "2.5" 2.5 5 7.5 10) ///
	legend(label(1 Males) label(2 Females)) ///
	title("Bar plot") subtitle("Default color scheme") name(fig3a, replace)
graph export "figs/fig3a.png", replace
	
set scheme modern
twoway (bar maletotal agegrp, horizontal xvarlab(Males)) ///
	   (bar femtotal agegrp, horizontal xvarlab(Females)) ///
	, ylabel(1(1)17, angle(horizontal) valuelabel labsize(*.8)) ///
	xtitle("Population in millions") ytitle("") ///
	xlabel(-10 "10" -7.5 "7.5" -5 "5" -2.5 "2.5" 2.5 5 7.5 10) ///
	legend(label(1 Males) label(2 Females)) ///
	title("Bar plot") subtitle("Default color scheme") name(fig3b, replace)
graph export "figs/fig3b.png", replace
	
set scheme modern_dark
twoway (bar maletotal agegrp, horizontal xvarlab(Males)) ///
	   (bar femtotal agegrp, horizontal xvarlab(Females)) ///
	, ylabel(1(1)17, angle(horizontal) valuelabel labsize(*.8)) ///
	xtitle("Population in millions") ytitle("") ///
	xlabel(-10 "10" -7.5 "7.5" -5 "5" -2.5 "2.5" 2.5 5 7.5 10) ///
	legend(label(1 Males) label(2 Females)) ///
	title("Bar plot") subtitle("Default color scheme") name(fig3c, replace)
graph export "figs/fig3c.png", replace
	
*-------------------------------------------------------------------------------
* Fig 4: Binned scatter plots
*-------------------------------------------------------------------------------

sysuse nlsw88, clear

set scheme s2color
binscatter wage tenure, by(union) linetype(connect) title("Binned scatterplot") subtitle("Default color scheme") name(fig4a, replace)
graph export "figs/fig4a.png", replace
set scheme modern
binscatter wage tenure, by(union) linetype(connect) title("Binned scatterplot") subtitle("Modern color scheme") name(fig4b, replace)
graph export "figs/fig4b.png", replace
set scheme modern_dark
binscatter wage tenure, by(union) linetype(connect) title("Binned scatterplot") subtitle("Modern_dark color scheme") name(fig4c, replace)
graph export "figs/fig4c.png", replace

*-------------------------------------------------------------------------------
* Fig 5: Line plots
*-------------------------------------------------------------------------------

sysuse nlsw88, clear

set scheme s2color
twoway (lfitci wage tenure if union==1), title("Line plot") subtitle("Default color scheme") name(fig5a, replace) 
graph export "figs/fig5a.png", replace
set scheme modern
twoway (lfitci wage tenure if union==1), title("Line plot") subtitle("Modern color scheme") name(fig5b, replace) 
graph export "figs/fig5b.png", replace
set scheme modern_dark
twoway (lfitci wage tenure if union==1), title("Line plot") subtitle("Modern_dark color scheme") name(fig5c, replace)
graph export "figs/fig5c.png", replace

