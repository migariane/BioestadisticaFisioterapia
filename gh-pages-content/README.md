# Bioestadística para Fisioterapia

**Material docente interactivo — Grado en Fisioterapia, Universidad de Granada**

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Quarto](https://img.shields.io/badge/Quarto-RevealJS-39729E.svg)](https://quarto.org)
[![R](https://img.shields.io/badge/R-BioEstatR-276DC3.svg)](https://migariane.github.io/BioEstatR)
[![Libro](https://img.shields.io/badge/Libro-Matem%C3%A1ticaEstad%C3%ADsticaMedicinaR-green.svg)](https://migariane.github.io/MatematicaEstadisticaMedicinaR)

Presentaciones interactivas en **Quarto RevealJS** que cubren el temario completo de Bioestadística para el Grado en Fisioterapia de la Universidad de Granada. Cada tema combina fundamentos matemáticos, aplicación clínica en fisioterapia, ejemplos numéricos paso a paso, y práctica guiada con **R + [BioEstatR](https://migariane.github.io/BioEstatR)**.

---

## Temario

| # | Tema | Contenido |
|:-:|------|-----------|
| **01** | Estadística Descriptiva | Tipos de datos, tablas de frecuencia, gráficos, medidas de posición y dispersión, diagramas de caja |
| **02** | Probabilidad y Variables Aleatorias | Axiomas de Kolmogorov, Bayes, VPP/VPN, distribuciones Normal, Binomial, Poisson, t-Student, χ², F |
| **03** | Estimación e Intervalos de Confianza | TCL, error estándar, IC para media y proporción, tamaño muestral |
| **04** | Contraste de Hipótesis | NHST, error tipo I/II, t-test, Wilcoxon, McNemar, potencia, d de Cohen |
| **05** | Datos Cualitativos — χ² | Tablas de contingencia, OR, RR, DR, NNT, test exacto de Fisher, Mantel-Haenszel |
| **06** | Regresión y Correlación | Pearson y Spearman, regresión lineal simple (MCO), R², diagnóstico de residuos, cuarteto de Anscombe |

---

## Estructura del proyecto

```
├── _quarto.yml              # Configuración del sitio web
├── index.qmd                # Página de inicio
├── madrid-theme.scss        # Tema visual personalizado
├── T01_Descriptiva.qmd      # Tema I
├── T02_Probabilidad.qmd     # Tema II
├── T03_Estimacion_IC.qmd    # Tema III
├── T04_Test_Hipotesis.qmd   # Tema IV
├── T05_ChiCuadrado.qmd      # Tema V
├── T06_RegresionCorr.qmd    # Tema VI
├── references.bib           # Bibliografía (BibTeX)
└── pdf-macros.tex           # Macros LaTeX para PDF
```

---

## Renderizado

```bash
# Renderizar el sitio completo (RevealJS)
quarto render

# Renderizar un tema específico a PDF
quarto render T01_Descriptiva.qmd --to pdf

# Previsualizar
quarto preview
```

---

## Licencia

[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/) © 2026 Miguel Angel Luque-Fernández

Las diapositivas son de uso libre para fines docentes. El código R incluido es reproducible con el paquete [BioEstatR](https://migariane.github.io/BioEstatR).

---

## Autor

**Miguel Angel Luque-Fernández**  
Profesor Titular, Dpto. de Estadística e Investigación Operativa  
Universidad de Granada  
[mluquefe@ugr.es](mailto:mluquefe@ugr.es) · [migariane.github.io](https://migariane.github.io)
