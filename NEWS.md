# contextoia 0.1.9

Version de normalizacion y sensibilidad para datos de contacto.

- Normaliza nombres de columnas con tildes, espacios, guiones y mayusculas para aplicar las mismas reglas semanticas.
- Marca correos, e-mails, mails, contactos, telefonos y celulares como sensibles cuando se detectan por nombre.
- Mantiene la censura de valores reales de contacto.

# contextoia 0.1.8

Version de clasificacion explicita para domicilios.

- Marca columnas de domicilio, direccion, calle, puerta, apartamento o barrio como cuasi-identificadores cuando se detectan por nombre.
- Mantiene la censura de valores reales para texto domiciliario.

# contextoia 0.1.7

Version de ajuste semantico para periodos y denominaciones.

- Redacta la senal de periodos como periodo observado asociado a registros, evitando sugerir automaticamente una serie temporal.
- Trata `DENOMINACION` y nombres equivalentes como etiquetas de entidad aunque el texto sea extenso, sin listar valores reales.

# contextoia 0.1.6

Version de granularidad por persona, documento y solicitud.

- Reconoce identificadores personales como `PERS_ID` y `PERS_IDENTIFICADOR`.
- Reconoce el compuesto `TD` + `PAIS` + `DOCUMENTO` como documento personal sin convertir necesariamente `TD` y `PAIS` en identificadores individuales.
- Evalua claves candidatas como empresa + aportacion + persona y solicitud + persona.
- Trata denominaciones y razones sociales como etiquetas de entidad para evitar listar nombres reales de empresas o personas.

# contextoia 0.1.5

Version de granularidad institucional compuesta.

- Agrupa identificadores equivalentes de empresa y contribuyente cuando hay representaciones internas y externas de la misma entidad.
- Evalua claves compuestas candidatas como empresa + contribuyente + aportacion + periodo.
- Informa senales temporales cuando un periodo `YYYYMM` parece explicar multiples filas por entidad/aportacion.
- Separa identificadores casi unicos, como titulos o documentos, de la granularidad analitica principal.

# contextoia 0.1.4

Version de analisis de granularidad por identificadores.

- Agrega una seccion de granularidad observada cuando el dataset contiene identificadores detectados.
- Informa cuantos identificadores distintos hay, cuantas filas se observan por identificador y si hay multiples filas por identificador.
- Sugiere variables candidatas para refinar la granularidad, priorizando categorias, periodos y codigos normativos sin incluir montos ni texto libre.

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
