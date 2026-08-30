# Informe de Revisión de Lenguaje — Diapositivas de Bioestadística para Fisioterapia

**Fecha:** 2026-07-10
**Archivos revisados:** T01–T06 QMD
**Idioma:** Español (Castellano)
**Nivel:** Grado en Fisioterapia, Universidad de Granada

---

## SCORECARD

| Categoría | CRITICAL | MAJOR | MINOR |
|:----------|:--------:|:-----:|:-----:|
| Ortografía / Tildes | 2 | 3 | 5 |
| Concordancia (género/número) | 0 | 1 | 2 |
| Puntuación | 0 | 2 | 6 |
| Mayúsculas / Capitalización | 1 | 5 | 8 |
| Consistencia terminológica | 0 | 3 | 4 |
| Tono académico | 0 | 0 | 1 |
| Formato de citas | 0 | 0 | 0 |
| Formato numérico | 0 | 1 | 0 |
| Siglas y abreviaturas | 0 | 1 | 2 |
| Anglicismos | 0 | 1 | 1 |
| **TOTAL** | **3** | **17** | **29** |

---

## 1. ORTOGRAFÍA / TILDES (2 CRITICAL, 3 MAJOR, 5 MINOR)

### CRITICAL

- **T01 — Líneas 100, 173, 174: "estadío" (con tilde) debe ser "estadio" (sin tilde).** La palabra con tilde no existe en español actual. Aparece tres veces.
- **T04 — Línea 1166: "concentracion" debe ser "concentración".** Falta la tilde.

### MAJOR

- **T03 — Línea 131: "Desviacion tipica" debe ser "Desviación típica".** Sin tildes.
- **T03 — Líneas 199 y 205: "correccion" debe ser "corrección".** En etiquetas de histogramas de simulación.
- **T01 — Línea 1199: "DE" (Desviación Estándar) en comentario R en lugar de "DT".** El curso usa "DT".

### MINOR

- T04 — L301: "Inferencia Estadistica" → "Inferencia Estadística"
- T02: Títulos de sección consistentes con norma española

---

## 2. MAYÚSCULAS / CAPITALIZACIÓN (1 CRITICAL, 5 MAJOR, 8 MINOR)

### CRITICAL

**Desviación sistemática en los 6 temas: Títulos de sección con mayúsculas al estilo inglés.** En español, los títulos llevan mayúscula solo en la primera palabra y nombres propios. ~25 títulos afectados:

- "Organización y Resumen de Datos" → "Organización y resumen de datos"
- "Visualización de Datos" → "Visualización de datos"
- "Medidas de Posición" → "Medidas de posición"
- "Medidas de Dispersión y Forma" → "Medidas de dispersión y forma"
- (y ~20 títulos más en T02–T06)

---

## 3. CONSISTENCIA TERMINOLÓGICA (0 CRITICAL, 3 MAJOR, 4 MINOR)

### MAJOR

- **Transversal — "Desviación Típica" (DT) vs "Desviación Estándar" (DE):** En T01-T06 se usa "DT" en texto pero T01 línea 1199 usa "DE". Unificar.
- **Transversal — "test" vs "contraste" vs "prueba":** Predomina "test". Recomendación: preferir "contraste" en texto, aceptar "test" en nombres de funciones R.

---

## 4. ANGLICISMOS (0 CRITICAL, 1 MAJOR, 1 MINOR)

### MAJOR

- **T04 — L510: "p-hacking".** Añadir breve aclaración entre paréntesis para estudiantes de grado.

---

## RESUMEN DE ACCIONES

### Correcciones obligatorias (CRITICAL):
1. "estadío" → "estadio" en T01 (3 apariciones)
2. "concentracion" → "concentración" en T04
3. Normalizar mayúsculas en ~25 títulos de sección según norma española

### Correcciones recomendadas (MAJOR):
1. Corregir tildes en T03 ("típica", "corrección")
2. Unificar "DT" vs "DE" en comentarios de código
3. Armonizar "test"/"contraste"
4. Separadores de miles en tablas T01
5. Nota para "p-hacking" en T04

**Veredicto:** 87/100 — Nivel general alto, errores fácilmente subsanables.
