# PROOFREAD_ALL_2026-08-04 — Revision de contenidos (canon 10 qmd)

**Fecha:** 2026-08-04 | **Alcance:** `qmd_slides/` (T01_I/II, T02_I/II, T03, T04_I/II, T05, T06, index)
**Metodo:** verificacion sistematica de estructura, citas, numeros narrativos vs salida R (recomputados), YAML y unicode.

---

## Resumen

| Check | Resultado |
|---|---|
| Divs `:::` balanceados (depth 0 final) | ✓ 10/10 |
| `---` seguido de contenido (patron error YAML) | ✓ solo front matter |
| `##` dentro de `.exercise` | ✓ 0 |
| Titulos `##` duplicados en mismo archivo | ✓ ninguno (T04_I: 2 pares aparentes = teoria vs apendice de codigo, intencional) |
| Claves de cita `[@...]` en references.bib (52 entradas) | ✓ 0 fallos |
| Acentos NFD (no NFC) residuales | ✓ 0 |
| fig-height fuera de rango 3–7.5 | ✓ ninguna |
| Numeros narrativos vs R | **5 errores corregidos (2 P0, 3 P1)** |

---

## Errores corregidos

### P0 — Numeros que contradicen la salida de R en la diapositiva

1. **T04_I L594 — ejemplo hipotetico de proporcion (z)**
   - Texto: "Si los datos hubieran sido **x=33**, n=200: z=-1.79, 0.07<P<0.08 → NO significativo".
   - R con p0=0.22 (el del ejemplo anterior) y CC: **x=33 → z=-1.96, P=0.0496 → significativo** (contradecia la conclusion).
   - Fix: **x=34** → z = (34−44−0.5)/√34.32 = −1.79, P = 0.073 → NO significativo ✓ (pedagogicamente es el punto buscado: no significativo).

2. **T06 L774-776 — intercepto beta0 = −0.20**
   - Mismo fix que el PR #1 (branch `slides-clean-merge`): beta0 = **−0.21** (R ajusta −0.2054 con datos completos; −0.20 era el redondeo del producto intermedio 4.80).
   - Nota: el fichero local ha quedado identico al del PR (evita conflicto de sync futuro). El sitio LIVE sigue con −0.20 hasta re-deploy.

### P1 — IC o estadisticos narrativos incorrectos (todos verificados con R)

3. **T04_I — IC 95% del ejemplo de flexion (6 pacientes): [126.4°, 132.9°] × 4 apariciones**
   - R (`t.test`, datos exactos): IC = **[125.4, 133.3]** (x̄=129.33, s=3.777, t=−0.43, P=0.684 ✓).
   - Fix en L571, L621 (bloque salida), L629, L662.

4. **T04_I L615-631 — salida simulada de `testt()` de BioEstatR**
   - Ejecutado `testt(m=129.33, s=3.78, n=6, m0=130)` (ver 1.0.1): salida real =
     `95%-IC(μ) = (125.363, 133.297)`, `texp = 0.434, gl = 5`, `p = 0.682 / 0.341`,
     `95%-IC(μ-μ0) = (-4.637, 3.297)`. **No imprime Shapiro-Wilk** en esta version.
   - Fix: bloque de salida y viñetas "Cómo leer la salida" reescritos con la salida real.
   - Nota: t=0.434/P=0.682 (entradas redondeadas 129.33/3.78) vs t=−0.43/P=0.683 (datos exactos) — ambas correctas en su contexto, ahora explícito.

5. **T05 L784/L796 — McNemar, diferencia de proporciones**
   - Narrativa: d = −0.095 (−9.5 pp), IC 95%: −17.4% a −1.7%.
   - R (Agresti-Min, mismo chunk): **d = −0.096 (−9.6%)**, IC = **(−17.5%, −1.8%)** — el chunk renderiza en vivo estos valores, la narrativa no coincidia.
   - Fix: narrativa alineada con la salida renderizada.

### P2 — Coherencia pedagogica

6. **T05 L877-883 — tabla de interpretacion de IC mezclaba hipoteticos con el caso real**
   - Filas DR +0.15 / RR 1.50 / DR 0.05 eran hipoteticas, pero la fila OR 3.77 era el caso real (bajo peso/fumar) y el encabezado decia "datos clínicos de fisioterapia".
   - Fix: encabezado "Ejemplos **ilustrativos** de interpretacion de IC (valores hipoteticos, salvo el caso real del OR)".

---

## Verificado y correcto (sin cambios)

- **T05:** z_exp = 15/√46 = 2.21, P = 0.027 ✓; p̂_A = 53/166 = 0.319, p̂_B = 69/166 = 0.416 ✓; DR 0.169 (0.069–0.268), RR 3.08 (1.813–5.222), OR 3.77 (1.976–7.189) ✓ (tambien en L1108-1118); Yates 16.287 / Pearson 17.907 ✓ (audit previo).
- **T03:** derivacion s=4.06 (√(115.5/7)) ✓; IC (164.9°, 171.6°) con t=2.365 ✓; t=(169.4−170)/(4.30/√10)=−0.441 ✓ (s=4.299); reflexion "170°" = goniometria de hombro, unidades correctas; IC (166.3, 172.5) consistente en L604/L874.
- **T04_II:** Wilcoxon Z=8/√51=1.120, P=0.263; con CC 1.050/P=0.294 ✓ (L330-332); rangos R_A=17, R_B=49, total 66 ✓ (L443).
- **T02:** tabla z (L247: 140→1.58 ✓; L255-258: escala μ=100, σ=10 ✓); P(X<22)=0.159 ✓ (L312); regla 68/95/99.7 ✓.
- **T01:** estructura y citas correctas (remapping previo).
- **Citas:** las 52 claves de references.bib locales cubren todas las citas de los 10 qmd.
- **Render:** T04_I, T05 y T06 re-renderizados limpios tras los fixes; fixes verificados en el HTML (125.4 ×3, x=34, 125.363, −0.096, −0.21).

## Pendiente
- Los fixes 1-5 deben aplicarse tambien a la rama `slides-clean-merge` (PR #1) y, tras el merge, re-desplegar gh-pages (el LIVE muestra aun beta0=−0.20 e IC 126.4/132.9).
