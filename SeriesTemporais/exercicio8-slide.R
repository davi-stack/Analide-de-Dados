#Exercicio 8
y = ts(c(14.36,-0.48, 1.94, 1.43, 3.29, 12.73, 0.81,-3.20, 10.33, 2.62, 5.84, 6.90,
         2.90,-1.25, 0.32, 0.95, 9.40,-2.01, 7.89, 12.47, 1.90, 7.80, 8.60, 1.40, 0.00,
         5.20, 10.80, 11.50, 1.10,-2.10,-3.30, 4.30, 8.90, 9.20, 3.00, 12.10, 4.60, 4.50,
         2.50,-1.00, 4.90,-2.70, 8.50, 7.60, 3.20, 11.60, 2.40, 9.70, 7.70, 6.80, 4.90,
         7.30, 4.70, 7.80, 8.80, 2.90, 7.70, 10.80, 9.80, 9.40, 8.60, 6.60, 0.60, 3.40,
         2.40, 6.70, 4.20, 9.80, 9.50, 10.40, 11.34, 11.94, 13.97, 8.15, 5.17, 10.26, 4.93,
         4.97, 6.76, 9.20,-4.25, 0.83,-2.93, 5.40, 7.85, 7.49, 3.53,-0.06, 3.16,-4.35,
         1.03,-0.47, 4.67, 5.33, 4.42, 2.15, 3.38, 0.04, 0.25, 4.31, 1.31, 2.66, 1.15,
         5.71, 3.16, 3.96, 6.09, 5.17,-0.33, 7.53, 2.73, 1.03, 2.49), start = 1901,
       frequency = 1)
#estacionaria

par(mfrow = c(1,2)) #para mostrar dois gráficos
acf(y, ci.type = "ma") #acf
pacf(y) #af1
#pelo gráfico das autocorrelações, MA(1), pois apenas o primeiro dado fica a baixo da linha de corte, que é a média
#pelo gráfico das correlações parciais, AR(1), pois apenas o primeiro valor fica acima da linha
mod1 = arima(y, c(1, 0, 0)) #modelo AR(1)
mod2 = arima(y, c(0,0,1))
AIC(mod1)
AIC(mod2)
AIC(mod1) + 2*(1+0+2)*(1+0+3)/(length(y)-1-0-3) #indice do modelo1

AIC(mod2) + 2*(0+1+2)*(0+1+3)/(length(y)-0-1-3) #indice do modelo1








