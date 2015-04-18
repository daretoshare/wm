weather<-read.csv("data/weather.csv")
test<-read.csv("data/test.csv")
train<-read.csv("data/train.csv")
key<-read.csv("data/key.csv")

train<-merge(train,key, by="store_nbr", all.x = TRUE)
train$station_date<-paste0(train$station_nbr,train$date)

test<-merge(test,key, by="store_nbr", all.x = TRUE)
test$station_date<-paste0(test$station_nbr,test$date)

View(head(train))

weather$station_date<-paste0(weather$station_nbr,weather$date)
train<-merge(train,weather, by="station_date", all.x = TRUE)
test<-merge(test,weather, by="station_date", all.x = TRUE)
