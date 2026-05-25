# contextoia 0.1.3

Version de ajuste para descripciones de codigo en bloques con columnas intermedias.

- Permite emparejar `DESC_*` o `DESCRIPCION_*` con columnas de codigo cercanas aunque no sean estrictamente adyacentes.
- Mantiene una ventana corta y coincidencia por nucleo de nombre para evitar emparejamientos especulativos.

# contextoia 0.1.2

Version de precision semantica para codigos normativos y descripciones de codigos.

- Evita clasificar `TIPO_TITULO` como identificador cuando funciona como variable categorica.
- Trata `NRO_ART` y nombres equivalentes de articulo/ley/norma como referencias normativas, no como identificadores.
- Detecta descripciones de codigo cuando `DESC_*` o `DESCRIPCION_*` esta emparejada con una columna vecina compatible.
- Mantiene como texto libre prudente las columnas de descripcion sin emparejamiento claro.

# contextoia 0.1.1

Version de seguridad semantica para datos institucionales.

- Trata identificadores institucionales como `NRO_EMPRESA` y `NRO_CONTRIBUYENTE_*` como identificadores, evitando listar valores frecuentes.
- Evita clasificar como identificadores medidas o estados que contienen la palabra `CONTRIBUYENTE`, como deuda o juicio.
- Restringe la deteccion de telefonos a columnas con senal de telefono para no confundir codigos numericos largos.
- Reconoce periodos `YYYYMM` en columnas de periodo y los describe sin convertirlos en categorias.
- Describe columnas completamente faltantes como sin valores observados, conservando el tipo importado.

# contextoia 0.1.0

Primera version instalable desde GitHub.

- Exporta `resumen_de()` como interfaz publica principal en espanol.
- Incluye perfilado programatico prudente para datasets antes de dar contexto a una IA.
- Describe tipos importados, clasificacion programatica, faltantes, rangos, categorias, fechas y columnas lista.
- Evita exponer ejemplos reales de texto libre, identificadores o etiquetas de entidad cuando eso aumenta riesgos de divulgacion.
- Soporta contexto declarado o inferido de fuentes `gca`, `gca2` y metadata externa en JSON.
- Incluye tests migrados desde ObfuscatoR y CI con R CMD check en GitHub Actions.
