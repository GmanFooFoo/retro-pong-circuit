# Asset History

> **Audit-Trail für jedes generierte Asset** — Prompt, Parameter, Datum, Kosten, Auswahl. Damit jedes Asset später reproduzierbar ist (annähernd; ohne fixen Seed kein bit-exakter Re-Run).

Eintragsformat:

- **Datum + Run-ID**
- **Asset-Name** (final / archive)
- **Prompt-Quelle** (Pfad + Commit-Hash)
- **Parameter** (Modell, Style, Auflösung, Anzahl Varianten)
- **API-Cost** (Credits)
- **Auswahl** (welches Variant wurde Hero, was archiviert)
- **Notes** (was lief gut / schlecht, ggf. Tweak-Idee für nächstes Mal)

---

## 2026-04-28 · Run 1 — Startscreen Key Visual

| Feld | Wert |
|---|---|
| Asset (final) | `assets/startscreen.png` (256×256) + `assets/startscreen-upscaled.png` (1024×1024 nearest-neighbor) |
| Asset (archive) | `assets/archive/startscreen-01.png` + `assets/archive/startscreen-01-upscaled.png` |
| Prompt-Quelle | [`prompts/startscreen-no-text.txt`](../prompts/startscreen-no-text.txt) — text-freie Variante des PRD §23.10 Templates, committet in `869717b` |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 5.5 → nachher 5.14) |
| Cost-Check vorher | ✅ ja, kostenlose Pre-Verification |
| Auswahl | **Bild 02 → final** (klare Pong-Lesbarkeit: zwei stilisierte Sci-Fi-Paddles, glühender Ball mit Trail in 3D-Box-Arena, Cyan-Magenta-Gradient, dunkles Zentrum für Title-Overlay). Bild 01 → archive (Synthwave-Album-Cover-Vibe, Paddles als Kristall-Module statt Spiel-Schläger). |
| Iteration-Runde | 1 von max 3 (per Locked-Decision) |
| Reproduzieren | `./scripts/generate-asset.sh prompts/startscreen-no-text.txt assets/startscreen.png rd_pro__scifi 256 256 false 2` (ohne Seed-Lock — neue Generation produziert ähnlichen Stil, nicht bit-exakt identisch) |

**Notes:**
- Prompt-Strategie "Text-frei + Title-Overlay separat" hat funktioniert — keine garbled letters, beide Bilder haben sauberen zentralen Bereich für späteren HTML-Title-Overlay.
- `rd_pro__scifi` Style passt sehr gut zum PRD-Vibe (dark neon, glowing details, hohe Lesbarkeit).
- Beide Varianten wären als Hero einsetzbar gewesen — Entscheidung pro Bild 02 wegen Spielerkennbarkeit.

### Run 1.1 · Title-Overlay (post-processing, kein API-Call)

| Feld | Wert |
|---|---|
| Asset (final) | `assets/startscreen-hero.png` (1024×1024 mit aufgesetztem Title und Subtitle) |
| Quelle | `assets/startscreen-upscaled.png` (Run 1, Bild 02 Hero) |
| Tool | ImageMagick `magick ... -annotate` |
| Font | [Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P), OFL-lizenziert, lokal in `assets/fonts/` |
| Title | "RETRO PONG CIRCUIT", 26pt, Cyan `#00FFFF` |
| Subtitle | "LAST ARCADE OF THE GALAXY", 13pt, Magenta `#FF66FF` |
| Position | Title: 160px unter Bild-Mitte (in der dunklen Bank zwischen Paddle-Unterkante und Boden-Grid). Subtitle: 210px unter Bild-Mitte. |
| Cost | 0 (lokales Compositing) |
| Reproduzieren | `./scripts/add-title.sh assets/startscreen-upscaled.png assets/startscreen-hero.png` |

---

## 2026-04-28 · Run 2 — Character Portrait: Nova Vex

| Feld | Wert |
|---|---|
| Asset (PR-Stand) | Beide Varianten provisorisch in `assets/characters/`: `nova-vex-01.png` + `nova-vex-02.png` (jeweils + `-upscaled.png` 1024×1024). User pickt im PR. |
| Prompt-Quelle | [`prompts/character-nova-vex.txt`](../prompts/character-nova-vex.txt) — Befüllung des PRD §23.5 Templates mit Nova-Vex-Specs aus PRD §14.2 (Speedster, Visor-Helm, Neon-Jacke, Jet-Boots, Cyan-Magenta-Akzente). Wieder text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit Hero) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 5.14 → nachher 4.78) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **offen** — User entscheidet im PR. MASCHIN-Empfehlung Bild 02 (Cityscape-im-Visor erzählt Neon-Sector-Lore, Flügel-Emblem stärkt Speedster-Identität). |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-nova-vex.txt assets/characters/nova-vex.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Both variants delivered the visor-helmet brief; Bild 02 added an unprompted Neon-Sector cityscape reflection in the visor — a fortunate emergent detail that ties tightly to the PRD §14.2 origin "Neon Sector 7."
- Bild 01 included a roster-card frame with pseudo-text glyphs around the portrait — visually attractive but the glyphs are AI-noise; for production we want a hand-built consistent card frame across all six characters.

---

## 2026-04-28 · Run 3 — Social Preview Card

| Feld | Wert |
|---|---|
| Asset (final) | `assets/social-preview.png` (1280×640, GitHub-Repo-Card-Standard) |
| Quellen | `assets/startscreen-upscaled.png` (no-text Hero, Run 1 Bild 02) + `assets/fonts/PressStart2P-Regular.ttf` |
| Tool | ImageMagick (`scripts/build-social-preview.sh`) |
| Komposition | Split-Layout: links Title-Block ("RETRO PONG" / "CIRCUIT" in Cyan, "LAST ARCADE OF THE GALAXY" in Magenta, Repo-URL in dezentem Blau-Grau), rechts der Hero ohne Text auf 480×480 verkleinert. Hintergrund Dark Navy `#0B0F2E`. 80px Safe-Zone-Margin (entspricht den 40pt × 2 die GitHub für Repo-Cards empfiehlt). |
| Cost | 0 (lokales Compositing, kein API-Call) |
| Reproduzieren | `./scripts/build-social-preview.sh` |
| Upload | GitHub Repo → Settings → Social preview → Edit → upload `assets/social-preview.png` |

---

## Reproduzierbarkeits-Hinweis

**Was gespeichert ist:**
- Prompt-Datei (versioniert in Git)
- Alle Parameter (in dieser History)
- Die generierten PNGs (final + archive, byte-exakt im Repo)
- Der Wrapper-Script-Stand (`scripts/generate-asset.sh`, versioniert)

**Was NICHT gespeichert ist:**
- Der Random-Seed, den die Retro-Diffusion-API intern verwendet hat (wird im Response nicht zurückgegeben). Ein Re-Run mit identischem Prompt + Parametern produziert deshalb stilistisch ähnliche, aber nicht bit-exakt identische Bilder.

**Wenn bit-exakte Reproduktion wichtig wird** (z.B. für Asset-Versions-Locks im finalen Build): die committeten PNGs sind die Source-of-Truth. Ein Re-Run dient dann nur der Variation, nicht der Reproduktion.

---

← [Zurück zum README](../README.md)
