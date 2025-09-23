#Q1
setwd("C:\\Users\\IT24101268\\Desktop\\Lab 08")

data<-read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)
pop_dev <- sd(Weight.kg.)

#Q2
samples<-c()
n<-c()

for(i in 25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}
colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)
s.dev<-apply(samples,2,sd)

#Q3
samplemean<-mean(s.means)
sampledev<-sd(s.means)

popmn
samplemean

pop_dev
sampledev

