Y=ts(data=NA,start=1,end=numeric(),frequency = 12)
Y=read.csv("internet-traffic-data-in-bits-fr.csv", dec = ".",
           sep = ",", header = F, skip = 1)

x=ymd(c("2018-01-01", "2018-04-01", "2018-07-01", "2018-10-01"))
x=c("2018-01-01", "2018-04-01", "2018-07-01", "2018-10-01")
x
y=runif(length(x), 1, 10)
y
z=ts(y, start = x[1], frequency = 4)
z


x=ts(c(12,23,44,89,99,103,160), start = 1, frequency = 4)
x
class(x);typeof(x);dim(x);length(x)

x=ts(c(12,23,44,89,99,103,160,178), start = 1, frequency = 4)
x
x
class(x);typeof(x);dim(x);length(x)

