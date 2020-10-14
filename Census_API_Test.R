install.packages("curl")
install.packages("httr")
install.packages('knitr', dependencies = TRUE)
knitr::opts_chunk$set(echo = TRUE)
#Install relevant packages from rcran

require(httr)
require(jsonlite)
#Pull in required packages

httr::GET("https://api.census.gov/data/timeseries/qwi/sa?get=Emp,EmpS,HirA,EarnS,Sep&time=2012-Q1&for=state:02,24,01&sex=1&sex=2&agegrp=A02&agegrp=A07&ownercode=A00&seasonadj=U&industry=11&key=1c255c9c3fb15e6f197dd34a721d696d0bd28539")
#return API request from census website

raw = GET("https://api.census.gov/data/timeseries/qwi/sa?get=Emp,EmpS,HirA,EarnS,Sep&time=2012-Q1&for=state:02,24,01&sex=1&sex=2&agegrp=A02&agegrp=A07&ownercode=A00&seasonadj=U&industry=11&key=1c255c9c3fb15e6f197dd34a721d696d0bd28539")
View(raw)
