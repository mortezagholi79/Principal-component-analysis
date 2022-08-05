#4.2

Universities <-read.csv("~/Universities.csv",header = T)
str(Universities)
#A
 
# Remove all categorical variables
Universities<-Universities[,-c(1,2,3)]

# remove all records with missing numerical measurements from the dataset
Universities.NAomit<-na.omit(Universities)
str(Universities.NAomit)



# PCA on non-normal data
pca.nonnormal <- prcomp(Universities.NAomit)
summary(pca.nonnormal)
pca.nonnormal$rot[,1:2]

which.max(pca.nonnormal$rot[,1])
max(pca.nonnormal$rot[,1])


which.max(pca.nonnormal$rot[,2])
max(pca.nonnormal$rot[,2])


# PCA on normal data

pca.normal <- prcomp(Universities.NAomit,scale. = T)
summary(pca.normal)

pca.normal$rot[,1:6]
