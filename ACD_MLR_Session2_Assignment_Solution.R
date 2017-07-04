rm(list=ls(all=TRUE))
setwd("D:/ACD_ML")
library(class) #knn
data<-read.csv("ACD_MLR_Session2_Assignment_Data.csv",header= TRUE,sep=',')
#set.seed(123)
#train<-sample(1:8,6)
train_data<-data[1:6,]
test_data<-data[7:8,]
table(data$Class)
table(train_data$Class)
table(test_data$Class)
traindatawithoutclass<-subset(train_data,select = -c(Class))
testdatawithoutclass<-subset(test_data,select = -c(Class))
#k = 1
pred = knn(traindatawithoutclass,testdatawithoutclass,train_data$Class,k=1) 

a=table(pred,test_data$Class)
a
accu = sum(diag(a))/nrow(testdatawithoutclass)
accu

#k=3
pred = knn(traindatawithoutclass,testdatawithoutclass,train_data$Class,k=3) 

a=table(pred,test_data$Class)
a
accu = sum(diag(a))/nrow(testdatawithoutclass)
accu

