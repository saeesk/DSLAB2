##############
###DSLAB L11_1 
##############
rbinom(1 , 2271 , 0.5)/2271 # n = 2271 , p = 0.5 , r = 1
results = rbinom(1e6 , n = 2271 ,0.5)/2271  #divided by 2271 or 1e6 ? 
mean(results)
sd(results)
hist(results)

##Sampling distribution and convergence in probability 
mean(runif(10 , 0 , 100))
mean(runif(100 , 0 , 100))
mean(runif(1000 , 0 , 100))


#Demonstarting CLT for binomial  
CLT_binom = function( B , n , p)
{

}

