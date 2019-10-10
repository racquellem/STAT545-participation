library("here")

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#stored as a variable

# read_csv can directly import URLs but read_excel requires you to first download it

download.file(url=data_url, 
              destfile=paste('./datasets/', file_name))

#Task: change above to use the "here::here" package
# don't want to do the abovd way as it is the old way, better to use the packag below
download.file(url=data_url, 
              destfile=here::here("test", "greatestGivers.xls"))

# DO THE BELOW after creating the data_url variable
#Recommendation: use "basename"
file_name <-basename(data_url) #intteresting function to get the filename from a URL

file_name

download.file(url=data_url, 
              destfile=here::here("test", basename(data_url))
              
library(readxl)

#Assign the imported data to a tibble
download.file(url=data_url, destfile=here::here("datasets", file_name))
philanthropists <- read_excel(here::here("test", file_name), trim_ws =TRUE) #trim white space before and after, blank spaces before and after
view(philanthropists)
head(philanthropists)

#Search->find " " (put a space), then replace with NOTHING (e.f. column 4)
              