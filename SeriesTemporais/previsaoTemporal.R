##### Exercício 6
y = c(3929214, 5308483, 7239881, 9638453, 12860702, 17063353, 23191876, 31443321, 38558371, 50189209, 62979766, 76212168, 92228496, 106021537, 123202624,
      132164569, 151325798, 179323175, 203302031, 226542203, 248709873)
### ajuste do modelo
tempo = 1:length(y)
reg = lm(y ~ tempo + I(tempo^2))
coef(reg)
plot(tempo , y, pch = 19, col = "red")
lines(fitted(reg)) 
### previsão
previsao = predict(reg, data.frame(tempo = 22:26))
plot(tempo , y, pch = 19, col = "red", xlim = c(0,26), ylim = c(min(y), max(previsao)))
lines(fitted(reg))
points(22:26, previsao, pch = 19, col = "blue")
lines(22:26, previsao, col = "blue", lty = 2)