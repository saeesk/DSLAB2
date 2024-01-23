##################
###L4_R2
##################
library(pracma)
A <- matrix(c(1, -1, 4, 2, 0, -1, -1, -1, 5), nrow=3, ncol=3, byrow=TRUE)
#to get row reduced form 
rref(A)
##from here follow usual procedure to find null spaces 


##now we directlly find null space 
library(MASS)
A <- matrix(c(1, -1, 4, 2, 0, -1, -1, -1, 5), nrow=3, ncol=3, byrow=TRUE)
temp = Null(t(A))  #finda out the null space 
#just to get it wrt a unit valued variable 
temp/temp[3]



A <- matrix(c(1, -1, 4, 1, 2, 0, -1, -2, -1, -1, 5, 3),nrow=3, ncol=4, byrow=TRUE)
#to get row reduced form : row space
rref(A)
#to get null space
Null(t(A))
##to get column space 
t(rref(A))


###Alternative methods 
orth(t(A)) #orthogonal complement of column space 
nullspace(A) #nullspace 
orth(A) #column spaec
