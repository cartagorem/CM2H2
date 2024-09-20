# Laboratorio_1


 
# Ejercicio_1 Item a

potencias_3 <- 3^(1:50)


# Ejercicio_1 Iteam b

cuadrados <- (1:100)^2

# Ejercicio_3 Item c

secuencia <- as.vector(rbind(1:20, rep(-1, 20)))

# Ejercicio_2 

id <- 0:4  # Crea un vector con valores enteros del 0 al 4
dn <- seq(0, .8, by = .2)  # Crea una secuencia de valores decimales de 0 a 0.8, con un paso de 0.2

# Calcula la tabla de probabilidades usando la función 'outer'
p = outer(id, dn, function(x, y) pnorm(x + y))

# Asigna nombres a las dimensiones de la tabla
dimnames(p) = list(z = id, "Primer lugar decimal de z " = dn)

# Redondea los resultados a 5 decimales
p = round(p, 5)


# Ejercicio_3

for (i in 1:10) {
  # Crear el número 888... con la cantidad de dígitos de 'i'
  numero <- as.numeric(paste(rep(8, i), collapse = ""))
  
  # Calcular el valor de la ecuación: 8 * (888... ) + 13
  resultado <- 8 * numero + 13
  
  # Imprimir el resultado en formato de la ecuación
  cat("8 x", numero, "+ 13 =", resultado, "\n")
}

# Ejercicio_4

# Matriz de ejemplo
X <- matrix(c(1, 2, 3, -1, 5, 6, 7, 8, 9, 4, NA, 2), nrow = 4, byrow = TRUE)

# Inicializamos una variable para almacenar el índice de la primera fila positiva
indice_positiva <- NA

# Bucle para recorrer las filas de la matriz
for (i in 1:nrow(X)) {
  # Verificamos si todos los elementos de la fila son positivos y no tienen NA
  if (all(X[i, ] > 0) && all(!is.na(X[i, ]))) {
    indice_positiva <- i
    break  # Terminamos el bucle si encontramos la primera fila
  }
}

# Imprimir el índice de la primera fila con todos elementos positivos
if (!is.na(indice_positiva)) {
  cat("El índice de la primera fila con todos números positivos es:", indice_positiva, "\n")
} else {
  cat("No se encontró ninguna fila con todos números positivos sin NA.\n")
}




