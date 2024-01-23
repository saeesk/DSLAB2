########################
##L4 - 1
########################

df = USArrests
dim(df)
head(df)
df = na.omit(df) #omit Na values
df = scale(df) #standardize the data 

##Hierarchical clustering 
d = dist(df , method =  "euclidean") # measure of similarity / closeness 
hc = hclust(d)
sub_grp = cutree(hc , k = 4)
library(factoextra)

#visualizing the clusters 
fviz_cluster(list(data = df , cluster = sub_grp))


#The following code is supposed to make 3d plots rectify the code 
library(rgl)

dat = replicate(2 , 1:3)
plot3d(dat , type = 'n',
       xlim = c(-1 ,8),
       ylim = c(-1,8),
       z = c(-10 , 10),
       xlab = ' ' ,
       ylab = ' ',
       zlab = ' ')
planes3d( 2, 3, -1 , 0 , col = "red" ,alppha = 0.6) 
points3d(x = 0 , y = 0 , z = 0)


#############
##Application
#############
library(ISLR)
data(Auto)
dim(Auto)
summary(Auto)

auto = Auto[ , 1:7]
summary(auto)

auto = Auto[ , 1:7]
summary(auto)

new.data = Auto[ , 1:8]
new.data$origin = as.character(new.data$origin)
summary(new.data)



#plotting variable importance from PCA 
pc = prcomp(auto , scale = TRUE)
plot(pc)

#plotting the screeplot 
plot(cumsum(pc$sdev^2 / sum(pc$sdev^2)) , type = 'o')

#plotting the data in new dimension 
library(ggfortify) 
autoplot(pc , data = new.data , colour = 'origin') #plotting data with respect to principal compoennets 

