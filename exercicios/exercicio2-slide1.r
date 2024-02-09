x = c(72, 80, 88, 96, 104, 112, 120)
y = c(9.8, 9.5, 10.2, 10.8, 11.0, 11.5, 11.9)
reg <- lm(y ~ x)
coef(reg)
#espera-se  um aumento de 0.049 no consumo para cada aumento de 1km/h na velocidade
