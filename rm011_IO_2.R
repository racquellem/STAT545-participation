library("tidyverse")
gapminder_csv <- read_csv('./gapminder_sum.csv')
# On windows it is .\gapminder_sum.csv

view(gapminder_csv)

read_csv('')

install.packages("here")
library("here")
ls()

read_csv('./test/tes/te/t/gapminder_sum.csv')

# another way using here
#platform agnostic (doesn't care what operating structure it is in), die-structure agnostic
# don't need to set wd but do it with here
here::here("test", "tes", "te", "t", "gapminder_sum.csv")

#couple more things about here
set_here()
# will set a file in this particular folder 
# R studio, knows this is the root directory