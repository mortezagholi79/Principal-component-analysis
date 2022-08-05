football<-read.table("C:/Users/12345/Desktop/football.txt",header=T)

head(football,5)

colMeans(football)

(S<-cov(football))

eigen(S)

football.pca<-princomp(football,cor=F,scores = T)
summary(football.pca)

loadings(football.pca)


require(ggfortify)

autoplot(football.pca)
   

biplot(football.pca) 


plot(football.pca,type ="lines")
##############################5.2
Ramus <- read.csv("C:/Users/12345/Desktop/Ramus.csv",header = T)
head(Ramus,5)

colMeans(Ramus)

(S<-cov(Ramus))

eigen(S)

Ramus.pca<-princomp(Ramus,cor=F,scores = T)
summary(Ramus.pca)

loadings(Ramus.pca)


require(ggfortify)

autoplot(Ramus.pca)


biplot(Ramus.pca) 


plot(Ramus.pca,type ="lines")

