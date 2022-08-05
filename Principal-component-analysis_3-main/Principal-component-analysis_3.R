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