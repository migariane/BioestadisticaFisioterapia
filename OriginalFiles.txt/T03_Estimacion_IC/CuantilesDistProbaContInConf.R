## CALCULO CAUNTILES E INTERVALOS DE CONFIANZA

# CUANTILES DISTRIBUCION NORMAL
# NC 95%
qnorm(c(0.975), mean=0, sd=1, lower.tail=TRUE)
# NC 90%
qnorm(0.95)
# NC 95% 
qnorm(0.975)
# NC 98%
qnorm(0.99)
# NC 99%
qnorm(0.995)

# CUANTILES DISTRIBUCION T-STUDENT 
qt(c(0.975), df=100, lower.tail=TRUE)
qt(c(0.975), df=9, lower.tail=TRUE)

# INTERVALO CONFIANZA DISTRIBUCION NORMAL y T-Student 
media <- 10
n <- 64
s <- 25
alfa <- 0.05
qn <-1-(alfa/2)
IC95 <- c(media - qnorm(qn)*(s/sqrt(n)), media + qnorm(qn)*(s/sqrt(n))); IC95
IC95 <- c(media - qt(qn,n-1)*(s/sqrt(n)), media + qt(qn,n-1)*(s/sqrt(n))); IC95
precision <- c(media + qt(qn,n-1)*(s/sqrt(n)))- (media - qt(qn,n-1)*(s/sqrt(n)))
precision/2

library(BioestadisticaR2)
icm(n=64, m=10, s=25)
## Extra (complementario)

# CUANTILES DISTRIBUCION CHI-CUADRADO IC90%
qchisq(c(0.9), df=15, lower.tail=TRUE)
qchisq(c(0.1), df=15, lower.tail=TRUE)
qchisq(c(0.9, 0.1), df=15, lower.tail=TRUE)

# CUANTILES DISTRIBUCION CHI-CUADRADO IC95%
qchisq(c(0.975), df=15, lower.tail=TRUE)
qchisq(c(0.025), df=15, lower.tail=TRUE)
qchisq(c(0.975, 0.025), df=15, lower.tail=TRUE)

# CUANTILES DISTRIBUCION F SNEDECOR IC95%
qf(c(0.975), df1=24, df2=24, lower.tail=TRUE)
1/qf(c(0.975), df1=24, df2=24, lower.tail=TRUE)



