#'grafical analysis
#'
#'I get some grafical analysis of the variables opf my dataset
#' @title graf
#' @docType package
#' @author Casati Martina
#' @param any variables of my dataset
#' @return grafical interfaces
#' @import plotrix
#' @import  ggplot2
#' @import  gridExtra
#' @export
# summary for race variable
table(birthwt$race)
# (1 = white, 2 = black, 3 = other)
# let's plot it
#install.packages('plotrix')
library(plotrix)
slices <- c(96, 26, 67)
lbls <- c("white", "black", "other")
pie3D(slices,labels=lbls,explode=0.1,
      main="Jabraghe: Learn with Classical Music ")
#install.packages('ggplot2')
library(ggplot2)
library(gridExtra)
p1<-ggplot(birthwt,aes(x=race))+ggtitle("race")+xlab("race")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
p2<-ggplot(birthwt, aes(x=ptl)) + ggtitle("ptl")+xlab("ptl")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+ coord_flip()
p3<-ggplot(birthwt,aes(x=ht))+ggtitle("ht")+xlab("ht")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
p4<-ggplot(birthwt,aes(x=ui))+ggtitle("ui")+xlab("ui")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
grid.arrange(p1,p2,p3,p4,ncol=2)

p1<-ggplot(birthwt,aes(x=age))+ggtitle("age")+xlab("age")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
p2<-ggplot(birthwt, aes(x=low)) + ggtitle("low")+xlab("low")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+ coord_flip()
p3<-ggplot(birthwt,aes(x=lwt))+ggtitle("lwt")+xlab("lwt")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
p4<-ggplot(birthwt,aes(x=smoke))+ggtitle("smoke")+xlab("smoke")+
  geom_bar(aes(y=100*(..count..)/sum(..count..)),width=0.5)+ylab("Percentuale")+coord_flip()
grid.arrange(p1,p2,p3,p4,ncol=2)
