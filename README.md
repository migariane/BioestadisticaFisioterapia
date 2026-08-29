# Bioestadística para Fisioterapia

**Material docente interactivo — Grado en Fisioterapia, Universidad de Granada**

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Slides](https://img.shields.io/badge/Slides-RevealJS-39729E.svg)](https://migariane.github.io/BioestadisticaFisioterapia/)
[![R](https://img.shields.io/badge/R-BioEstatR-276DC3.svg)](https://migariane.github.io/BioEstatR)
[![Libro](https://img.shields.io/badge/Libro-Matem%C3%A1ticaEstad%C3%ADsticaMedicinaR-green.svg)](https://migariane.github.io/MatematicaEstadisticaMedicinaR)

Presentaciones interactivas en **Quarto RevealJS** para la asignatura de Bioestadística del Grado en Fisioterapia de la Universidad de Granada.

**GitHub:** https://github.com/migariane/BioestadisticaFisioterapia  
**Slides online:** https://migariane.github.io/BioestadisticaFisioterapia/

---

## Temario

| # | Tema | Contenido |
|:-:|------|-----------|
| **01** | Estadística Descriptiva (Parte I) | Tipos de datos, tablas de frecuencia, organización y resumen de datos, visualización |
| **01** | Estadística Descriptiva (Parte II) | Medidas de posición, dispersión, forma, diagramas de caja, aplicación práctica |
| **02** | Probabilidad y VA (Parte I) | Axiomas de Kolmogorov, Bayes, VPP/VPN, variables aleatorias discretas y continuas |
| **02** | Probabilidad y VA (Parte II) | Distribuciones Normal, Binomial, Poisson, t-Student, χ², F, TCL, aproximaciones |
| **03** | Estimación e Intervalos de Confianza | TCL, error estándar, IC para media y proporción, tamaño muestral |
| **04** | Contraste de Hipótesis (Parte I) | NHST, error tipo I/II, normalidad, tests para una media y una proporción |
| **04** | Contraste de Hipótesis (Parte II) | Tests para dos muestras, tests no paramétricos, McNemar, potencia, d de Cohen |
| **05** | Datos Cualitativos — χ² | Tablas de contingencia, OR, RR, DR, NNT, test exacto de Fisher, Mantel-Haenszel |
| **06** | Regresión y Correlación | Pearson y Spearman, regresión lineal simple, R², diagnóstico de residuos, cuarteto de Anscombe |

---

## Basado en el libro

Todo el contenido sigue la estructura y notación de:

> **[Matemáticas para la Estadística Médica con R](https://migariane.github.io/MatematicaEstadisticaMedicinaR)**  
> *Fundamentos matemáticos con aplicaciones clínicas y código reproducible*

---

## Estructura del proyecto

```
qmd_slides/
├── _quarto.yml              # Configuración del sitio web (Quarto)
├── index.qmd                # Página de inicio
├── madrid-theme.scss        # Tema visual personalizado RevealJS
├── T01_I_Descriptiva.qmd     # Tema I — Estadística Descriptiva (Parte I)
├── T01_II_Descriptiva.qmd    # Tema I — Estadística Descriptiva (Parte II)
├── T02_I_Probabilidad.qmd    # Tema II — Probabilidad (Parte I)
├── T02_II_Probabilidad.qmd   # Tema II — Probabilidad (Parte II)
├── T03_Estimacion_IC.qmd     # Tema III — Estimación e IC
├── T04_I_Test_Hipotesis.qmd  # Tema IV — Contraste de Hipótesis (Parte I)
├── T04_II_Test_Hipotesis.qmd # Tema IV — Contraste de Hipótesis (Parte II)
├── T05_ChiCuadrado.qmd       # Tema V — χ²
├── T06_RegresionCorr.qmd     # Tema VI — Regresión y Correlación
├── references.bib           # Bibliografía (BibTeX)
└── pdf-macros.tex           # Macros LaTeX para PDF
```

---

## Renderizado

```bash
# Renderizar el sitio completo (RevealJS)
cd qmd_slides
quarto render

# Renderizar un tema específico a PDF
quarto render T01_Descriptiva.qmd --to pdf
```

---

## Licencia

[MIT](LICENSE) © 2026 Miguel Angel Luque-Fernández  
Las diapositivas son de uso libre para fines docentes.

---

## Autor

**Miguel Angel Luque-Fernández**  
Profesor Titular, Dpto. de Estadística e Investigación Operativa  
Universidad de Granada  
[mluquefe@ugr.es](mailto:mluquefe@ugr.es) · [migariane.github.io](https://migariane.github.io)
