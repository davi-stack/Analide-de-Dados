#Exercicio 17
y = ts(c(3676, 3397, 3375.5, 4135.5, 4003.6, 3539.4, 
         3378.9, 4088.1, 4034.8, 3866.3, 4310.4, 3950.4, 4110.5, 
         3776.5, 3901.8, 4675.1, 4437, 4097.8, 3822.5, 4553.3, 
         4558.3, 4262, 4865.9, 4576.2, 4554, 4223.8, 4394.5, 
         5080, 5005.7, 4571.9, 4312.8, 5144.3, 5028.2, 4763, 
         5436.4, 5019.1), start = 2018, frequency = 12)
mod <- HoltWinters(y)
fitted(mod)
predict(mod)