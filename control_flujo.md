Estructuras de control de flujo
================

## Condicionales y Bucles

Como hemos visto hasta ahora, cuando escribimos código y lo ejecutamos
el mismo será interpretando línea a línea, hasta que se ejecuta la
última línea y el programa termina. **Las estructuras de control de
flujo permiten alterar este comportamiento para adecuarlo a nuestras
necesidades**.

En general podemos definir dos grandes tipos de estructuras para el
control de flujo. Por un lado, aquellas estructuras que **evaluan
condiciones** y ejecutan un código subsiguiente en función de si el
resultado de esa evaluación es verdadero o falso, a estas estrucuturas
las llamamos *condicionales*. Por otro lado, tenemos estructuras que
**repiten iterativamente** una porción de código mientras se cumpla
alguna condición dada, a estas estructuras las denominamos *bucles*.

**Nota:** Antes de continuar es recomendable repasar los
<u>operadores</u> aprendidos en el primer día de clases.

------------------------------------------------------------------------

### If … else

El constructo `if ... else` es una estructura de tipo condicional. En
pocas palabras, `if` evaluará una condición dada y si la misma se cumple
(ie.: el resultado es **TRUE**), se ejecutará el código correspondiente.
Para defenir un bloque de código a ejecutarse si no se cumple la
condición previamente establecida, utilizaremos `else`. Si además
quisieramos definir múltiples condiciones, en caso de que la primera no
se cumpla y que deriven en diferentes ejecuciones, deberemos utilizar
`else if`.

``` r
if (TRUE) {
  print("Se ejecutará el código bajo 'if' ya que la condición resulta TRUE")
}
```

    ## [1] "Se ejecutará el código bajo 'if' ya que la condición resulta TRUE"

``` r
if (!TRUE) {
  print("Se ejecutará el código bajo 'if' ya que la condición resulta TRUE")
} else {
  print("Se ejecutará el código bajo 'else' dado que la condición resulta FALSE")
}
```

    ## [1] "Se ejecutará el código bajo 'else' dado que la condición resulta FALSE"

#### *Múltiples condiciones*

En ocasiones necesitamos establecer múltiples condiciones. Ejecute el
codigo siguiente varias veces, pero cambiando cada vez el valor de *a*.

``` r
a <- 25

if (a >= 40) {
    print("a es mayor o igual que 40")
} else if (a >= 30) {
    print("a es mayor o igual que 30")
} else if (a >= 10) {
    print("a es mayor o igual que 10")
} else {
    print("a es menor a 10")
}
```

    ## [1] "a es mayor o igual que 10"

**Para pensar:** ¿Qué pasa cuando, por ejemplo, a = 35? ¿Cuántas
evaluaciones independientes serían TRUE? ¿Qué porción de código se
ejecuta y por qué?

#### *And / or*

Es posible agrupar diferentes evaluaciones utilizando los operadores
**Y** (`&`) y **O** (`|`). Ejecute el siguiente código varias veces
cambiando los valores de a, b y c.

``` r
a <- 35
b <- 12
c <- 65

if (a < 40 & b > 10 | c > 50) {
    print("'a' es menor a 40 y 'b' mayor a 10 ó 'c' es mayor a 50")
} else {
    print("No se cumple ninguna condición")
}
```

    ## [1] "'a' es menor a 40 y 'b' mayor a 10 ó 'c' es mayor a 50"

#### <u>Ejercicio</u>

# REVISAR!!! (mi ejemploera de python… no estoy seguro si funciona igual en R)

Compare el código de la celda precedente con el de aquí abajo. ¿Qué
diferencias nota? Ejecútelo y explique el resultado con el obtenido
usando el código previo con los mismos valores para “a”, “b” y “c”.

``` r
a <- 35
b <- 12 
c <- 65

if (a < 40 & (b > 10 | c > 50)){
  print("'a' es menor a 40 y 'b' mayor a 10 ó 'c' es mayor a 50")
  } else {
    print("No se cumple ninguna condición")
}
```

    ## [1] "'a' es menor a 40 y 'b' mayor a 10 ó 'c' es mayor a 50"

#### *If anidados*

``` r
a <- 35

if (a > 10){
    print("a es mayor que 10")
    if (a > 20) {
        print("y también es mayor que 20")
        if (a > 30) {
            print("y también es mayor que 30")
        }} else {
        print("pero no mayor que 30")
  }}
```

    ## [1] "a es mayor que 10"
    ## [1] "y también es mayor que 20"
    ## [1] "y también es mayor que 30"

**Para pensar:** ¿Qué sucede si **a \<= 10**? ¿Qué podemos aprender de
esta situación? ¿Cómo podríamos salvar el inconveniente?

#### <u>Ejercicio</u>

Juan y María fueron a hacer compras, contruya con código que indique
cuál de ambos gastó más dinero y de cuanto es la diferencia. El mismo
código debe servir para evaluar los tres escenarios siguientes:

- Escenario Nº 1

compra_juan = 690 / compra_maria = 730

- Escenario Nº 2

compra_juan = 745 / compra_maria = 745

- Escenario Nº 3

compra_juan = 890 / compra_maria = 730

------------------------------------------------------------------------

### While …

El constructo `while` es una estructura de tipo bucle. En pocas
palabras, evaluará una condición y ejecutará repetitivamente una porción
de código mientras que la misma se cumpla (ie.: el resultado sea TRUE).

``` r
i <- 1
while (i < 4) {
    print(paste("Repetición nº:", i))
    i <- i + 1
    }
```

    ## [1] "Repetición nº: 1"
    ## [1] "Repetición nº: 2"
    ## [1] "Repetición nº: 3"

**Atención!!!** Si en nuestro bucle precendente omitimos incrementar el
contador *i*, nuestro bucle se ejecutará indefinidamente.

#### *While en listas u otros iterables*

``` r
carreras <- c('Biología', 'Bioquímica', 'Medicina', 'Nutrición')
i <- 1
while (i <= length(carreras)) {
  print(carreras[i])
i <- i + 1
}
```

    ## [1] "Biología"
    ## [1] "Bioquímica"
    ## [1] "Medicina"
    ## [1] "Nutrición"

#### *Rompiendo un bucle*

``` r
i <- 1
while (i < 12) {
  print(paste("Repetición nº:", i ))
    if (i == 5) {
      break
    }
    i <- i + 1
}
```

    ## [1] "Repetición nº: 1"
    ## [1] "Repetición nº: 2"
    ## [1] "Repetición nº: 3"
    ## [1] "Repetición nº: 4"
    ## [1] "Repetición nº: 5"

#### *Saltando dentro de un bucle*

``` r
i <- 0
while (i < 9) {
  i <- i + 1
  if (i > 2 & i < 7) {
    next
  } else {
    print(paste("Repetición nº:", i )) }
}
```

    ## [1] "Repetición nº: 1"
    ## [1] "Repetición nº: 2"
    ## [1] "Repetición nº: 7"
    ## [1] "Repetición nº: 8"
    ## [1] "Repetición nº: 9"

------------------------------------------------------------------------
