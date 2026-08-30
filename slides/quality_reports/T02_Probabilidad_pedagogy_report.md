# Pedagogical Review: T02_Probabilidad.qmd

**Reviewer:** Claude Code (Pedagogical specialist)
**File:** `Slides/TemasTeoriaFisioterapia/qmd_slides/T02_Probabilidad.qmd`
**Course:** Bioestadística para Fisioterapia — Grado en Fisioterapia, Universidad de Granada
**Language:** Spanish
**Total lines:** 1699
**Estimated slide count:** ~65–70

---

## 13 Patterns Check

| # | Pattern | Status | Evidence | Recommendation |
|---|---------|--------|----------|----------------|
| 1 | **Motivation** | ✅ **Fuerte** | Lines 97–122: Full slide "¿Por Qué Necesito la Probabilidad como Fisioterapeuta?" with concrete clinical decisions (lumbalgia, Lasegue test, p-values). Line 44–51: T01→T02 bridge justifies "why model instead of just describe." Line 122: Stephen Senn quote reinforces. | Maintain. Consider adding a brief "hook" statistic on the title slide (e.g., "1 de cada 3 diagnósticos cambia tras una prueba diagnóstica") to grab attention immediately. |
| 2 | **Prerequisites** | ⚠️ **Parcial** | Lines 43–51: Explicit T01→T02 bridge is excellent. Lines 662–671: Concept mapping table (T01 ↔ T02). However, **no review of required math prerequisites** (fractions, exponents, factorials, summation notation). The first appearance of $\binom{n}{k}$ (line 1254) has no explanation of factorials for students who may have forgotten high-school math. | Add a small "Recordatorio matemático" callout early (after Objetivos) defining $\binom{n}{k}$, $n!$, and $\sum$ notation with a clinical example. Many fisioterapia students last saw this 2+ years ago. |
| 3 | **Progressive Disclosure** | ✅ **Buena** | Concepts layered well: simple Laplace (line 139) → axioms (179) → derived rules (210) → complement/union/intersection (223–332) → conditional (350) → independence (402) → probability total (422) → Bayes (537). Each section builds on the previous. Random variables section similarly layered. | No change needed. The sequencing is pedagogically sound. |
| 4 | **Worked Examples** | ✅ **Excelente** | Numerous step-by-step worked examples with clinical data: (1) Union with HTA/DM, line 250–272; (2) Inclusion-exclusion 3 comorbidities, line 337–348; (3) Conditional probability recovery × sex, line 384–399; (4) Bayes diagnostic test, line 558–579 (two steps clearly labeled); (5) Discrete pmf table, line 699–716; (6) Expectation table, line 727–736; (7) Variance table, line 748–762; (8) Binomial manual calc, line 1276–1285; (9) Poisson manual calc, line 1357–1365. All show intermediate numeric steps clearly. | No change needed. This is a strength of the deck. |
| 5 | **Dual Coding** | ✅ **Excelente** | Abundant visuals complement text: Venn diagrams for complement/union/intersection (lines 276–326), conditional probability Venn (350–376), Probability Total Theorem diagram with full-partition visual (428–499), bar chart (514–521), discrete pmf barplot (705–713), Normal CDF (773–785), discrete vs continuous CDF side-by-side (791–809), density histogram for shoulder ROM (829–843), two normals comparison (861–872), mu/sigma variation panels (1046–1069), original vs standardized scale (1150–1174), Binomial→Normal approximation panels (1556–1581), Poisson→Normal panels (1612–1639). | Maintain. Consider adding a concept map or flowchart for "Which distribution to use?" earlier (the table at line 1495 is a text table, not a visual flowchart). |
| 6 | **Concrete → Abstract** | ✅ **Bien observado** | Deck consistently moves from concrete clinical scenarios to abstract formulas. Examples: Dice→patients→comorbidity→Bayes diagnostic test. Fuerza de prensión → Z-scores → standardization formula. 3 patients with improvement → pmf → E(X) formula. | No change needed. |
| 7 | **Active Learning** | ⚠️ **Limitado** | Only 4 reflective questions embedded (lines 586, 589, 639, 1228) and 1 final exercise (lines 1666–1675). No clicker-style pauses, think-pair-share prompts, or self-check questions throughout the body. Students could passively watch the entire 68-slide deck without engaging. | Add 1–2 "Pausa activa" slides per major section (after axioms, after Bayes, after Normal) with a multiple-choice clinical scenario to discuss. Convert the final exercise into a phased activity that builds throughout the lecture. |
| 8 | **Cognitive Load Management** | ⚠️ **Adecuado** | Strengths: Axiom derivations include "no need to memorize" reassurance (lines 190, 220). Tables frequently reduce complexity. R code offloads computation. Weaknesses: The full Normal PDF $f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$ (line 1036) is shown to physiotherapy students who likely don't know $e$, $\pi$, or exponentials at this level. The continuous expectation/variance integrals (line 848) use $\int$ notation that assumes calculus. The t-Student, χ², F distributions (lines 1390–1493) are introduced in rapid succession with minimal clinical depth — likely overwhelming. | (1) Soften the Normal PDF: present it as a "technical definition, but the key idea is the bell shape and the μ±σ rule." (2) Restructure the t/χ²/F section — move to T03/T04/T05 and only mention them here as "distribuciones que veremos en temas siguientes." (3) The continuous E(X)/Var(X) integrals can be replaced with the simple verbal statement "es el equivalente continuo de la fórmula que ya vimos para discretas." |
| 9 | **Clinical Transfer** | ✅ **Excelente** | Every major statistical concept connects to a fisioterapia decision: probability→diagnosis uncertainty; Bayes→VPP/VPN in diagnostic tests; Normal→hand grip strength, shoulder ROM, blood pressure; Z-scores→comparing PA vs IMC; Binomial→cure rates; Poisson→adverse events; CLT→basis for inference. The clinical examples are varied, realistic, and appropriate for the audience. | No change needed. This is the strongest aspect of the deck. |
| 10 | **R Code Pedagogy** | ⚠️ **Funcional pero mejorable** | R chunks appear on ~30 slides. All code runs correctly and produces relevant output. However, most chunks appear as "show code → run → see result" without **pedagogical explanation** of the code itself. The `cat()` messages help, but there is almost never: "Observe cómo la función `pnorm()` toma mean y sd como argumentos," or "Notad que `lower.tail=FALSE` invierte la cola." A notable exception is the `lower.tail` slide (lines 923–992), which is excellent. | Add 1–2 lines of code commentary after key chunks: e.g., after `dbinom(7,10,0.7)` add "Notad que el primer argumento es el valor de X, el segundo es n, el tercero es p." Consider a "Lectura de código" callout box on the first use of `pnorm`, `pbinom`, `ppois`. |
| 11 | **Connections (T01–T02–T03)** | ✅ **Excelente** | Multiple explicit bridges: T01→T02 (lines 43–51), T02 internal event→VA bridge (lines 643–648), T01↔T02 concept map (lines 662–671), T02→T03 CLT bridge (lines 998–1000), approximation→CLT→T03 bridge (lines 1536–1538), Resumen mentions TCL as T03 basis (line 1685). | Maintain. This is a model for how to connect a course across topics. |
| 12 | **Summarization** | ⚠️ **Funcional pero mejorable** | Lines 1677–1687: "Resumen — Tema 2" with 7 clear bullet points. Covers all major topics. However: (1) It's a plain bullet list — no visual summary, no mind map, no "3 take-home messages." (2) No explicit "Lo que debes recordar siempre" key insights. (3) The "Referencias complementarias" (lines 1693–1699) is useful but not a pedagogical summary. | Add a visual summary (concept map or table of distributions with icons), and 3 "take-home messages" in a `.callout-important` box that answer "¿Qué te llevas de este tema a tu práctica clínica?" |
| 13 | **Pacing (~70 slides, 2h)** | ⚠️ **Desigual** | Front half (lines 29–641: probability rules → Bayes) is well-paced at ~25 slides. Middle transition (lines 643–914: random variables intro) is appropriate at ~15 slides. However, the back half (lines 916–1699: all distributions + approximations) is **too dense** for a single lecture: Normal (30+ slides), Binomial (15+), Poisson (10+), t-Student (10), χ² (10), F (8), approximations (20+). That's ~100+ slides worth of content compressed into ~40 slides. The t-Student/χ²/F distribution section (lines 1390–1493) is particularly rushed — each gets a single historical slide, a properties slide, and a plot. | **Critical recommendation:** Split the distribution content. Move t-Student, χ², and F to their respective future topics (T03–T06) as brief previews. Focus the Normal section on the practical interpretation (Z-scores, `pnorm`, percentiles) and reduce formula-heavy slides. This gives breathing room for the approximation/CLT section. |

---

## Deck-Level Assessment

### Narrative Arc

```
T01 → T02 bridge (descriptive → model)
    └─ Why probability? (clinical motivation)
        └─ Three approaches (frequentist, axiomatic, Bayesian)
            └─ Axioms → derived rules (complement, union, intersection)
                └─ Conditional probability → Independence
                    └─ Probability Total → Bayes Theorem (centerpiece)
                        └─ Clinical Bayes: diagnostic testing
                            └─ Random variables (discrete → continuous)
                                └─ Expectation, Variance, CDF
                                    └─ NORMAL distribution (μ, σ, Z-scores, standardization)
                                        └─ BINOMIAL distribution (n, p)
                                            └─ POISSON distribution (λ)
                                                └─ Preview: t, χ², F
                                                    └─ Approximations (Binomial→Normal, Poisson→Normal) + CLT
                                                        └─ Clinical exercise → Resumen
```

The arc is logical and builds from concrete uncertainty → abstract probability → random variables → distributions → inference preview. The Bayes theorem at lines 537–615 functions as the intellectual centerpiece. The CLT/approximation section at lines 1534–1663 effectively connects to T03.

**Weakness:** The narrative fragments after the Normal distribution. The Binomial, Poisson, t, χ², and F sections feel like a catalog rather than a story. Each distribution receives the same structural treatment (history → formula → properties → R code) without a unifying narrative thread.

### Notation Consistency

| Symbol | Used consistently? | Notes |
|--------|-------------------|-------|
| $P(A)$ | ✅ Sí | Throughout probability section |
| $P(A \mid B)$ | ✅ Sí | Conditional probability consistent |
| $E(X)$ | ✅ Sí | Lines 667, 720, 848 |
| $\Var(X)$ | ✅ Sí | Lines 668, 741, 848 |
| $\SD(X)$ | ⚠️ | Appears only in T01↔T02 table (line 669), not used in formulas |
| $\mu$, $\sigma$ | ✅ Sí | Consistent across Normal, Z-score sections |
| $f(x)$, $F(x)$ | ✅ Sí | Density and CDF notation consistent |
| $\binom{n}{k}$ | ✅ Sí | Line 1254, 1256 |
| $\Phi$ (phi) | ⚠️ | Used once (line 787) then dropped. Consider using consistently for standard Normal CDF. |

**Recommendation:** Add $\Phi$ to the notation used for standard Normal CDF from the Z-score section onward. Also, the notation for continuous expectation (line 848) switches to integrals — consider a note that "this is the continuous analogue of the sum formula we already saw."

### Student Perspective

**What will confuse a first-year physiotherapy student?**

1. **Summation notation ($\sum$)** appears at lines 185, 697, 720, 741, 811, 884, etc. with no prior explanation. Students who last took math in high school may not recall this.

2. **Normal PDF formula** (line 1036): $f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$ — includes $e$, $\pi$, $\sqrt{}$, and a complex exponent. For a student in fisioterapia (not engineering), this is intimidating and unnecessary for their learning goals. The key takeaway is "bell shape, μ centers it, σ spreads it."

3. **Continuous expectation integrals** (line 848): $\int$ notation assumes calculus, which fisioterapia students typically have not taken.

4. **The lower.tail distinction** for discrete vs continuous (lines 962–992) is technically rigorous but may confuse students who are still learning what a CDF is. The warning table (lines 983–988) is well-structured but dense.

5. **The correction of continuity** (lines 1583–1606): For physiotherapy students learning the Normal approximation, the ±0.5 correction adds another layer of complexity. Emphasize "en la práctica, R calcula exacto — la corrección es para entender el concepto."

6. **Simultaneous introduction of 4 distributions** (t, χ², F in lines 1390–1464, plus the 3 main ones): Students may suffer from "distribution overload." Each distribution has its own parameters, shape, symmetry, and use case — all different.

**What will help?**

- The clinical examples are **excellent** anchors. Students will remember "el Z-score de la glucemia" and "el VPP del test diagnóstico" long after they forget formulas.
- The R code provides a **safety net** — students can always compute rather than derive.
- The `.callout-tip` and `.callout-important` boxes effectively highlight key ideas.

### Prerequisite Honesty

**Current state:** The deck explicitly connects to T01 (descriptive statistics) at lines 43–51 and 662–671, which is excellent. **However, there is no statement of assumed math prerequisites.** The deck implicitly assumes:
- Basic arithmetic and fractions ✅
- Factorials $n!$ and combinatorics $\binom{n}{k}$ (not explicitly reviewed)
- Summation notation $\sum$ (not explicitly reviewed)
- The constant $e$ and exponential notation (not explicitly reviewed)
- The constant $\pi$ (not explicitly reviewed)
- The concept of an integral $\int$ (not explicitly reviewed, though used only twice)

**Recommendation:** Add early in the deck (after Objetivos, before starting) a slide or callout titled **"¿Qué necesitas recordar de matemáticas?"** that briefly reviews: summation ($\sum$), factorials ($n!$), and the binomial coefficient ($\binom{n}{k}$) with a clinical example. For $e$ and $\pi$ in the Normal PDF, add a reassuring note: "no necesitas calcular esto a mano — R lo hace por ti."

---

## Critical Recommendations (Top 5)

### 1. 🟥 REDUCE COGNITIVE LOAD: Soften or move advanced distributions (t, χ², F)

**Lines 1390–1493.** The t-Student, Chi-square, and F distributions are introduced in rapid succession (~100 lines for 3 distributions) with clinical motivation that only previews future topics ("la usaremos en el Tema 4/5/6"). This creates a "catalog dump" feeling. For a 2-hour lecture, students should focus on Normal, Binomial, and Poisson — the three they will actually compute with in their homework.

**Action:** Move t-Student, χ², and F to a final preview slide (not 3+ slides each). Replace with a single slide: "Otras distribuciones que veremos en T3–T6" with a brief 1-line description and shape icon for each. Expand them when they are actually needed.

### 2. 🟥 LIGHTEN THE NORMAL PDF FORMULA

**Line 1036.** The full Normal probability density function $f(x) = \frac{1}{\sigma\sqrt{2\pi}} e^{-\frac{(x-\mu)^2}{2\sigma^2}}$ will intimidate physiotherapy undergraduates who don't know $e$, $\pi$, or exponentials.

**Action:** Present the formula in a `.small` footnote or foldable code comment with the text: "Esta es la definición técnica. Lo importante es que entiendas la forma de campana y las reglas μ±σ." Emphasize the conceptual takeaways (bell shape, symmetry, μ±σ rule) in the main text.

### 3. 🟡 ADD ACTIVE LEARNING PAUSES

**Lines 29–1699.** The deck has ~70 slides with only 4 reflective questions and 1 exercise. Students can passively watch for 2 hours without engaging.

**Action:** Add 3 "⏸️ Pausa activa" slides: (1) After axioms (line 221): "Lanzamos un dado: ¿cuál es la probabilidad de que salga par o mayor que 4?" (2) After Bayes (line 615): "Si la prevalencia fuera del 10%, ¿cómo cambiaría el VPP?" (3) After Z-scores (line 1144): "Un paciente tiene Z=+2.5 en PA y Z=-1.8 en fuerza. ¿Qué medición es más atípica?" These can be instructor-led discussions without requiring clicker technology.

### 4. 🟡 IMPROVE RESUMEN WITH VISUAL OR MNEMONIC SUMMARY

**Lines 1677–1687.** The Resumen is a solid 7-bullet list but lacks visual impact. Students will not remember 7 disconnected points.

**Action:** Add a visual summary table or a `{callout-important}` box titled **"3 ideas clave para tu práctica clínica":** (1) "La probabilidad te permite cuantificar la incertidumbre diagnóstica" (2) "El Teorema de Bayes actualiza diagnósticos con nueva evidencia — el razonamiento clínico es Bayesiano" (3) "La distribución Normal (y sus Z-scores) es la herramienta central para comparar pacientes con la población."

### 5. 🟡 ADD CODE COMMENTARY TO R CHUNKS

**Lines 152–1602.** R code is present and functional throughout, but most chunks lack pedagogical explanation of the code itself. Students seeing `dbinom(7,10,0.7)` for the first time need to understand: "el primer número es el valor de X, el segundo es n, el tercero es p."

**Action:** Add a one-line text explanation after the first use of each new function. For example, after line 1283: "Nota: `dbinom(k, n, p)` calcula $P(X=k)$ para una Binomial(n, p). El orden de los argumentos es siempre: valor, n, p." For `pnorm`, `pbinom`, `ppois`, add similar "pattern reminder" callouts.

---

## Additional Minor Recommendations

| Location | Issue | Recommendation |
|----------|-------|----------------|
| Line 68 | "Three faces of probability" shown before clinical hook | Consider moving this to slide 3 (after clinical motivation) to satisfy "why should I care" first |
| Line 787 | $\Phi$ used once then abandoned | Use $\Phi$ consistently for the standard Normal CDF throughout the Z-score section |
| Lines 848, 888 | Integral notation for continuous expectation | Replace integrals in the comparison table with a simple text note: "es el equivalente continuo de la suma" |
| Lines 1228 | Good reflective Z-score question | Move this into an active-learning pause slide with a worked solution revealed step-by-step |
| Lines 1390–1493 | t, χ², F all introduced superficially | Condense to 1 slide each as preview; expand in their respective target topics |
| Lines 1495–1504 | Quick-reference table | Add a 4th column: "¿Qué función R usarías?" with the answer — good for exam review |
| Lines 1666–1675 | Final exercise | Add a 5th question using Bayes: "Si otro estudio encuentra 50% de recuperación, ¿cómo actualizas tu estimación?" |

---

## Score: 7/13 patterns fully met

| Status | Count | Patterns |
|--------|-------|----------|
| ✅ **Fuerte** | 7 | Motivation, Progressive Disclosure, Worked Examples, Dual Coding, Concrete→Abstract, Clinical Transfer, Connections |
| ⚠️ **Parcial** | 6 | Prerequisites, Active Learning, Cognitive Load, R Code Pedagogy, Summarization, Pacing |

The deck is **already strong** in the areas that matter most for this audience: clinical motivation, worked examples, dual coding, and clinical transfer. The Top-5 recommendations above would bring it to **11–12/13** with focused effort on cognitive load reduction, active learning, and code pedagogy.

---

*Report generated: read-only review. No files were modified.*
