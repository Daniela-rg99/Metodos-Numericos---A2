# METODO DE LA SECANTE
# Valores iniciales
x0 = 1
xant = 0
error = 0

# Error permitido (delta)
delt = 0.00000001
# Número máximo de iteraciones
n = 10
# Función para encontrar su raíz
f = function(theta) sin(theta) + cos(1 - theta^2) - 1

# Cálculos usando el método de la secante
for (i in 1:n) {
  numera = f(x0) * (xant - x0)
  denomi = f(xant) - f(x0)
  x1 = x0 - (numera / denomi)
  
  print(c(i, x0, xant, x1))
  error = abs(x1 - x0)
  if (error < delt) {
    print(" ")
    cat("La solución converge en", i, "iteraciones. raíz =", x1)
    break()
  }
  xant = x0
  x0 = x1
  if (i == n) {
    print("Máximo número de iteraciones alcanzado.")
  }
} 
