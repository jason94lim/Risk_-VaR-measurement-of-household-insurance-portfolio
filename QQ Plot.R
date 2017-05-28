## Accuracy of fitting, QQ plot
  
p=1:120/121
  
#Weibull distribution (MoM)
weibullquantiles=qweibull(p,shape=0.55389,scale = 1199.60565) ##MOM
qqplot(weibullquantiles,claims,xlab="Theoretical Quantiles",ylab="Sample Quantiles", main= "Weibull Distribution (MoM)")
abline(0,1)
    
#Lognormal distribution (MoM)
lognormquantiles=qlnorm(p,meanlog=6.82768,sdlog=1.2516557) ##MOM
qqplot(lognormquantiles,claims,xlab="Theoretical Quantiles",ylab="Sample Quantiles",main="Lognormal Distribution (MoM)")
abline(0,1)
      
#Inverse Gaussian Distribution (MoM)
library(statmod)
invgaussquantiles=qinvgauss(p,mean = 2020.29167,shape = 532.9834) ##MOM
qqplot(invgaussquantiles,claims,xlab="Theoretical Quantiles",ylab="Sampl  e Quantiles",main="Inverse Gaussian Distribution (MoM)")
abline(0,1)
      
#Weibull Distribution (MLE)
weibullquantiles=qweibull(p,shape= 0.7155689,scale = 1560.387) ##MLE
qqplot(weibullquantiles,claims,xlab="Theoretical Quantiles",ylab="Sample Quantiles",main="Weibull Distribution (MLE)")
abline(0,1)
        
#Lognormal distribution (MLE)
lognormquantiles=qlnorm(p,meanlog=6.624173,sdlog= 1.511246) ##MLE
qqplot(lognormquantiles,claims,xlab="Theoretical Quantiles",ylab ="Sample Quantiles", main= "Lognormal Distribution (MLE)")
abline(0,1)
                   
                   
                   > #Inverse Gaussian Distribution (MLE)
                   > library(statmod)
                   > invgaussquantiles=qinvgauss(p,mean = 2020.035,shape = 163.9678) ##MLE
                   > qqplot(invgaussquantiles,claims,xlab="Theoretical Quantiles",ylab="Sampl  e Quantiles",main="Inverse Gaussian Distribution (MLE)")
                   > abline(0,1)
                   
                   