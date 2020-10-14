install.packages("censusapi")
install.packages("curl")
install.packages("httr")
install.packages('knitr', dependencies = TRUE)
knitr::opts_chunk$set(echo = TRUE)
library(censusapi)


apis <- listCensusApis()
View(apis)

qwi <- getCensus(
  name = "timeseries/qwi/sa",
  region = "state:02",
  vars = c("Emp", "sex"),
  year = 2011,
  quarter = 1,
  agegrp = "A07",
  ownercode = "A05",
  firmsize = 1,
  seasonadj = "U",
  industry = 21)
qwi

View(qwi)

require(httr)
require(jsonlite)
getdata = httr::GET("https://api.census.gov/data/timeseries/qwi/sa?get=Emp,EmpS,HirA,EarnS,Sep&time=2012-Q1&for=state:02,24,01&sex=1&sex=2&agegrp=A02&agegrp=A07&ownercode=A00&seasonadj=U&industry=11&key=1c255c9c3fb15e6f197dd34a721d696d0bd28539")
View(getdata)
httr::GET("https://api.census.gov/data/2017/acs/acs1?get=NAME,group(B01001)&for=us:1")
