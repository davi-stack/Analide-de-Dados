x = c(20, 20, 20, 50, 50, 50, 80, 80, 80)
y = c(24.3, 24, 25.9, 16.5, 12.1, 13.7, 6.3, 5.7, 3.5)
reg <- lm(y ~ x)
coef(reg) #b0 e b1, 30.9722222  -0.3261111
residuals(reg) #
summary(reg)
deviance(reg)
#plot(reg)
# interpretacao, o b1 é negativo então, a medida que a temperatura almenta, a velocidade de reação aumenta
#
coef(reg)
