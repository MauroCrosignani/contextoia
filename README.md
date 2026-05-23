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

## Instalacion desde GitHub

```r
remotes::install_github("MauroCrosignani/contextoia")
```

Si R devuelve un error `HTTP error 401: Bad credentials` al instalar desde
este repositorio publico, revisar si hay un `GITHUB_PAT` invalido en el entorno
de R. Para una prueba puntual puede usarse:

```r
Sys.unsetenv("GITHUB_PAT")
remotes::install_github("MauroCrosignani/contextoia")
```

## Estado

Este paquete nace como extraccion del helper IA desarrollado dentro de
ObfuscatoR. La API publica prioriza nombres y parametros en espanol.
