EURUSD<-read.csv("C:/Users/12345/Desktop/Processed_EURUSD.csv",header=T)
dim(EURUSD)


names(EURUSD)

EURUSD<-EURUSD[,-1]
colMeans(EURUSD)

(S<-cov(EURUSD))




eigen(S)




landa<-eigen(S)$values
 which(landa>mean(landa))


EURUSD.pca<-princomp(EURUSD,cor=F,scores = T)
summary(EURUSD.pca)

loadings(EURUSD.pca)


#require(ggfortify)

autoplot(EURUSD.pca)



plot(EURUSD.pca,type ="lines")



# R matrix
(R<-cor(EURUSD))

eigen(R)




landa<-eigen(R)$values
which(landa>1)


EURUSD.pca.R<-princomp(covmat=R)
 summary(EURUSD.pca.R)

  
