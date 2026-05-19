#### Este script grafica una función cuadratica de tipo y(x) = x^2 
cat("\nPreparando función y datos...\n\n")   # Mensaje de inicialización

# Creando la función 
f <- function(x) { x^2 }
# Generando datos para ponerla a prueba
x <- -100:100    # x valdrá desde -100 hasta 100 en intervalos de a 1.

cat("Realizando grafico...\n\n")    # Mensaje de gráfico
# Iniciar dispositivo gráfico
pdf("Grafico de funcion cuadrática.pdf", width=10, height=10)  # El 1º argumento indica el nombre del archivo de salida
# Graficamos
plot(x, f(x), type="l", main = "Grafiquemos una función cuadrática", xlab = "x" , ylab = "y = f(x)")
# Añadimos unas líneas punteadas para marcar los ejes cartesianos
abline(h = 0, v=0, lty=2)
# Cerramos y guardamos el dispositivo gráfico
invisible(dev.off())

cat("Finalizado! Puede encontrar el gráfico en el directorio de trabajo.\n\n") # Mensaje de finalización
