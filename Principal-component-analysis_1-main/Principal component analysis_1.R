install.packages("ggfortify")
install.packages("calibrate")
require(calibrate)

data("heads")
Head_Lenght<-heads$X1
Head_Breadth<-heads$X2
head_data=cbind(Head_Lenght,Head_Breadth)


head(head_data,5)

colMeans(head_data)

(S<-cov(head_data))

eigen(S)


head.pca<-princomp(head_data,cor=F,scores = T)
summary(head.pca)


loadings(head.pca)


require(ggfortify)
autoplot(head.pca)

#PCA by Cor matrix

(R<-cor(head_data))

eigen(R)

head.pca.R<-princomp(covmat =R)
summary(head.pca.R)
loadings(head.pca.R)

