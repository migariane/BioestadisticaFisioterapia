# UX Evaluation — Bioestadística Fisioterapia Slides

**Date:** 2026-07-26
**Evaluator:** Claude Code
**Methodology:** Slide-by-slide content harmony analysis + visual consistency audit + density metrics

---

## Overall Score: 78/100

| Dimension | Score | Notes |
|-----------|:-----:|-------|
| Visual consistency | 85/100 | Template uniforme; T01 `code-copy` y `fig-height` divergen |
| Slide density balance | 65/100 | ~8 slides sobrecargadas (>50 líneas); ~6 slides casi vacías |
| Content harmony | 80/100 | Buena pedagogía; ejercicios sin respuesta y preguntas huérfanas |
| Narrative flow | 75/100 | Puentes `.connection` escasos en T01/T04; transiciones internas buenas |
| Clinical embedding | 95/100 | Excelente — ROM, EVA, fuerza prensil, Barthel omnipresentes |

---

## 🔴 Críticos — Impactan la experiencia de aprendizaje

### 1. Árboles de decisión en R base ilegibles (T04)

**Líneas 1256-1379 y 1463-1541.** Dos diagramas dibujados con `plot()` de R base como slides completos. La fuente es minúscula, los colores múltiples, y el código ocupa >120 líneas cada uno. **En resolución de proyector son ilegibles.**

**Recomendación:** Reemplazar por imágenes PNG/SVG estáticas o diagramas Mermaid/Graphviz.

### 2. Ejercicios sin respuesta (T01, T06)

- **T01 L906:** "Calcula Q1, Q2, Q3 para: 3,5,7,8,12,15,18,21" — sin solución ni feedback.
- **T06 L242:** Pregunta sobre covarianza negativa — sin respuesta.
- **T06 L360:** Pregunta sobre interpretación de pendiente — sin respuesta.

El estudiante se queda sin saber si acertó.

### 3. Preguntas huérfanas flotando entre slides (T02, T04)

- **T02 L596, L599:** Dos preguntas sueltas entre el ejemplo de Bayes y la perspectiva histórica, sin `## heading` ni contexto visual.
- **T02 L1241:** Pregunta suelta sobre Z-scores entre secciones.
- **T04 L431, L493:** Preguntas sueltas sobre error tipo II y P-valor.

**Recomendación:** Embeber como `.callout-tip` en la slide anterior o crear slide propia con respuesta.

---

## 🟠 Altos — Degradan la fluidez

### 4. Slides masivas que deberían ser 2-3 slides (T01, T02, T04)

| Archivo | Líneas | Tema | Tamaño |
|---------|--------|------|:------:|
| T01 | 1052-1110 | Asimetría + curtosis | 58 líneas |
| T02 | 432-508 | Diagrama probabilidad total | 76 líneas |
| T04 | 377-431 | Errores tipo I/II | 54 líneas |
| T04 | 95-135 | Mapa conceptual (4 tests + Welch + bilateral + bootstrap) | 40 líneas |

Demasiado contenido en una slide = estudiante se pierde.

### 5. Diapositivas redundantes (T01, T06)

- **T01 L697-720 y L722-759:** Media geométrica/armónica explicada dos veces seguidas con fórmulas casi idénticas. Eliminar la primera, conservar la segunda.
- **T06 L814-843 y L845-889:** Diagnóstico de residuos en 4 paneles y luego en 6 paneles. Misma información, distinto formato. Elegir uno.
- **T02 L935-970 y L973-1004:** `lower.tail` explicado en dos slides consecutivas casi idénticas.

### 6. "Cheatsheets" de código como slides (T05, T06)

Las secciones `# Código del Tema V/VI — Resumen Organizado` son bloques `eval: false` sin narrativa. No son material didáctico — son un apéndice de referencia. Deberían ser un documento aparte o una página web, no slides de clase.

---

## 🟡 Medios — Afectan la consistencia

### 7. Puentes `.connection` entre temas escasos

| Tema | Bridges | Estado |
|------|:-------:|--------|
| T01 | 0 | ❌ Sin puente a T02 |
| T02 | 7 | ✅ Excelente |
| T03 | 2 | ⚠️ Suficiente |
| T04 | 0 | ❌ Sin puente a T05 |
| T05 | 1 | ⚠️ Escaso |
| T06 | 1 | ⚠️ Escaso |

El CLAUDE.md pide `.connection` para cada tema. T01 y T04 no tienen ninguno.

### 8. T01 sin slide de resumen

T04/T05/T06 usan `# Resumen {.center}` correctamente. T02/T03 usan `## Resumen` (nivel incorrecto). **T01 no tiene resumen en absoluto** — termina en referencias.

### 9. `# Section {.center}` con contenido pegado (T01 L457-477)

La sección `# Visualización de Datos {.center}` va seguida inmediatamente por una tabla de colesterol y un histograma en la misma slide. Los section dividers deben ser slides independientes, no llevar contenido.

### 10. Word cloud decorativa sin valor pedagógico (T01 L582-609)

La nube de palabras con "Media, Mediana, Moda..." no enseña nada. Es decoración. Si no se justifica estadísticamente, eliminar.

---

## 🔵 Menores — Pulido final

### 11. Consistencia visual YAML

| Setting | T01 | T02 | T03-T06 | Recomendado |
|---------|:---:|:---:|:-------:|:-----------:|
| `fig-width` | 9 | **8** | 9 | 9 |
| `fig-height` | **5.5** | 5.2 | 5.2 | 5.2 |
| `code-copy` | ❌ | ✅ | ✅ | ✅ |

### 12. T04 slide "Marco Conceptual" con logo redundante (L89-93)

Es la única slide no inicial que incluye el logo de la UGR.

### 13. R output sin formato (T01 L1154-1179)

~25 líneas de `cat()` produciendo volcado de consola. Usar `#| output: false` o formatear con tablas.

---

## ✅ Fortalezas — Lo que funciona muy bien

1. **Embedding clínico impecable**: ROM, EVA, fuerza prensil, Barthel, colesterol, glucemia — cada concepto tiene ejemplo de fisioterapia.
2. **Slide de "regresión como marco unificador" (T06 L1168-1205)**: La mejor slide del curso. Conecta los 6 temas en una tabla. Ejemplar.
3. **Cuarteto de Anscombe (T06 L890-913)**: Excelente uso de visualización para enseñar escepticismo estadístico.
4. **Analogía judicial (T04 L247-271)**: Brillante para explicar H0/H1.
5. **Simulación n-1 (T03 L190-220)**: La mejor demostración de por qué dividir por n-1. Los estudiantes lo entienden viendo los histogramas.
6. **Visual guide para elegir gráfico (T01 L479-505)**: Exactamente lo que un estudiante necesita como referencia rápida.

---

## Prioridades de acción

1. 🔴 Reemplazar árboles de decisión R base por imágenes (T04)
2. 🔴 Añadir respuestas a ejercicios sin solución (T01, T06)
3. 🔴 Embeber preguntas huérfanas en callouts (T02, T04)
4. 🟠 Partir slides masivas (T01 asimetría, T02 prob total, T04 errores)
5. 🟠 Eliminar slides redundantes (T01 geom, T06 diagnostico duplicado)
6. 🟠 Mover cheatsheets de código a apéndice
7. 🟡 Añadir `.connection` a T01 y T04
8. 🟡 Añadir `# Resumen {.center}` a T01
9. 🟡 Separar section dividers del contenido (T01 L457)
10. 🔵 Unificar fig-width/fig-height/code-copy en YAML
