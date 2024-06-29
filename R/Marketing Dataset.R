library(data.table)
mark = copy(Ch3_marketing)
setDT(mark)


str(mark)
unique(mark$pop_density)
#since this is categorical convert it to factors
mark[,pop_density:=factor(pop_density, levels = c('Low', 'Medium', 'High'), ordered = T)]

grep('NA', mark)

#summary/stats
summary(mark$google_adwords)

mark[,summary(pop_density)]


#charts and graphs
library(ggplot2)
ggplot(mark, aes(x=pop_density))+ geom_bar(fill='blue', color ='red')



ggplot(mark ,aes(y=google_adwords)) + geom_boxplot(fill ='blue')
ggplot(mark ,aes(x=google_adwords)) + geom_histogram(fill='yellow',color='black', binwidth =50) 


ggplot(mark, aes(y=twitter)) + geom_boxplot(fill = 'yellow')
ggplot(mark, aes(x=twitter)) + geom_histogram(fill = 'black', color = 'green', bins = 10)

#transforming numeric to categorical 
#cut function ex
x= 1:10
y=cut(x,2, labels= c('batman', 'superman'))
y
waj = data.table(x,y)


mark[,empFactor:=cut(employees,2)]

table(mark$pop_density)



ggplot(mark, aes(x=pop_density, fill= empFactor)) + geom_bar()

ggplot(mark, aes(x=pop_density, y=marketing_total)) + geom_boxplot(fill='yellow')

#scatterplots are for numeric vs numeric
#function is called points
#tests correlation
ggplot(mark, aes(x=revenues, y=google_adwords))+ geom_point(color="purple")

cor(mark$google_adwords,mark$revenues)
cor(mark$google_adwords,mark$revenues)

cor.test(mark$twitter,mark$revenues)
cor.test(mark$facebook,mark$revenues)

ggplot(mark, aes(x=revenues, y=google_adwords))+ geom_point(color='purple')
ggplot(mark, aes(x=revenues, y=twitter))+ geom_point(color='purple')
ggplot(mark, aes(x=revenues, y=facebook))+ geom_point(color='purple')

pairs(mark)
cor(mark [ ,1:6])


