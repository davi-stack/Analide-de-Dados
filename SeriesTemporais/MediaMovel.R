Y = ts(c (84.6, 89.9, 81.9, 
          95.4, 91.2, 89.8, 89.7, 
          97.9, 103.4, 107.6, 
          120.4, 109.6, 110.3, 
          118.1, 116.5, 134.2, 
          134.7, 144.8, 144.4, 
          159.2, 168.2, 175.2, 
          174.5, 173.7), frequency
       = 1)
tp = c(1:length(Y))
reg = lm (Y ~ tp)
plot(tp, Y, type= "b", 
     ylim = c(60,180))
abline(reg, col = "red", 
       lty = 2)
print("dados com k igual a 4")
k = 4
filter(Y, c(1/2*k, rep(1/k, k-1), 1/2*k), sides= 2)
print("Soma: ")
sum(c(1/(2*k), rep(1/k, k-1), 1/(2*k)))
