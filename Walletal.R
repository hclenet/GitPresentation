### Winbugs code for the analysis of cancer mortality data
model { 
for ( i in 1:N) {
##### First specify the measurement model part
O1[i]  ~ dpois( w1[i] )
O2[i]  ~ dpois( w2[i] )
O3[i]  ~ dpois( w3[i] )
z1[i]  ~ dnorm( w4[i], taue[1])
z2[i]  ~ dnorm( w5[i], taue[2])
z3[i]  ~ dnorm( w6[i], taue[3])
z5[i]  ~ dnorm( w7[i], taue[4])
z4[i]  ~ dnorm( w8[i], taue[5])
log(w3[i]) <- log(E3[i]) + lambda[1] * f1[i]
log(w2[i]) <- log(E2[i]) + lambda[2] * f1[i]
log(w1[i]) <- log(E1[i]) + f1[i]
w4[i] <- lambda[3] * f2[i]
w5[i] <- lambda[4] * f2[i]
w6[i] <- f2[i]
w7[i] <- lambda[5] * f3[i]
w8[i] <- f3[i]
m[i]<- 1/num[i]  # scaling factor for variance in each cell

##### structural equation
###predicted f1 by SEM
muf1[i] <- beta[1] * f2[i] + beta[2] * f3[i]
+ beta[3] * smk[i]
delta[i] <- f1[i] - muf1[i]
## spatial error
##### coregionalization#
# The coregionalization formulas are:
# f3[i] <- a[1] * v1[i] + a[2] * v2[i]
# f2[i] <- a[3] * v2[i]

#Where v1 and v2 are two ind unit variance "CAR" process with
#correlation parameter alpha[2] and alpha[3]. To improve computing
#efficiency and convergence of the MCMC algorithm, we use an
#alternative equivalent formulation by integrating v1 and v2 out.
muf3[i] <- f2[i] * a2/a[1]
## The conditional mean of f3[i] given f2[i]
muf2[i] <- 0
## Mean of f2[i] is 0 (same as v2[i])
}
a[1] <- 1/sqrt(a1.prec)
a[2] <- a2
a[3] <- 1/sqrt(a3.prec)
f1[1:N]  ~ car.proper(muf1[], C[], adj[], num[], m[], precf, alpha[1])
f3[1:N]  ~ car.proper(muf3[], C[], adj[], num[], m[], a3.prec, alpha[3])
f2[1:N]  ~ car.proper(muf2[], C[], adj[], num[], m[], a1.prec, alpha[2])
### Define the variances as the reciprocal of precisions
sigmaf <- 1/precf 
for ( i in 1:5) { sigmae[i] <- 1/taue[i] }
### set up the weight matrix C for the CAR distributions
cumsum[1] <- 0
for(i in 2:(N+1)) {
cumsum[i] <- sum(num[1:(i-1)])
}
for(k in 1 : sumNumNeigh) {
for(i in 1:N) {
pick[k,i] <- step(k - cumsum[i] - epsilon) * step(cumsum[i+1] - k)
}
C[k] <- 1 / inprod(num[], pick[k,])
# weight for each pair of neighbours
}
epsilon <- 0.0001
###Priors for the parameters
for ( i in 1:3) { beta[i]  ~dnorm( 0,0.001) }
precf  ~ dgamma(0.01,0.01)
a2 ~dnorm(0,0.001)
a1.prec  ~dgamma(0.01,0.01)
a3.prec  ~ dgamma(0.01,0.01)
for (i in 1:3){ alpha[i]  ~ dunif(0,1) }
for (i in 1:5) {
taue[i ]  ~ dgamma(0.01,0.01)
lambda[i] ~ dnorm(0, 0.001) } 
}


