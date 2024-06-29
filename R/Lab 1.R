bike = Ch1_bike_sharing_data

str(bike)
setDT(bike)
class(bike)

# == checks if something is equal. Its boolean

#filter data by season for winter
bike[season ==4]

#filter data by season for winter AND summer
bike[season == 4 | season == 1]
#this does the same
bike[season %in% c(4,1)]

#Filter for the rows that are in winter AND the weather was clear (value 1)
bike[season ==4 & weather ==1]

#Filter for the rows that are NOT in winter AND the weather was clear
#(value 1)
bike[season != 4 & weather ==1]

nowinter = bike[season != 4 & weather ==1]

#selecting columns
#need ,. to select more than 1 column
bike[,.(datetime ,windspeed)]

#We can apply functions to column data, for example, what is the average
#temperature:
#"in bike df, in all of the columns, give me the mean of the temps"
bike[,mean(temp)]

#Now what if we want the average, standard deviation, minimum, and
#maximum temperatures:
bike[,.(mean(temp),sd(temp),min(temp),max(temp))]

bb= bike[,.(mean(temp),sd(temp),min(temp),max(temp))]
names(bb)=c("Mean","SD","Min","Max")


#grouping now
bike[,.(mean(temp),sd(temp),min(temp),max(temp)),by=
       season]

#creating unqiue data tables for seasons and weather
bike[,.(mean(temp),sd(temp),min(temp),max(temp)),by=.(
  season ,weather)]

bws = bike[,.(mean(temp),sd(temp),min(temp),max(temp)),by=.(
  season ,weather)]

names(bws)=c('season','weather','Mean','SD','Min','Max')
bws=bws[order(season ,weather)]

#creating a column in table
#:= creates it
bike [,avgTemp:=mean(temp)]

#makes a new column in a subtable (since its by season it makes subtables by season)
bike[,seasonAvgTemp :=mean(temp),by=season]

head(bike, 10)
tail(bike, 10)

#Now we will simply filter and store the results in a new table named bike2:
bike2=bike[temp <seasonAvgTemp]
#If we wanted to create multiple variables, from multiple columns, the syntax changes slightly:
bike[,c('seasonAvgTemp','seasonMinTemp'):=.(mean(temp),min(temp)),by=season]



#creating own data table
#this table is wrong in here
ticker=c(rep('a' ,5),rep('b' ,5))
oi = c(seq(2,10,2),seq(5,25,5))
dfexp=data.table(ticker ,oi)

dfexp[,o2:=shift(oi,n=1)]
dfexp[,o3:=shift(oi,n=2)]
dfexp[,o4:=shift(oi,n=3)]
dfexp[, c('oi2', 'oi3', 'oi4'):=shift(oi, n = 1:3)]

#wrong too? 
dfexp[, c('oi2', 'oi3', 'oi4'):= shift(oi, n = 1:3),by
      =ticker]
