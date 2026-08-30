# Informe de Revisión de Sustancia — Diapositivas de Bioestadística para Fisioterapia

**Fecha:** 2026-07-10
**Archivos revisados:** T01–T06 QMD
**Lentes aplicados:** Corrección Matemática, Pertinencia Clínica, Precisión Conceptual, Completitud, Consistencia Transversal

---

## SCORECARD

| Gravedad | Cantidad |
|:---------|:--------:|
| CRITICAL | 0 |
| MAJOR | 3 |
| MINOR | 8 |

**Veredicto:** El material es de alta calidad sustantiva. No se detectan errores matemáticos que invaliden el contenido.

---

## MAJOR (3)

| ID | Tema | Descripción |
|:---|:-----|:------------|
| M1 | T01 | Inconsistencia entre fórmulas de asimetría/curtosis y código R: diapositivas muestran divisor poblacional `1/n`, pero el código R fallback usa el estimador ajustado de Fisher-Pearson. |
| M7 | T04 | Inconsistencia entre fórmula del test para una proporción: la diapositiva de fórmula presenta `Z = (p̂ - p₀) / √(p₀(1-p₀)/n)` sin corrección, pero el ejemplo usa corrección de continuidad de 0.5. |
| M8 | T05 | Esquema de corrección `c` no estándar para χ² en tablas 2×2: propone `c=0.5` para transversal, `c=1` o `c=2` para otros. La práctica estándar es Yates `c=0.5` o test exacto de Fisher. |

## MINOR (8)

| ID | Tema | Descripción |
|:---|:-----|:------------|
| M2 | T02 | Color de leyenda incorrecto en gráfico de VA continua: curva σ=25 dibujada en `seagreen` pero leyenda muestra `coral`. |
| M3 | T06 | Línea duplicada de β₀ y β₁ en resumen de regresión. |
| M4 | T05 | Comandos `\NNT` y `\DR` no definidos para MathJax. Usar `\text{NNT}`. |
| M5 | T01 | Notación "N → ∞" en población: las poblaciones clínicas son finitas. Cambiar a "N (inaccesible)". |
| M6 | T01 | Explicación redundante de "Por qué n−1" en diapositivas consecutivas. |
| M9 | T01/T02 | La transición entre ECDF empírica (T01) y f.d.a. teórica (T02) no se hace explícita. |
| M10 | T05 | "A continuación" ambiguo entre diapositivas en sección de notación. |

---

## FORTALEZAS DESTACADAS

1. **Corrección matemática:** Todas las fórmulas de distribuciones, tests, medidas de asociación y regresión son correctas.
2. **Interpretación del p-valor:** Fiel a la declaración ASA (2016). Se distingue correctamente entre significación estadística y relevancia clínica.
3. **Notación consistente:** x̄, μ, s, σ, n, H₀, H₁, α consistentes en los 6 temas.
4. **Enfoque bayesiano:** La inclusión del Teorema de Bayes con aplicación diagnóstica (Sens/Espec/VPP) es una fortaleza distintiva.
5. **Ejemplos clínicos pertinentes:** ROM, EVA-dolor, fuerza prensil, escalas Barthel/Norton/Zarit — todos relevantes para Fisioterapia.
