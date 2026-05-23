# contextoia 0.1.0

Primera version instalable desde GitHub.

- Exporta `resumen_de()` como interfaz publica principal en espanol.
- Incluye perfilado programatico prudente para datasets antes de dar contexto a una IA.
- Describe tipos importados, clasificacion programatica, faltantes, rangos, categorias, fechas y columnas lista.
- Evita exponer ejemplos reales de texto libre, identificadores o etiquetas de entidad cuando eso aumenta riesgos de divulgacion.
- Soporta contexto declarado o inferido de fuentes `gca`, `gca2` y metadata externa en JSON.
- Incluye tests migrados desde ObfuscatoR y CI con R CMD check en GitHub Actions.
