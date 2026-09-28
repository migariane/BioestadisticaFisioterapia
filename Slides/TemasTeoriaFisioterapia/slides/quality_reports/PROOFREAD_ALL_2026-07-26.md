# Proofread Report — Todos los Temas

**Date:** 2026-07-26
**Scope:** 8 source QMDs + 4 split QMDs = 12 files
**Legend:** 🔴 Critical · 🟠 High · 🟡 Medium · 🔵 Low · ✅ Verified

---

## 🔴 Critical — Data/Calculation Errors

### C1. T01_Descriptiva: RIQ hardcoded incorrecto (línea 1182)

Texto dice `RIQ=4.5°` pero `IQR(c(125,132,128,135,130,126,131,129))` devuelve `3.75` en R. El chunk imprime el valor real → discrepancia visible.

### C2. T01_Descriptiva: Mediana ECDF mal anotada (línea 1139)

`text(138, 0.52, "Me = 124")` → la mediana real de `c(120,125,118,130,122,128,115,135,124,129)` es `124.5`.

### C3. T04_Test_Hipotesis: Yates correction sin `abs()` (línea 568)

```r
z<-(x - n*p0 - 0.5)/sqrt(n*p0*(1-p0))  # falta abs()
```

Cuando `x < n*p0` (48 < 63.14), el numerador debe ser `|x - n*p0| - 0.5`. El código da `z=-2.229` pero el texto dice `z=-2.09`.

### C4. T04_Test_Hipotesis: McNemar corrección inconsistente (línea 760)

Código usa `-0.5` pero la corrección estándar de McNemar-Yates es `-1.0`. El texto hardcodea `P≈0.027` (con `-1.0`) pero el código produciría `P≈0.0223` (con `-0.5`).

### C5. T05_ChiCuadrado: McNemar idéntico problema (líneas 752-767)

Fórmula texto dice corrección `0.5` pero el cálculo hardcodeado `z=2.21, P≈0.027` se hizo con `1.0`. R code usa `0.5` y daría `z=2.285, P=0.0223`.

### C6. T05_ChiCuadrado: Frecuencias esperadas manuales imprecisas (líneas 305-310)

E₂₂ = 25.28 (manual) vs 25.29 (R); E₄₂ = 33.72 vs 33.71. Chunk imprime correctas → discrepancia.

---

## 🟠 High — Estructura / Balance

### H1. T02_I_Probabilidad: Triple `---` (líneas 953-955)

Tres separadores consecutivos = 2 slides vacíos.

### H2. T05_ChiCuadrado: Fenced divs desbalanceados

56 opens, 57 closes. Una `:::` de cierre sobra.

### H3. T05_ChiCuadrado: `.exercise` cruza slide boundary (línea 1161)

`::: {.exercise}` abre en un slide, `## Ejercicio clínico` crea nuevo slide pero el div no se cerró antes.

### H4. T05_ChiCuadrado: Doble `---` (líneas 1196-1198)

Slide vacío.

### H5. T05_ChiCuadrado: Inconsistencia fórmula 2×2

Línea 181 aplica fórmula general a tabla 2×2, pero línea 500 dice "NO es aplicable la fórmula general". Pedagógicamente contradictorio.

---

## 🟡 Medium — Consistencia / Typos

### M1. T01: Tabla colesterol vs histograma (líneas 465-473)

La tabla tiene 5 intervalos (ancho 27), pero el histograma R usa 10 intervalos (ancho 13.5). Distinto binning, distintos datos.

### M2. T01: Slides duplicados — media geométrica/armónica

Líneas 697-719 y 721-758 repiten las mismas fórmulas. Segundo slide añade la tabla y `H ≤ G ≤ x̄`.

### M3. T01: "nemotécnica" → "mnemotécnica" (línea 505)

### M4. T04: Chunk R huérfano (líneas 495-499)

Bare `{r}` chunk con `t.test()` al final del slide de P-valor, sin introducción ni contexto.

### M5. T04: Typos varios

- Línea 204: "nemotécnica" → "mnemotécnica"
- Línea 301: "Inferencia Estadistica" → "Estadística"
- Línea 698: "caracteristicas" → "características"

### M6. T04: Near-duplicate ASA declaration (líneas 1411 y 1426)

Misma recomendación de 4 elementos repetida en slides consecutivos.

### M7. T05: Acentos en strings R (~6 ocurrencias)

`"Distribucion"`, `"Region de rechazo"`, `"Valor critico"`, `"clinica"`, `"Mejoria"` → faltan tildes.

### M8. T05: "simpson" → "Simpson" (líneas 990, 993, 1020)

### M9. T03: `**Interpretación clinica:**` → `**Interpretación clínica:**`

---

## 🔵 Low — Citas / Referencias

### L1. Citation keys inconsistentes

| En QMD | Debería ser | Archivos |
|--------|-------------|----------|
| `@Femia2026` | `@bioestatr2026` | T03_Estimacion_IC, T03_clean |
| `@LuqueFernandez2026` | `@luque2026` | T04_Test_Hipotesis, T04_I |
| `@LuqueFernandez2026a` | *no existe en bib* | T02_II, T02_Probabilidad |
| `@LuqueFernandez2026b` | *no existe en bib* | T06 |

### L2. Case mismatch (no rompen, pero inconsistentes)

`Altman1990`/`altman1990`, `Kolmogorov1933`/`kolmogorov1933`, `Stevens1946`/`stevens1946`

---

## ✅ Ya Corregidos (T06) — No Action Needed

- Datos `imc`/`graso` alineados con modelo
- Doble `---` eliminado
- Slides Covarianza/ANOVA unificados
- β₀ duplicado eliminado
- r, R², F, P actualizados a valores del nuevo dataset
- Colores de bandas unificados (steelblue/seagreen)
- Spearman 72–101 (ya no 72101)
- Akaike reference formateado
- Enlaces de descarga de datos añadidos
- Encabezado "Interpretación" con tilde

---

## Resumen por Tema

| Tema | 🔴 | 🟠 | 🟡 | 🔵 | Estado |
|------|:--:|:--:|:--:|:--:|--------|
| T01_Descriptiva | 2 | 0 | 3 | 0 | ⚠️ |
| T02_I_Probabilidad | 0 | 1 | 0 | 0 | ⚠️ |
| T02_II_Probabilidad | 0 | 0 | 0 | 0 | ⚠️ Quarto bug |
| T03_Estimacion_IC | 0 | 0 | 1 | 1 | ⚠️ |
| T04_Test_Hipotesis | 2 | 0 | 3 | 1 | ⚠️ |
| T05_ChiCuadrado | 2 | 5 | 2 | 0 | ⚠️ |
| T06_RegresionCorr | 0 | 0 | 0 | 0 | ✅ limpio |
