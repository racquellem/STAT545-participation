number<-5+2
number*2
# vector example, time in minutes of how long it gets to UBC
times<-c(60,40,33,15,20,55,35)
# c always means vector
times/60
# times is right now assumed minutes, so if want in hours it'd be times<-times/60, if you made a mistake then just re-run the previous script line
mean(times)
sqrt(times)
range(times)
# lecture two notes contains Advanced R- Vocabulary so you know about using mean, sqrt, range, etc
# logicals example, comparisons, not numbers just binary T/F
times<30
times==20
# See which ones are equal to 20, have to do double equal signs or else it'll changes times to be 20
times!=20
# not equals 20
times>20 & times <50
# comparing these two vectors, if it sees two trues then it is true, if not then it would be false
times <20 | times>50
# | means OR, so times that are less than 20 OR greater than 50
which(times<30)
# output tells us the fourth and fifth entry are less than 30, cause you're asking which
# R can numeric the true/false as 0/1
sum(times<30)
# therefore this converts vectors to 0s and 1s and adds them up
i<-which(times<30)
i #this is an in line comment, with the numerical sign R will ignore everything after that, won't be incorporated into the code
# you just stored the output for which(times<30) into the letter 'i'
all (times<30)
a<-all(times<30)
# Stored as true or false, or numerical 0,1-> still T/F
# Subsetting example
times[3]
# I want the third entry of times
# everything except the third entry
times[-3]
# second and fourth entry of this times vector
times[c(2,4)]
# not c, thinking that times is a matrix, and looking for second column in fourth row, with vector it is different
# middle part being executed, R will return a vector that contains 2,4 which is then substituted in bracket to get the result
times[3,5]
# if you did otherwise it will give an error, anticipating a matrix (aka time)
times[c(2&4)]
# don't know what the point of doing the above was
times[c(4,2)]
times[c(2,4)]
# therefore order that you enter does not matter
times[1:5]
times[3,5]
times[times<30]
# times that are less than 30, interior being executed= T/F, whereever it is T then it will extract that number at same length, and will extract what this value is
times
# still the same 
# cap entries too large at some set value, for example beyond 50
times[times>50]<-50
# find these values
times
# so from my understanding then you only want values less than 50, so since you found one that is greater than 50 (the 60 value), it changes it to 50
# NA, missing data, how to represent?, NA taking place of a number and is just missing 
times[8]<-NA
times
mean(times)
# you get NA, there's a missing observation, trying to be conservative, R doesn't know the number NA so can't tell you the mean
# remove NAs 
# functions part 2
?mean
# do the above, forget what a function or how it works then it will show on the bottom right corder 
# na.rm won't give an NA output, trim= does no trimming, = means there is a default, and not required for you to specifiy it (weird)
mean(times,na.rm=TRUE)
# gives you the mean without NAs
# definition of mean function, x is times, same as doing x=times in the equation
# if you didnt want to specifiy argument names:
mean(times, 0, TRUE)
# where x=times, trim=0, na.rm=TRUE, if first argument dont have to bother naming it
mean(na.rm=TRUE, x=times)
# trim, doesnt want to get into it so I guess just know to put =0
# data frames
mtcars
# tabular data in a data frame (which is a bunch of vectors lined up side by sides)
str(mtcars)
# data frame with 32 observations, 11 variables
names(mtcars)
# vectors of numbers and logicals, but now words and characters can also be vectors
head(mtcars)
# each colum vector, now can extract them by numbers
mtcars$mpg
tail(mtcars)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)
rows.names(mtcars)