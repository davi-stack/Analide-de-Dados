y = ts(c(71.6, 72.5, 73.5, 74.5, 75.2, 76.3, 
         76.9, 78.1, 80.0, 80.9, 81.7, 82.9, 84.7, 
         86.3, 88.8, 90.9, 91.5, 93.4, 94.6, 95.9, 
         96.7, 97.8, 99.1, 100.0), frequency = 1)
mod = HoltWinters(y, gamma = FALSE, alpha=0.5, beta=0.3)


#fitted(mod)
#Y10/9 = 80.53472 ->y 10 dado que estou no 9



predict(mod, 25)
#para ano 25 após o inicio, 128.5796u