y = ts(c(4923.3, 4097.7, 4165.1, 5175.6, 4257.9, 4464.5, 5401.4, 4540.5, 4764.5, 5743.7, 4884.7, 5080.7, 5963.2, 5062.8, 5285.3, 6241.9, 5272.5, 5566.7, 6592.7, 5568.2, 5896.8, 6904.7, 6026.8, 6190.3, 7300.8, 6404.5, 6622.3, 7753.6, 6881.8, 7043.5, 8065.4, 7226.1, 7355.1, 8491.3, 7617.8, 7778.9, 8893.5, 7822.6, 8000.7, 9136.6, 7998.3, 8264.3, 9228, 8235.5, 8498.4, 9494.4, 8478.6, 8801.1, 9827.8, 8836.9, 9225.2, 10283.1, 9324.4, 9732.3, 10795.4, 9785.7, 10151.9, 11357, 10350.5, 10647.4), start = 1, frequency = 3)


tempo <- 1:length(y)  # Cria uma variável de tempo
periodo <- 3  # Supondo que a série é mensal, então o período é de 12 meses

# Criar variáveis harmônicas
harmonica_sin <- sin(2 * pi * tempo / periodo)
harmonica_cos <- cos(2 * pi * tempo / periodo)

# Ajustar a regressão harmônica
modelo <- lm(y ~ harmonica_sin + harmonica_cos)

coef_beta1 <- coef(modelo)[2]

print(length(y))

# Imprimir o coeficiente beta1 estimado
print(round(coef_beta1, 2))
n = predict(modelo, newdata = data.frame(tempo = 68))
print(n)