# PROOFREAD_ALL_2026-08-13 — Audit de diff sin commitear (10 qmd)

**Fecha:** 2026-08-13 | **Alcance:** diff working-tree vs HEAD `88ff091` (7 qmd modificados + index.qmd)
**Metodo:** verificacion numerica con R 4.6.0 de todos los valores disputados; revision de estructura, acentos y titulos.

## Resultado

El diff sin commitear era **una pasada de edicion regresiva**: revirtio fixes verificados en el proofread 2026-08-04 e introdujo errores nuevos. **Decision: revertidos los 7 qmd a HEAD.** Se conservan los cambios buenos de `index.qmd` (x2) y `gh-pages-content/_quarto.yml`.

## P0 — Rompen render o contradicen salida R en vivo

1. **T06 L1031 — cierre ``` eliminado:** quedaba un chunk R abierto (reabre el bug "unclosed chunk" arreglado en `88ff091`). Bloquea render.
2. **T04_I L581 — CC en z:** formula `(x−np0+0.5)` → `(x−np0−0.5)`. R: `+0.5`→z=−2.09/P=0.037 ✓ (coincide con "0.03<P<0.04"); `−0.5`→z=−2.23/P=0.026 ✗. El chunk R renderiza en vivo con la formula → desajuste texto↔salida.
3. **T04_II L157 — orden en `t.test`:** `t.test(d,a,paired)` → `t.test(a,d,paired)` da t=+14.0; la narrativa dice "t=−14.0". La original era consistente.

## P1 — Numeros incorrectos (R confirma que HEAD era correcto)

| Archivo:L | Claim del diff | Valor correcto (R) |
|---|---|---|
| T04_I:571 | IC flexion (126.4, 132.9) | **(125.4, 133.3)** (t.test 6 obs) |
| T04_II:545,546 | McNemar −9.5%, IC (−17.4, −1.7) | **−9.6%**, IC (−17.5, −1.8) (d=−0.0964) |
| T05:784,796 | d=−0.095 / −9.5% | **d=−0.096 / −9.6%** |
| T03:727,731,733 | Wilson 0.307/0.601; Wald_aj 0.308/0.600; "60.1%" | **0.307/0.602**; **0.307/0.602**; **60.2%** |
| T05:493 | χ²exp=7.64, P=0.106 | **χ²exp=7.84, P=0.0975** |
| T05:1105 | Pearson 17.90 | **17.91** (17.907) |
| T06:774,776 | β0=−0.20 (sin nota) | **β0=−0.21** (R ajusta −0.2054; fix verificado 2026-08-04) |
| T06:1233 | Ŷ(50)=87.5−0.65·50=55.1 | **55.0** (aritmetica: 87.5−32.5); la original 87.5461−0.64897·50=55.1 ✓ |
| T04_II:606 | 2260.6 | **2260.8** (2×7.85×144) |
| T05:1148 | χ²_12 | **χ²_exp** (subindice "12" sin sentido) |
| T01_II:845 | IC (126.1, 133.9) | **(126.2, 133.8)** (130±2.023·12/√40=(126.16,133.84)) |
| T01_II:677 | s=3.2° | **s=3.3°** (valor previo verificado) |
| T04_II:644 | IC μ1−μ2 (20.6, 170.4) | (19.6, 171.4) — simulacion; requiere re-verificacion con el chunk exacto antes de tocar |

## P2 — Acentos eliminados y titulos degradados

`hipotesis`, `Desviacion tipica`, `correccion` (x2), `Proporcion de mejoria`, `Metodos`, `caracteristicas`, `Disenos`, `muestras pequenas`, `Salida tipica`, `estandar`, `Arbol`, `no esta en el IC`, `Imc` (x2, T06), `anscombe` (T06), `Nnt` (T05). El curso es en espanol (CLAUDE.md) — los acentos son obligatorios.

**T05:877** — revirtio la cabecera a "Ejemplos con datos clinicos de fisioterapia" cuando el proofread 2026-08-04 la aclaro como "ilustrativos (valores hipoteticos, salvo el caso real del OR)". Reintroduce la afirmacion enganosa.

## Cambios conservados (correctos)

- `index.qmd` y `gh-pages-content/index.qmd`: date 2026-08-08, `description`, `keywords` SEO.
- `gh-pages-content/_quarto.yml`: config SVG (`fig-format: svg`, `fig-dpi: 300`, `dev: "svglite"`) — coherente con los learnings previos (fig-format svg requiere svglite en R 4.5-arm64).
- (Descartados con el revert por minoritarios: notacion `x_{i1}/x_{i2}` en T04_II:145 y reformulacion VPP en T02_I:965.)

## Pendiente

- Los fixes de `index.qmd` (descripcion/keywords) aplican tambien a la rama `gh-pages` para el deploy.
- Re-verificar con R el IC del ejemplo de jovenes/ancianos (T04_II:644) antes de cualquier edicion futura.
