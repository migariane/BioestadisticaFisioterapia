## CALCULO P-Valores con valor T experimental en contrastes de hipotesis 

## P valor (Bilateral, para unilateral NO multiplique por 2)
(1-pnorm(1.959964))*2 ## Bilateral
(1-pnorm(1.959964)) ## Unilateral

## T-STUDENT aproximacion a la normal (n: infinito)
(1-pt(1.96,10000))*2

## BioestadisticaR: contraste de hipotesis dos muestras independientes

## Ejemplo diapostivas dos muestras: diapositivas 16 y 17
testt(n1=20, m1=450, s1=89, n2=16, m2=380, s2=96)
## p-valor estadistico F Snedecor Test: homocedasticidad
(1-(pf(1.163,15,19)))*2 ## 0.74 (Bilateral, para unilateral no multiplique por 2)
    ## Valor critico Fexp < Fcritico
    qf(0.9,15,19) ## 1.86
## P-valor T student 
(1-pt(2.265,34))*2 ## Bilateral
(1-pt(2.265,34)) ## Unilateral

## P-valor Test Welch 
(1-pt(2.245,31.11))*2 ## Bilateral
(1-pt(2.245,31.11)) ## Unilateral

