y = c(9, 10, 9, 12, 11, 10, 10, 16, 7, 12,
      11, 15, 10, 13, 8, 14)
x1 = c(50.8, 76.2, 50.8, 76.2, 50.8, 76.2,
       50.8, 76.2, 50.8, 76.2, 50.8, 76.2, 50.8,
       76.2, 50.8, 76.2)
x2 = c(15, 15, 25, 25, 15, 15, 25, 25, 15,
       15, 25, 25, 15, 15, 25, 25)
x3 = c(0.635, 0.635, 0.635, 0.635, 1.016,
       1.016, 1.016, 1.016, 0.635, 0.635, 0.635,
       0.635, 1.016, 1.016, 1.016, 1.016)
reg = lm(y ~ x1 + x2 + x3)
sigma <- summary(reg)$sigma
print(sigma) #sigma eh 1.67
coef <- coef(reg)
print(coef)
variancia <- vcov(modelo)
print(variancia)
erros_padrao_estimados <- sqrt(diag(variancia))
print(erros_padrao_estimados)
















