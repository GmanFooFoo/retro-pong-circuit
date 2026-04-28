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
| Asset (final) | `assets/characters/nova-vex.png` (256×256) + `assets/characters/nova-vex-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (Tournament Roster Card, Visor-HUD-Reflexion, kreisrundes Brust-Emblem). |
| Asset (archive) | `assets/archive/characters/nova-vex-02.png` + `-upscaled.png` (Cleaner Charakter-Poster mit Cityscape-im-Visor — schöner narrativer Detail, aber für die erste Roster-Card-Iteration ist die direkt-fertige Card-Variante praktischer). |
| Prompt-Quelle | [`prompts/character-nova-vex.txt`](../prompts/character-nova-vex.txt) — Befüllung des PRD §23.5 Templates mit Nova-Vex-Specs aus PRD §14.2 (Speedster, Visor-Helm, Neon-Jacke, Jet-Boots, Cyan-Magenta-Akzente). Wieder text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit Hero) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 5.14 → nachher 4.78) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 01** (User-Pick 2026-04-28). MASCHIN hatte 02 empfohlen wegen Cityscape-Lore-Detail; User wählte 01 wegen direkt einsatzbereiter Roster-Card-Komposition. Beide Argumente valide — die UI-Glyphs der 01-Card werden im späteren Card-Frame-Redesign ohnehin durch eigenes UI ersetzt. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-nova-vex.txt assets/characters/nova-vex.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Both variants delivered the visor-helmet brief; Bild 02 added an unprompted Neon-Sector cityscape reflection in the visor — a fortunate emergent detail that ties tightly to the PRD §14.2 origin "Neon Sector 7."
- Bild 01 included a roster-card frame with pseudo-text glyphs around the portrait — visually attractive but the glyphs are AI-noise; for production we want a hand-built consistent card frame across all six characters.

---

## 2026-04-28 · Run 4 — Arena 1: Neon Grid Court

| Feld | Wert |
|---|---|
| Asset (final) | `assets/arenas/neon-grid-court.png` (256×256) + `assets/arenas/neon-grid-court-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Framed Coliseum mit Nebula-Horizon, klare zentrale Mittellinie top-to-bottom, leerer zentraler Play-Bereich, zwei Mini-Bunker-Details am Boden). |
| Asset (archive) | `assets/archive/arenas/neon-grid-court-01.png` + `-upscaled.png` (Split-Floor mit cyan-linker / magenta-rechter Hälfte, urban-skyline-Andeutung am Horizon — wirkte wie 2-Player-Hint, im MVP 1P-vs-CPU nicht passend, plus helle Horizon-Streifen drohten Ball-Lesbarkeit zu stören). |
| Prompt-Quelle | [`prompts/arena-neon-grid-court.txt`](../prompts/arena-neon-grid-court.txt) — Befüllung des PRD §23.8 Arena-Background-Templates mit Specs aus PRD §16.3 (Standard-Arena, dunkler Hintergrund, Neon-Raster, klare Mittellinie, sehr gute Lesbarkeit). Wieder text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit Hero und Nova Vex) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 4.78 → nachher 4.42) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: PRD §16.3 fordert "klarer Mittellinie" (Variante 02 hat saubere vertikale Linie, Variante 01 nicht), PRD §23.8 fordert "clear center field, background must not overpower ball or paddles" (Variante 02 hat saubere leere Mitte). Konsistente Cyan-Magenta-Palette mit Hero und Nova Vex Card. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/arena-neon-grid-court.txt assets/arenas/neon-grid-court.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Arena 1 von 3 für MVP-Asset-Coverage. Mit Hero + Nova Vex + Arena 1 sind 3 grosse MVP-Asset-Klassen vertreten (key visual + erster Charakter + Standard-Arena).
- Beide Varianten lieferten den Tron-Floor-Vanishing-Point sauber. Variante 01's Split-Floor war ein interessanter unprompted Detail (linke Hälfte cyan, rechte Hälfte magenta) — würde für V2 lokaler 2P-Modus (PRD §26.1) thematisch passen, ist aber für 1P vs CPU im MVP nicht passend.
- Variante 02 ergänzte unprompted eine Box-Frame-Umrahmung um die Arena (subtle Linien an den Edges) — tied tightly an die "digital coliseum"-Beschreibung im Prompt. Plus zwei kleine maschinendetail-Bunker am Horizont (links + rechts) als Sci-Fi-Würze ohne Spielfeld zu stören.
- Pattern bestätigt: rd_pro__scifi Style + 256×256 + 2 Varianten + cost-check first ist die etablierte Default-Konfiguration für alle weiteren Asset-Klassen.

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
