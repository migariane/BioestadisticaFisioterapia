# Bioestadística — Grado en Fisioterapia

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Website](https://img.shields.io/badge/-Slides-blue.svg)](https://migariane.github.io/BioestadisticaFisioterapia/)
[![Quarto](https://img.shields.io/badge/Quarto-1.10-39729E.svg)](https://quarto.org)
[![R](https://img.shields.io/badge/R-≥_4.0-276DC2.svg)](https://www.r-project.org)
[![UGR](https://img.shields.io/badge/UGR-Fisioterapia-C5281A.svg)](https://www.ugr.es)

Material docente interactivo de la asignatura de **Bioestadística** del Grado en Fisioterapia de la Universidad de Granada. Diapositivas desarrolladas con [Quarto](https://quarto.org) y [RevealJS](https://revealjs.com), con código R ejecutable integrado.

**Autor:** Miguel Angel Luque-Fernández, PhD · [migariane.github.io](https://migariane.github.io)  
**Afilación:** Departamento de Estadística e Investigación Operativa · Universidad de Granada  
**Contacto:** mluquefe@ugr.es

---

## Objetivos de aprendizaje

Al finalizar el curso, el estudiante será capaz de:

- Leer críticamente la literatura científica en fisioterapia
- Analizar datos clínicos con herramientas estadísticas apropiadas
- Interpretar correctamente p-valores, intervalos de confianza y tamaños del efecto
- Elegir la prueba estadística adecuada según el tipo de variable y diseño
- Reproducir análisis completos usando R y el paquete [BioEstatR](https://github.com/migariane/BioestadisticaR2)
- Comunicar resultados estadísticos de forma clara y rigurosa

---

## Temario

| # | Tema | Contenido |
|:-:|:-----|:----------|
| 1 | **Estadística Descriptiva** | Tipos de variables, escalas de medida, tablas de frecuencia, visualización de datos, medidas de tendencia central, dispersión, posición y forma |
| 2 | **Probabilidad** | Axiomas de Kolmogorov, probabilidad condicionada, teorema de Bayes, distribuciones discretas (Binomial, Poisson) y continuas (Normal, t-Student, χ², F) |
| 3 | **Estimación e Intervalos de Confianza** | Teorema Central del Límite, estimación puntual y por intervalos, IC para medias (σ conocida/desconocida) y proporciones, tamaño muestral |
| 4 | **Contraste de Hipótesis** | Hipótesis nula y alternativa, errores tipo I y II, potencia estadística, tests paramétricos (t-Student, Welch) y no paramétricos (Wilcoxon, Mann-Whitney) |
| 5 | **Datos Categóricos** | Tablas de contingencia, test χ² de Pearson, corrección de Yates, test exacto de Fisher, McNemar, medidas de asociación (OR, RR, DR, NNT) |
| 6 | **Regresión y Correlación** | Coeficientes de Pearson y Spearman, regresión lineal simple, estimación MCO, R², IC vs IP, supuestos, diagnóstico de residuos, cuarteto de Anscombe |

Cada tema incluye ejemplos clínicos reales (ROM, EVA, fuerza prensil, Barthel, IMC) y código R reproducible.

---

## Uso

### Requisitos

| Herramienta | Versión | Notas |
|:------------|:--------|:------|
| [Quarto](https://quarto.org) | ≥ 1.10 | Motor de renderizado |
| [R](https://www.r-project.org) | ≥ 4.0 | Entorno estadístico |
| [BioEstatR](https://github.com/migariane/BioestadisticaR2) | — | Paquete R docente (UGR) |
| `corrplot`, `MASS`, `e1071` | — | Paquetes auxiliares |

### Renderizado

```bash
# Renderizar todos los temas (formato RevealJS)
quarto render

# Renderizar un tema específico
quarto render T01_I_Descriptiva.qmd

# Previsualización con recarga automática
quarto preview
```

### Datasets incluidos

| Archivo | Descripción | Observaciones |
|:--------|:------------|:-------------|
| `imc_graso.csv` | IMC y % de masa grasa | 12 adolescentes, 15–19 años |
| `imc_graso_higado.csv` | Extensión con función hepática | Variables clínicas adicionales |
| `flexion_edad.csv` | Flexión lumbar vs edad | 10 pacientes, 25–70 años |

---

## Estructura del proyecto

```
BioestadisticaFisioterapia/
├── index.qmd                   Página de inicio del curso
├── _quarto.yml                 Configuración del proyecto Quarto
├── madrid-theme.scss           Tema visual personalizado
├── references.bib              Bibliografía centralizada (BibTeX)
├── pdf-macros.tex              Macros LaTeX / MathJax
├── logo.png                    Logo institucional UGR
├── data/                       Datasets de ejemplo
├── T01_I_Descriptiva.qmd       Tema 1 — Parte I
├── T01_II_Descriptiva.qmd      Tema 1 — Parte II
├── T02_I_Probabilidad.qmd      Tema 2 — Parte I
├── T02_II_Probabilidad.qmd     Tema 2 — Parte II
├── T03_Estimacion_IC.qmd       Tema 3
├── T04_I_Test_Hipotesis.qmd    Tema 4 — Parte I
├── T04_II_Test_Hipotesis.qmd   Tema 4 — Parte II
├── T05_ChiCuadrado.qmd         Tema 5
└── T06_RegresionCorr.qmd       Tema 6
```

---

## Características técnicas

- **RevealJS** con transiciones fluidas y navegación lineal
- **Tema visual personalizado** (`madrid-theme.scss`) con paleta institucional UGR
- **Diagramas Mermaid** integrados para árboles de decisión
- **Gráficos SVG** vectoriales (alta nitidez en cualquier resolución)
- **MathJax** para renderizado de ecuaciones LaTeX en tiempo real
- **Code folding** — el código R se muestra bajo demanda del estudiante
- **Búsqueda full-text** en todas las diapositivas
- **Responsive** — adaptable a proyector, portátil y tableta

---

## Licencia

Este material está protegido bajo licencia [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/).

```
© 2026 Miguel Angel Luque-Fernández
```

Puedes usar, adaptar y redistribuir libremente siempre que se cite la fuente original.

---

## Recursos complementarios

| Recurso | Descripción |
|:--------|:------------|
| [BioEstatR](https://github.com/migariane/BioestadisticaR2) | Paquete R docente con funciones simplificadas |
| [Matemáticas y Estadística con R](https://migariane.github.io/MatematicaEstadisticaMedicinaR/) | Libro de referencia del curso |
| [GitHub Pages](https://migariane.github.io/BioestadisticaFisioterapia/) | Versión online de las diapositivas |

---

## Citación

Si utilizas este material en tu docencia o investigación, por favor cítalo como:

> Luque-Fernández, M. A. (2026). *Bioestadística para Fisioterapia — Material docente interactivo*. Universidad de Granada. https://migariane.github.io/BioestadisticaFisioterapia/

```bibtex
@misc{luque2026bioestadistica,
  author    = {Luque-Fernández, Miguel Angel},
  title     = {Bioestadística para Fisioterapia — Material docente interactivo},
  year      = {2026},
  publisher = {Universidad de Granada},
  url       = {https://migariane.github.io/BioestadisticaFisioterapia/}
}
```

---

 ‍ Dpto. de Estadística e Investigación Operativa · [Universidad de Granada](https://www.ugr.es) · Curso 2025–2026
