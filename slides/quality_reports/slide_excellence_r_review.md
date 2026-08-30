# Revisión de Código R — Bioestadística para Fisioterapia

**Archivos revisados:** T01_Descriptiva.qmd, T02_Probabilidad.qmd, T03_Estimacion_IC.qmd, T04_Test_Hipotesis.qmd, T05_ChiCuadrado.qmd, T06_RegresionCorr.qmd (178 chunks R en total)
**Método:** Revisión estática, sin ejecución.

---

## SCORECARD

| Categoría | Cantidad |
|:----------|:--------:|
| **CRITICAL** | 0 |
| **MAJOR** | 1 |
| **MINOR** | 4 |

**Veredicto:** PASS con corrección requerida. El código está en buen estado general.

---

## HALLAZGOS

### MAJOR

**M1. T06_RegresionCorr.qmd — R² ajustado calculado con tamaño muestral equivocado**
- **Ubicación:** Chunk en la sección "$R^2$ Ajustado — Penalización por Número de Predictores"
- **Código:**
  ```r
  n <- 30; k <- 1
  R2 <- summary(modelo)$r.squared
  R2_adj <- 1 - (1-R2)*(n-1)/(n-k-1)
  ```
- **Problema:** La variable `modelo` es `lm(graso ~ imc)`, ajustada sobre 12 observaciones. Pero la fórmula manual de R² ajustado usa `n = 30`. El resultado (~0.659) sobrestima el valor correcto.
- **Impacto docente:** Se ilustra la penalización con un n que no corresponde al modelo, contradiciendo la lección.
- **Solución:** Usar `n <- nobs(modelo)` o directamente `summary(modelo)$adj.r.squared`.

### MINOR

**m1. T01_Descriptiva.qmd — rnorm() sin set.seed() en guía visual**
- Chunk "Guía Visual: ¿Qué Gráfico Uso?": `rnorm(500,150,20)` y `rnorm(50,150,10)` sin `set.seed()`.
- Gráficos no reproducibles entre renderizados.

**m2. T06_RegresionCorr.qmd — corrplot::corrplot() sin verificación de disponibilidad**
- Chunk "Matriz de Correlaciones": `corrplot::corrplot(R, ...)` sin `requireNamespace("corrplot")`.

**m3. T06_RegresionCorr.qmd — library(BioEstatR) sin guardia**
- Chunk "R Base vs BioEstatR": `library(BioEstatR)` sin verificación previa. A diferencia de T01 (que usa `requireNamespace` con fallback), aquí fallará si BioEstatR no está instalado.

**m4. T06_RegresionCorr.qmd — rnorm() sin set.seed() en chunk de interpretación de pendiente**
- Chunk "Interpretación de la Pendiente": tres llamadas a `rnorm(20, ...)` sin `set.seed()`.

---

## OBSERVACIONES (no bloqueantes)

- **T01 tiene un chunk setup ejemplar** con `requireNamespace` y funciones fallback para `skewness`/`kurtosis`. T02–T06 carecen de setup equivalente.
- **Uso consistente de set.seed():** ~98% de los chunks con aleatoriedad lo usan correctamente.
- **BioEstatR con eval: false:** T03, T04 y T05 marcan correctamente los chunks de BioEstatR como `eval: false`, evitando fallos de renderizado.
- **Supresión global de warnings/messages:** Todos los archivos usan `execute: warning: false, message: false` en el YAML.
- **Sin rutas hardcodeadas, sin código de depuración abandonado.**

---

## RESUMEN POR ARCHIVO

| Archivo | Chunks | CRITICAL | MAJOR | MINOR |
|:--------|:------:|:--------:|:-----:|:-----:|
| T01_Descriptiva.qmd | 33 | 0 | 0 | 1 |
| T02_Probabilidad.qmd | 47 | 0 | 0 | 0 |
| T03_Estimacion_IC.qmd | 17 | 0 | 0 | 0 |
| T04_Test_Hipotesis.qmd | 34 | 0 | 0 | 0 |
| T05_ChiCuadrado.qmd | 16 | 0 | 0 | 0 |
| T06_RegresionCorr.qmd | 31 | 0 | 1 | 3 |
| **TOTAL** | **178** | **0** | **1** | **4** |

---

## PRIORIDAD DE CORRECCIÓN

1. **Inmediata:** Corregir M1 en T06 — sustituir `n <- 30` por `n <- nobs(modelo)`.
2. **Recomendada:** Añadir `set.seed()` en los 2 chunks señalados (m1, m4).
3. **Recomendada:** Añadir guardias `requireNamespace` para `corrplot` y `BioEstatR` en T06.
