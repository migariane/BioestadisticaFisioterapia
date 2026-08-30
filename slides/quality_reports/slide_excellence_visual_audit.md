# Informe de Auditoría Visual — Diapositivas de Bioestadística para Fisioterapia

**Fecha:** 2026-07-10 | **Tema:** madrid-theme.scss
**Archivos auditados:** T01–T06 QMD

---

## SCORECARD

| Archivo | CRITICAL | MAJOR | MINOR |
|:--------|:--------:|:-----:|:-----:|
| T01_Descriptiva.qmd | **3** | **4** | 6 |
| T02_Probabilidad.qmd | 0 | **1** | 4 |
| T03_Estimacion_IC.qmd | 0 | **1** | 3 |
| T04_Test_Hipotesis.qmd | 0 | **1** | 3 |
| T05_ChiCuadrado.qmd | 0 | 0 | 2 |
| T06_RegresionCorr.qmd | 0 | 0 | 2 |
| **TOTAL** | **3** | **7** | **20** |

**Veredicto:** BLOQUEADO — 3 CRITICALs en T01 requieren corrección antes del despliegue.

---

## CRITICAL (3) — Todos en T01

### CRITICAL-01: Diapositiva vacía "Tablas de Frecuencias — Variables Nominales" (línea 343)

El contenido real (tabla de grupo sanguíneo, definición de nᵢ, fᵢ, Nᵢ) aparece DENTRO de la diapositiva "Comprueba tu Comprensión" (líneas 353-376). **Solución:** Trasladar líneas 353-376 a su diapositiva correcta.

### CRITICAL-02: Diapositiva vacía "Mediana desde Tabla Agrupada — Interpolación" (línea 884)

El contenido real (tabla de flexión de rodilla con 5 intervalos, fórmula de mediana por interpolación) aparece DENTRO de "Ejercicio Rápido — Cuartiles" (líneas 891-901). **Solución:** Trasladar líneas 891-901 a su diapositiva correcta.

### CRITICAL-03: Fórmula de Media Ponderada extraviada (líneas 679-693)

La diapositiva "Media Ponderada" está vacía. Su contenido (fórmula y ejemplo) aparece DENTRO de "Respiro Visual — Midiendo en Fisioterapia". **Solución:** Mover la fórmula a su diapositiva correcta.

---

## MAJOR (7)

| ID | Archivo | Descripción |
|:---|:--------|:------------|
| M1 | T01 | "Contenido Informativo y Categorización" demasiado densa (~51 líneas). Dividir. |
| M2 | T01 | "Mediana vs Media y Simetría" sobrecargada (~72 líneas, 3 histogramas). Dividir o reducir fig-height. |
| M3 | T01 | Redundancia en "Media Geométrica y Media Armónica" (dos diapositivas con solapamiento). |
| M4 | T01 | "Respiro Visual" con exceso de contenido (imagen + fórmula + tabla + texto). |
| M5 | T02 | Figura de probabilidad total con `fig-height: 9` (excesivo). Reducir a 5.5. |
| M6 | T03 | Derivaciones matemáticas del sesgo de n-1 muy densas en 2 diapositivas. |
| M7 | T04 | Árbol de decisión clínico con texto potencialmente ilegible (`cex=0.55`). |

---

## MINOR (20)

### T01 (6): YAML incompleto (falta slide-number, code-fold, lang); múltiples fig-height elevados (6-6.5); pregunta suelta sin clase CSS; diapositiva "Símbolo Sumatorio" correcta pero breve.
### T02 (4): fig-width inconsistente; texto de transición sin clase `.connection`; pregunta suelta sin CSS; carácter Unicode en email.
### T03 (3): Anidamiento `.callout-important > .connection` inusual; texto en cursiva suelto sin callout.
### T04 (3): Múltiples líneas en blanco entre diapositivas; preguntas sueltas sin formato.
### T05 (2): Doble línea en blanco inconsistente; falta puente `.connection` con tema anterior.
### T06 (2): `summary(modelo)` produce salida larga (~18 líneas); línea duplicada de coeficientes β₀, β₁.

---

## RESUMEN DE ACCIONES

**Antes del despliegue (CRITICAL):**
1. T01 L343: Llenar "Tablas de Frecuencias — Variables Nominales" con líneas 353-376
2. T01 L884: Llenar "Mediana desde Tabla Agrupada" con líneas 891-901
3. T01 L679-693: Separar "Media Ponderada" de "Respiro Visual"

**Recomendado (MAJOR):** Partir diapositivas densas T01, reducir fig-height en T02, verificar legibilidad árbol T04.

**Sugerido (MINOR):** Completar YAML T01, formatear preguntas sueltas con `.callout-tip`, eliminar línea duplicada T06.
