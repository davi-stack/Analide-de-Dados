###*Aplique à série y o método de suavização 
#exponencial de Holt-Winters do tipo aditivo e 
#responda aos itens a seguir. Deixe que o R estime 
#os valores iniciais e use α = 0,2 ; β = 0,2 e γ = 0,2.
#Determine a previsão 1 passo adiante para o 1ª 
#trimestre de 2013.
#Determine a previsão 1 passo adiante para o 1ª 
#trimestre de 2009.
#Determine a estimativa do nível, tendência e 
#sazonalidade da série para o o 1ª trimestre de 2009.



y = ts(c(20, 18, 22, 24, 24, 22, 26, 29, 28, 
         25, 31, 34, 32, 29, 35, 38, 36, 32, 40, 43, 
         40, 36, 44, 48), start = 2007, frequency = 4)
mod = HoltWinters(y, beta = 0.2, alpha = 0.2, gamma = 0.2)
predict(mod, n.ahead =1)