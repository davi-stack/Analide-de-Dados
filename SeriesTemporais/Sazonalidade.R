#serie temporal
Y = ts(c(20, 18, 22, 24, 24, 22, 26, 29, 28, 
         25, 31, 34, 32, 29, 35, 38, 36, 32, 40, 43, 40, 
         36, 44, 48), start = 2007, frequency = 4)
#objeto decomposto
mod = decompose(Y, type= c("additive"))
plot(mod)
#sazonalidade
#print(mod$seasonal)
#serie desazonalizada para modelo aditivo
desS = Y - mod$figure
#plot(Y)
print(desS)