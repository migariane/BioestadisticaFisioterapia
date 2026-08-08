# Bioestadística para Fisioterapia

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-blue.svg)](https://creativecommons.org/licenses/by/4.0/)
[![Site](https://img.shields.io/badge/Site-GitHub%20Pages-blue.svg)](https://migariane.github.io/BioestadisticaFisioterapia/)

Material docente de la asignatura de Bioestadística del **Grado en Fisioterapia** de la Universidad de Granada.

**Autor:** Miguel Angel Luque-Fernández · [migariane.github.io](https://migariane.github.io)  
**Departamento:** Estadística e Investigación Operativa · Universidad de Granada  
**Contacto:** mluquefe@ugr.es

---

## Temario

| Tema | Contenido |
|:-----|:----------|
| **T1** | Estadística Descriptiva — tipos de variables, escalas, visualización |
| **T2** | Probabilidad — axiomas, Bayes, distribuciones (Binomial, Normal) |
| **T3** | Estimación e Intervalos de Confianza — TCL, IC para medias y proporciones |
| **T4** | Contraste de Hipótesis — errores α/β, tests paramétricos y no paramétricos |
| **T5** | Datos Categóricos — χ², tablas de contingencia, OR, RR, DR, NNT |
| **T6** | Regresión y Correlación — regresión lineal simple, R², supuestos, predicción |

Cada tema incluye ejemplos clínicos contextualizados en fisioterapia (ROM, EVA, fuerza prensil, Barthel) y código R ejecutable.

---

## Uso

### Requisitos

- [Quarto](https://quarto.org) ≥ 1.10
- R ≥ 4.0 con paquetes: `BioEstatR`, `corrplot`, `MASS`, `e1071`

### Renderizado

```bash
quarto render          # Renderiza todos los temas
quarto render T01_I_Descriptiva.qmd  # Renderiza un tema específico
```

### Datos

Los datasets de ejemplo están en `data/`:
- `imc_graso.csv` — IMC y % graso en 12 adolescentes
- `imc_graso_higado.csv` — Extensión con función hepática
- `flexion_edad.csv` — Flexión lumbar vs edad en 10 pacientes

---

## Estructura

```
.
├── index.qmd                  # Página de inicio
├── _quarto.yml               # Configuración del proyecto
├── madrid-theme.scss         # Tema personalizado RevealJS
├── references.bib            # Bibliografía
├── pdf-macros.tex            # Macros LaTeX/MathJax
├── logo.png                  # Logo UGR
├── data/                     # Datasets de ejemplo
└── T0*_*.qmd                 # Diapositivas (10 archivos)
```

---

## Licencia

Este material está bajo licencia [Creative Commons Attribution 4.0 International](https://creativecommons.org/licenses/by/4.0/) (CC BY 4.0).

---

**URL del curso:** https://migariane.github.io/BioestadisticaFisioterapia/
