# contextoia

`contextoia` genera resumenes programaticos y prudentes de datasets para dar
contexto a sistemas de IA sin pegar datos sensibles o ejemplos reales
innecesarios.

La interfaz publica principal es:

```r
resumen_de(mi_dataset)
```

## Uso minimo

```r
library(contextoia)

cat(resumen_de(iris))
```

## Desarrollo local

```r
devtools::load_all(".")
devtools::test()
devtools::check()
```

## Estado

Este paquete nace como extraccion del helper IA desarrollado dentro de
ObfuscatoR. La API publica prioriza nombres y parametros en espanol.
