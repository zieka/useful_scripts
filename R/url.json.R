#
# url.json.R
#
# Copyright (C) 2015 Kyle Scully
#
# Author(s)/Maintainer(s):
# Kyle Scully
#
# function takes URL and does the following:
#    * makes a GET request
#    * takes a json respone and stores in dataframe
#
library(jsonlite)

 url.json <- function(url) {
  
  result <- NULL
  
  result <- fromJSON(txt=url)
  
  print(result)
}