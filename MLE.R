#Weibull distribution
  
loglikfun_W=function(param){
    +     tao=param[1]
    +     lambda= param[2]
    +     sum(dweibull(claims,shape=tao,scale=lambda,log=TRUE))}
  
mle_W=maxLik(logLik=loglikfun_W,start=c(tao=0.55, lambda= 1199.6))
mle_W
  
#Lognormal distribution
    
loglikfun_LN= function(param){
      +        mu=param[1]
      +             sigma=param[2]
      +          sum(dlnorm(claims,meanlog=mu,sdlog=sigma,log=TRUE))}
mle_LN=maxLik(logLik= loglikfun_LN,start=c(mu= 6.827675,sigma=1.25))
mle_LN

# Inverse Gaussian distribution   
library(statmod)
llf=function(param)
    +     {mu=param[1]
    +  lambda=param[2]
    +     sum(dinvgauss(claims,mean = mu,shape = lambda,log = TRUE))}
mleIG=maxLik(logLik = llf,start = c(mu=2020,lambda=532))
mleIG
  
    