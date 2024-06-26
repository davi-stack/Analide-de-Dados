#Aplique à série y o método de suavização 
#exponencial simples e responda aos itens a seguir. 
#Deixe que o R estime o parâmetro de suavização e 
#os valores iniciais.
#(frequencia 1, dados anuais)
y  = ts(c (0.50, 2.65, 0.97, 4.12, -0.59, 2.06, 2.17, 
           0.00, 1.03, 1.40, 2.39, -0.12, 0.96, 1.91, 2.11, -1.07, 
           3.78, 1.35, 2.05, -0.10, 2.04, 2.10, 2.34, 0.43, 0.42, 
           1.86, 0.25, 1.04, 1.59, 1.25, 1.55, 2.83, 0.99, 1.75, 
           1.72, 2.14, 2.76, 2.62, 2.95, 2.85, 1.90, 1.51, 1.59, 
           1.70, 2.90, 1.72, 1.64, 1.70, 2.45, 1.90, 3.95, 2.47, 
           3.14, 3.90, 2.84, 2.39, 2.51, 1.84, 3.42, 2.32, 2.59, 
           3.24, 3.38, 2.40, 0.16, 0.47, 1.55, 4.10, 2.31, 1.33, 
           1.57, 1.23, 0.36, 0.36, 0.24, 1.15, 2.38, 1.77, 1.96, 
           0.60, 1.20, 0.79, 0.69, 1.64, 2.70, 0.96, 1.65, 0.08, 
           1.16, 1.23, 0.57, 0.68, 0.98, 1.42, 1.62, 2.30, 2.05, 
           2.85, 2.83, -0.17, 1.05, 2.35, 1.12, 0.15, 2.39, 2.05, 
           1.45, 0.55, 3.39, 1.52, 1.98, 3.58, 2.56, 4.08, 2.40, 
           1.00, 2.62, 2.74, 2.96, 2.62, 3.02, 2.76, 2.16, 1.55, 
           2.93, 3.10, 2.35), frequency = 1)
#alta vai ser determinado pelo próprio R, e beta e gama não será usados pois é uma suavisação simples
mod = HoltWinters(y, beta= FALSE, gamma= FALSE)
predict(mod, n.ahead= 10)