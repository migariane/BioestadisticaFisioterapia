# Indice de masa corporal en kgm2 (var independiente)

IMC = c(20.36, 20.34, 20.05, 23.07, 23.94, 27.45, 22.17,
        24.37, 22.18, 17.30, 21.72, 19.29)
# Porcentage de grasa en cuerpo (var dependiente)
pg <- c(17.36, 12.72, 11.65, 17.81, 19.34, 29.70, 24.19, 
        15.26, 28.41, 8.87, 25.62, 20.91)
# Tamaño muestra
n <- 12

# Gráfico de dispersión
plot(IMC, pg, xlab="IMC", 
     ylab="Porcentaje de grasa", 
     main="IMC vs Porcentaje de grasa", 
     pch=19, col="blue")

# Ajuste lineal
     abline(lm(pg~IMC), col="red")

# Cálculo de la regresión lineal (mapeando fórmulas)
    xi = sum(IMC)
    yi = sum(pg)
    xiyi = sum(IMC*pg)
    xi2 = sum(IMC^2)
    yi2 = sum(pg^2)
    varX = (xi2 - (xi^2)/n); varX
    varY = (yi2 - (yi^2)/n); varY
    covXY = (xiyi - (xi*yi)/n); covXY
    Beta = covXY/varX; Beta
    const = mean(pg) - Beta*mean(IMC); const

# Cálculo de la regresión lineal (directamente)   
    covXY = cov(IMC,pg)
    varx= var(IMC)
    vary= var(pg)
    Beta = covXY/varx; Beta
    const = mean(pg) - Beta*mean(IMC); const

# Cálculo de la regresión lineal (alternativamente)        
# Medias y varianzas vars dep e indep.
mIMC <- mean(IMC); mIMC
vIMC <- (n-1)*(var(IMC)); vIMC
mpg <- mean(pg); mpg
vpg <- (n-1)*(var(pg)); vpg
# Covarianza var dep e indep
covXY <- (n-1)*cov(IMC,pg); covXY
# Coeficientes del model y = f(X)
Beta <- covXY/vIMC; Beta
const <- mpg - Beta*mIMC; const

# Varianza residual del modelo
varREG <- 1/(n-2)*(vpg-((covXY)^2/vIMC)); varREG

# Inferencia estadística del modelo
texp <- abs(Beta/sqrt(varREG/vIMC)); texp
qt(0.975, n-2)
pvalor <- 2*(1-pt(texp, n-2)); pvalor
IC <- Beta + c(-1,1)*qt(0.975, n-2)*sqrt(varREG/vIMC); IC

# Coeficiente de correlación (Fuerza y sentido de la asociación)
r <- (covXY)/sqrt(vpg*vIMC); r

# Coeficiente de determinación (Fiabilidad del modelo)
R2 <- r^2; R2
R2 <- (covXY)^2/(vpg*vIMC); R2

# Regresión lineal con BioestadisticaR2 función rls
library(BioestadisticaR2)
dat <- cbind(pg,IMC)
data <- data.frame(dat)
rls(data$pg, data$IMC, decs=3)






