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

## 2026-04-29 · Run 15 — Ball Skin: Grid Spark

| Feld | Wert |
|---|---|
| Asset (final) | `assets/balls/grid-spark.png` (256×256) + `assets/balls/grid-spark-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (8-Punkt-Pixel-Burst auf clean dark backdrop, lime-grüne Außenpunkte, weiß-cyan Innenkern, scharfe pixelige Kanten, kompakte Silhouette). |
| Asset (archive) | `assets/archive/balls/grid-spark-02.png` + `-upscaled.png` (12-Punkt-Burst auf vollständiger Cosmic-Background-Szene mit mehreren Planeten — visuell kraftvoll, aber Hintergrund-Verstoß: Prompt forderte explizit "just the spark on a clean dark backdrop"). |
| Prompt-Quelle | [`prompts/ball-grid-spark.txt`](../prompts/ball-grid-spark.txt) — Befüllung des PRD §23.7 Ball-Skin-Templates mit Grid-Spark-Specs aus PRD §3.3.2 (eckiger Pixel-Funken, NICHT rund). Lime-green + white-cyan Palette als Differenzierung gegen Cyan/Magenta/Orange-Familie der anderen drei Skins. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit gesamter Asset-Familie) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 0.46 → nachher 0.10) |
| Cost-Check vorher | ✅ ja (Pattern-Hold seit Run 1) |
| Auswahl | **Variante 01** (User-Pick + MASCHIN-Empfehlung übereinstimmend). V02 violated den expliziten "clean dark backdrop"-Constraint mit voller Cosmic-Scene → ein Hintergrund würde im Spielfeld erscheinen, unbrauchbar als Ball-Skin. V01 erfüllt die Vorgabe sauber: angular silhouette wie gefordert (einzige nicht-runde Ball-Variante im MVP), pixelige Kanten ohne Anti-Alias-Soft-Edges, klar isolierter Spark auf Dark-Navy. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/ball-grid-spark.txt assets/balls/grid-spark.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Ball 4 von 5 (Pixel Comet defer). Grid Spark als bewusster Bruch der "alle Bälle sind rund"-Konvention — angular star-burst-Silhouette ist die visuelle Differenzierung im Skin-Roster.
- V02 ist optisch das spektakulärste Bild der gesamten Ball-Generation, aber als Ball-Skin technisch unbrauchbar (Background-Constraint). Klarer Reject-Lerning: visuelle Power ≠ Funktional-Tauglichkeit (gleiches Pattern wie Laser Alley V01 Triangle in Run 11).
- Lime-green + white-cyan als Palette: differenziert klar gegen Cyan-Neon-Core, Magenta-Laser-Puck und Orange-Plasma-Orb. Vier Skins, vier Farb-Familien, vier Silhouetten — maximale Erkennbarkeit im Options-Menu-Picker.

---

## 2026-04-29 · Run 14 — Ball Skin: Plasma Orb

| Feld | Wert |
|---|---|
| Asset (final) | `assets/balls/plasma-orb.png` (256×256) + `assets/balls/plasma-orb-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Sauberer radialer Gradient mit roten/orange Bändern von außen nach innen, 3 klare Cyan-Lightning-Arcs, dominanter weiß-heißer Mittelpunkt). |
| Asset (archive) | `assets/archive/balls/plasma-orb-01.png` + `-upscaled.png` (Sehr dramatische Flammen-Swirl-Komposition mit vielen Cyan-Bögen, intensiv und detailreich — visuell spektakulärer, aber visuell überladen, würde bei Spielgröße als Noise lesen und Kollisionspunkt verschleiern). |
| Prompt-Quelle | [`prompts/ball-plasma-orb.txt`](../prompts/ball-plasma-orb.txt) — Befüllung des PRD §23.7 Ball-Skin-Templates mit Plasma-Orb-Specs aus PRD §3.3.2 (runde Sci-Fi-Energiekugel). Orange-yellow + red-orange Palette mit Cyan-Counter-Arcs als Differenzierung gegen Cyan-Neon-Core. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 0.82 → nachher 0.46) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). V01 hat sehr starke visuelle Wirkung (Flammen-Swirl mit Cyan-Lightning), aber violated PRD §6.3 "Trail darf Richtung und Kollisionspunkt nicht verschleiern" + PRD §6.6 Negativ-Kriterium #9 "visuell zu überladen" — bei Game-Size würde der innere Bildaufbau als Noise lesen und den weiß-heißen Center weniger dominant machen. V02 hat sauberen radialen Aufbau mit klar dominantem Center-Spot. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/ball-plasma-orb.txt assets/balls/plasma-orb.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Ball 3 von 5 (Pixel Comet defer). Plasma Orb tonalisch zur Voltara-Prime-Energie-Familie (Rexx Volt) ohne Character-Lock — sollte als Skin-Option für jeden Spieler verfügbar sein.
- V01 als Beispiel für "Schönheit ≠ Tauglichkeit" — Lerning aus Run 11 (Laser Alley V01) wiederholt sich hier auf Skin-Ebene.
- Cyan-Lightning-Arcs als Counter-Color zum Orange-Gradient erzeugen die "instabile Plasma"-Lesbarkeit ohne Center-Dominanz zu opfern.

---

## 2026-04-29 · Run 13 — Ball Skin: Laser Puck

| Feld | Wert |
|---|---|
| Asset (final) | `assets/balls/laser-puck.png` (256×256) + `assets/balls/laser-puck-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Top-down 2D-Linsenform, symmetrisches Magenta-Pink-Oval mit Magenta-Rim und weiß-heißem Zentrum, kein 3D-Schatten). |
| Asset (archive) | `assets/archive/balls/laser-puck-01.png` + `-upscaled.png` (Isometrische 3D-Perspektive: Puck mit sichtbarer Seitenwand, Schatten unten, perspektivische Tiefe — visuell sehr stark, aber als 3D-Rendering wahrgenommen). |
| Prompt-Quelle | [`prompts/ball-laser-puck.txt`](../prompts/ball-laser-puck.txt) — Befüllung des PRD §23.7 Ball-Skin-Templates mit Laser-Puck-Specs aus PRD §3.3.2 (flacher, schneller Laser-Look). Magenta-pink Palette als Differenzierung gegen Cyan-Neon-Core. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 1.18 → nachher 0.82) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). V01 violated PRD §6.6 Negativ-Kriterium #2 "es wie 3D-Rendering aussieht" → automatischer Reject. Plus: schräge isometrische Perspektive konfligiert mit Top-Down-Pong-Kameraflucht — der Ball sähe im Spiel aus wie aus einem anderen Spielraum. V02 ist die korrekte 2D-Top-Down-Lesart. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/ball-laser-puck.txt assets/balls/laser-puck.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Ball 2 von 5 (Pixel Comet defer). Laser Puck als "flat fast" Skin tonalisch zur Laser-Alley-Finalarena-Familie — gleiche Magenta-Counter-Cyan-Palette.
- Klare Anwendung des "no 3D render"-Kriteriums: V01 ist isometrisch konstruiert (sichtbare Seitenwand, Schatten unten = perspektivische Tiefe), das ist genau die Schwelle die PRD §6.6 zu vermeiden fordert.
- "Slightly elongated lens-shape" aus dem Prompt funktionierte: V02 ist erkennbar oval (breiter als hoch) ohne in die Streak/Beam-Falle zu fallen.

---

## 2026-04-29 · Run 12 — Ball Skin: Neon Core

| Feld | Wert |
|---|---|
| Asset (final) | `assets/balls/neon-core.png` (256×256) + `assets/balls/neon-core-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (Smooth cyan halo, kompakter weiß-heißer Kern, klare runde Silhouette mit sauberem Halo-Gradient ohne Noise). |
| Asset (archive) | `assets/archive/balls/neon-core-02.png` + `-upscaled.png` (Größerer Ball mit gedithertem rauem Rand und körnigem Halo-Noise-Ring, harsh white core mit pixelig-melted edges — bei kleiner Renderung würde Dithering messy aussehen und Kollisionspunkt unschärfer machen). |
| Prompt-Quelle | [`prompts/ball-neon-core.txt`](../prompts/ball-neon-core.txt) — Befüllung des PRD §23.7 Ball-Skin-Templates mit Neon-Core-Specs aus PRD §3.3.2 (klassischer leuchtender Arcade-Ball, Default). Cyan + light-blue Palette als visueller Anchor des gesamten Skin-Rosters. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 1.54 → nachher 1.18) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 01** (User-Pick + MASCHIN-Empfehlung übereinstimmend). V01 hat den klareren Halo-Gradient und kompakteren Center-Spot. V02's Dithering wirkt dekorativ-rauh, aber bei Spielfläche-Renderung würde der Dither-Noise an der Kante die Ball-Silhouette unschärfer machen — direkt gegen PRD §6.3 "Ball höchste visuelle Priorität". |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/ball-neon-core.txt assets/balls/neon-core.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Ball 1 von 5 (Pixel Comet defer). Neon Core ist der Default-Pong-Ball dieses Universums — Cyan-Halo + weiß-heißer Kern als visuelle Konstante des MVP.
- Cyan-Familie tonalisch verbunden mit Hero/Startscreen, Neon Grid Court, Orbital Arcade Deck — der Default-Ball in der Default-Arena als visuell konsistentes Standard-Erlebnis.
- Erstes Asset der Ball-Klasse: Pattern-Hold der `rd_pro__scifi`-Pipeline auch für isolated-on-dark Single-Object-Subjects bestätigt (vorher überwiegend Charakter-Cards und Arena-Backgrounds).

---

## 2026-04-28 · Run 11 — Arena 3: Laser Alley

| Feld | Wert |
|---|---|
| Asset (final) | `assets/arenas/laser-alley.png` (256×256) + `assets/arenas/laser-alley-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Symmetrischer Korridor: Boden + Wände + Decke + Far-Wall, vertikale Magenta-Laser-Streifen-Wände links und rechts, durchgezogene Mittellinie top-to-bottom, Cyan-Boden-Reflexionen als Rim-Light-Counter, Vanishing-Point in der Tiefe). |
| Asset (archive) | `assets/archive/arenas/laser-alley-01.png` + `-upscaled.png` (Triangle-Vanishing-Point: zwei konvergierende Magenta-Laser-Wände treffen sich an der Spitze, Spielfeld verjüngt sich nach oben — sehr dramatisch komponiert, aber Gameplay-Lesbarkeitsproblem: oben am Bildrand fast keine Horizontalbreite für Paddles). |
| Prompt-Quelle | [`prompts/arena-laser-alley.txt`](../prompts/arena-laser-alley.txt) — Befüllung des PRD §23.8 Arena-Background-Templates mit Specs aus PRD §16.5 (dunklere intensivere Finalarena, Laserlinien, hoher Kontrast, stärkstes Finalgefühl im MVP). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit allen vorherigen Assets) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 1.90 → nachher 1.54) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: V01 hat einen geometrischen Gameplay-Blocker (verjüngte Spielfläche oben). V02 erfüllt jede PRD §16.5 + §23.8 Anforderung — durchgezogene Mittellinie, leeres zentrales Spielfeld, Laser bleiben strikt an den Seitenwänden, dramatische Korridor-Geometrie ohne Spielfeld-Klarheit zu opfern. Visuell stärkstes der vier neuen Bilder — passt zum "stärksten Arena-Eindruck im MVP". |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/arena-laser-alley.txt assets/arenas/laser-alley.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Arena 3 von 3 — MVP-Arena-Coverage vollständig (Neon Grid Court · Orbital Arcade Deck · Laser Alley).
- V02 traf die Korridor-Architektur-Vorgabe aus dem Prompt direkt: Boden + Decke + zwei Seitenwände + Far-Wall = echtes Arena-Volumen.
- V01's Triangle-Vanishing-Point ist visuell beeindruckend aber funktional ungeeignet als Spielfeld — gutes Beispiel für "Bild-Schönheit ≠ Gameplay-Lesbarkeit". Klar archiviert, kein Rework.
- Cyan-Boden-Reflexionen als Rim-Light-Counter waren explizit im Prompt — Modell hat das sauber als horizontale Cyan-Reflexionen am Bodenkante umgesetzt. Verbindet die Magenta-dominierte Finalarena tonal mit den Cyan-dominierten anderen Arenen.

---

## 2026-04-28 · Run 10 — Arena 2: Orbital Arcade Deck

| Feld | Wert |
|---|---|
| Asset (final) | `assets/arenas/orbital-arcade-deck.png` (256×256) + `assets/arenas/orbital-arcade-deck-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (Octagonal Observation-Deck mit Saturn-Ring-Planet, Orbit-Bogen, Sternennebel im Cockpit-Fenster, klare cyan Mittellinie auf dunklem Deck). |
| Asset (archive) | `assets/archive/arenas/orbital-arcade-deck-02.png` + `-upscaled.png` (Breiteres Sky-Vista mit mehreren Planeten + Saturn rechts, dramatischere Cosmic-Komposition — aber Split-Floor cyan-links/magenta-rechts mit Court-Markings = 2P-Vibe, identische Disqualifikation wie Neon Grid Court V01). |
| Prompt-Quelle | [`prompts/arena-orbital-arcade-deck.txt`](../prompts/arena-orbital-arcade-deck.txt) — Befüllung des PRD §23.8 Arena-Background-Templates mit Specs aus PRD §16.4 (Sci-Fi-Variante, Raumstationsarena mit Blick auf Sterne / Orbit-Linien / fernem Planetenring, ohne visuelle Überladung). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit allen vorherigen Assets) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 2.26 → nachher 1.90) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 01** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: V02 hat denselben Split-Floor-Lapsus wie Neon Grid Court V01 (cyan-links/magenta-rechts = 2P-Vibe), zusätzlich Court-Boundary-Lines = visuelle Überladung gegen PRD §16.4. V01 erfüllt die Vorgaben sauber: Saturn-Ring-Planet als ikonisches "ferner Planetenring"-Detail, ruhige Cosmic-Atmosphäre, klare cyan Mittellinie, Window-Frame konsistent mit Roster-Card-HUD-Vokabular (Brakk-9 V02, Lyra Byte V01). |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/arena-orbital-arcade-deck.txt assets/arenas/orbital-arcade-deck.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Arena 2 von 3. Pattern-Hold: Split-Floor cyan-magenta wird konsequent als 2P-Hint disqualifiziert — Auswahlprinzip von Run 4 (Neon Grid Court) trägt unverändert.
- V01's heavy octagonal Window-Frame ist initial visuell schwer, aber konsistent mit den Roster-Cards-Frames (HUD-Vokabular). Trägt zur visuellen Kohärenz bei.
- V01's Mittellinie endet im T-Knick (geht nicht ganz top-to-bottom) — kleiner Schwachpunkt gegenüber Neon Grid Court V02. Akzeptabel weil die T-Komposition den "Deck-Panel"-Look unterstützt; im Spiel wird ohnehin die Game-Engine-Mittellinie darüber gerendert.
- Saturn-Ring + Orbit-Bogen waren emergente Details — der Prompt sagte "stars, faint orbital trails, distant ringed planet"; das Modell hat alle drei in einer kompakten Komposition kombiniert.

---

## 2026-04-28 · Run 9 — Character Portrait: Glitch-Ø

| Feld | Wert |
|---|---|
| Asset (final) | `assets/characters/glitch-zero.png` (256×256) + `assets/characters/glitch-zero-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Android-Gesicht mit mechanischen Nähten, normales linkes Auge, Cyan-Pixel-Disintegration rechtes Auge). |
| Asset (archive) | `assets/archive/characters/glitch-zero-01.png` + `-upscaled.png` (Ghost-Hologram, scanline corruptions, normale linke Auge, Rot-Orange-Plasma-Explosion rechtes Auge — ghost-haft, atmosphärisch, aber weniger Android-Körper-Feeling). |
| Prompt-Quelle | [`prompts/character-glitch-zero.txt`](../prompts/character-glitch-zero.txt) — Befüllung des PRD §23.5 Templates mit Glitch-Ø-Specs aus PRD §14.8 (Chaos Unit, fehlerhafte Turniereinheit, broken hologram, flickering pixel edges, asymmetric eye, glitch-green/static-white corruption accents). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit gesamtem Roster) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | ~0.36 Credits (Balance vorher ~2.98 → nachher ~2.62) · Hinweis: ein fehlgeschlagener Background-Task-Versuch konnte zusätzlich 0.36 Credits verbraucht haben — exakte Balance nicht verifiziert. |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick 2026-04-28). Begründung: Android-Körper mit mechanischen Nähten + Pixel-Disintegration-Auge ist im Roster einzigartig (einziger Charakter der mechanisch-körperhaft + gleichzeitig korrumpiert wirkt), Cyan-Disintegration-Auge als Single-Point-of-Asymmetry ist präziser als V01's volle Plasma-Explosion-Seite. Passt besser zu PRD-Fiction "corrupted tournament unit". MASCHIN hatte V01 empfohlen; User wählte V02. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-glitch-zero.txt assets/characters/glitch-zero.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Charakter 6 von 6 — MVP-Roster vollständig. Alle sechs Champions generiert, vom User abgenommen, finalisiert und archiviert.
- Background-Task-Doppelrun-Bug: erster Spawn-Versuch (bxkvaluic) produzierten keine Dateien — unklar ob API-Call erfolgte. Sicherheits-Annahme: +0.36 Credits verbraucht ohne Output. Wenn tatsächlich kein API-Call erfolgte, wäre Balance ~0.36 höher.
- V02's Asymmetrie (normales linkes Auge vs. zerfallendes rechtes Auge) ist das stärkste visuell-erzählerische Element im gesamten Roster — wirkt als würde das Wesen mid-render korrumpieren.
- V01's Ghost-Hologram-Körper (transluzente Felder, fehlende Pixel) wäre gut als Intro-Screen oder Horror-Variation einsetzbar (Backlog).

---

## 2026-04-28 · Run 8 — Character Portrait: Rexx Volt

| Feld | Wert |
|---|---|
| Asset (final) | `assets/characters/rexx-volt.png` (256×256) + `assets/characters/rexx-volt-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (Grüne Alien-Haut, breite Schultern, Plasma-Vortex-Gürtel, wild elektrisches Haar, goldener Frame). |
| Asset (archive) | `assets/archive/characters/rexx-volt-02.png` + `-upscaled.png` (zweite Variante archiviert). |
| Prompt-Quelle | [`prompts/character-rexx-volt.txt`](../prompts/character-rexx-volt.txt) — Befüllung des PRD §23.5 Templates mit Rexx-Volt-Specs aus PRD §14.5 (Striker, Plasma Colony Voltara Prime, breitschultiger Alien-Champion, Energiegürtel, Blitzfrisur, Yellow/Orange Plasma-Accents). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit gesamtem Roster) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 3.34 → nachher 2.98) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 01** (User-Pick: "Rex Volt 1"). Grüne Alien-Skin + Plasma-Vortex-Gürtel + wild elektrisches Haar verkauft die PRD-Fiction "Plasma Hammer" visuell direkt. Gold-Frame passt zur Voltara-Prime-Energie-Ästhetik. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-rexx-volt.txt assets/characters/rexx-volt.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Charakter 5 von 6. Rexx Volt als bewusster visueller Kontrast zu Captain Sol (Plasma-Drama vs. Stille) und zu Lyra Byte (rohe Energie vs. präzise Kontrolle).
- Fünfter Charakter in Folge: 1 Iteration, User-Pick final, kein Rework nötig. Robustheit der Prompt-Templates (PRD §23.5) + `rd_pro__scifi` Style bestätigt.

---

## 2026-04-28 · Run 7 — Character Portrait: Captain Sol

| Feld | Wert |
|---|---|
| Asset (final) | `assets/characters/captain-sol.png` (256×256) + `assets/characters/captain-sol-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Goldfish-Bowl-Helm mit goldenem Randring, silbergraues Haar, ruhiges Halblächeln, HUD-Panels im Hintergrund, Stern-Patches auf beiden Schultern). |
| Asset (archive) | `assets/archive/characters/captain-sol-01.png` + `-upscaled.png` (Versiegelter weißer Bubble-Helm, älteres Gesicht durch Visier, geometrisches Stern-Emblem auf Schulter, warme Amber-Lichtknoten im Hintergrund — stoisch, distanziert). |
| Prompt-Quelle | [`prompts/character-captain-sol.txt`](../prompts/character-captain-sol.txt) — Befüllung des PRD §23.5 Templates mit Captain-Sol-Specs aus PRD §14.6 (Balanced Pilot, Sol Federation Training Fleet, Retro-Astronaut, weißer Helm, Schulterstreifen, ruhige Haltung). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit gesamtem Roster) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 3.70 → nachher 3.34) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: Goldfish-Bowl ist die einzigartigste Helm-Silhouette im Roster (einziger Charakter ohne geschlossenes Visier/Visor), Gold-Ring ist ein emergenter "Sol/Solar"-Referenz-Detail, Silberhaar + ruhiges Halblächeln verkauft die PRD-Fiction "very long patience bar" visuell besser als das stoische Sealed-Helmet V01. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-captain-sol.txt assets/characters/captain-sol.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Charakter 4 von 6 für MVP-Roster. Captain Sol als bewusster Kontrast zu allen anderen: kein Robot, keine Spezialausrüstung, kein Drama — nur ein erfahrener Veteran im klassischen Raumanzug.
- Der goldene Helm-Ring in V02 war emergent (Prompt sagte "star-yellow accents", Modell interpretierte das als Gold-Rim am Helm-Anschluss). Passt perfekt zu "Sol" (Sonne, Gold) — narrative Konsistenz als Bonus.
- Viermal in Folge: Empfehlung und User-Pick übereinstimmend. Roster-Card-Energie + visuelle Distinctiveness als Auswahlprinzip hält.
- MVP-Roster: 4 von 6 Charakteren durch (Nova Vex Speedster · Brakk-9 Defender · Lyra Byte Technician · Captain Sol Balanced Pilot). Verbleibend: Rexx Volt Striker + Glitch-Ø Chaos Unit.

---

## 2026-04-28 · Run 6 — Character Portrait: Lyra Byte

| Feld | Wert |
|---|---|
| Asset (final) | `assets/characters/lyra-byte.png` (256×256) + `assets/characters/lyra-byte-upscaled.png` (1024×1024) — User-Pick: **Variante 01** (Hooded figure, Scan-Line-Visor mit Cyan/Magenta Trajectory-Arrows, Circuit-Trace-Mantel, Wrist-Terminal mit Vektor-Diagramm). |
| Asset (archive) | `assets/archive/characters/lyra-byte-02.png` + `-upscaled.png` (Matrix-Grid-Visor, grüne Code-Terminal-Screens im Hintergrund, dunklere Palette — trifft PRD-Fiction "debugging under neon light" atmosphärisch stark, aber zu dunkel für Roster-Card-Energie-Konsistenz). |
| Prompt-Quelle | [`prompts/character-lyra-byte.txt`](../prompts/character-lyra-byte.txt) — Befüllung des PRD §23.5 Templates mit Lyra-Byte-Specs aus PRD §14.4 (Technician, Data Moon L-404, Datenbrille, Kabelmantel, Mini-Terminal). Text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit Hero, Nova Vex, Brakk-9, Arena 1) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 4.06 → nachher 3.70) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 01** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: Trajectory-Arrows im Scan-Line-Visor sind ikonisch für die Winkel-Spezialistin, Wrist-Terminal-Vektor-Diagramm passt direkt zu PRD §14.4 "reads ball trajectories", vibrante Energie konsistent mit Nova Vex und Brakk-9 Roster-Cards. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-lyra-byte.txt assets/characters/lyra-byte.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Charakter 3 von 6 für MVP-Roster. Technician als bewusster Kontrast: weder Pilot noch Roboter — eine Signalingenieurin die das Spielfeld liest wie Code.
- Beide Varianten lieferten Daten-Goggles + Wrist-Terminal + Circuit-Coat aus dem Prompt sauber. Die Trajectory-Arrows im Visor waren ein emergenter Detail (Variante 01) — nicht explizit im Prompt gefordert, aber direkt PRD-aligned ("reads ball trajectories like machine code").
- Variante 02's Code-Terminal-Screens im Hintergrund sind atmosphärisch stark und hätten gut als Charakter-Intro-Screen oder Profilseite funktioniert — ähnliches Archiv-Potenzial wie Brakk-9 Variante 01.
- Dreimal in Folge: Empfehlung und User-Pick übereinstimmend. Roster-Card-Energie-Konsistenz als Auswahlprinzip hält.

---

## 2026-04-28 · Run 5 — Character Portrait: Brakk-9

| Feld | Wert |
|---|---|
| Asset (final) | `assets/characters/brakk-9.png` (256×256) + `assets/characters/brakk-9-upscaled.png` (1024×1024) — User-Pick: **Variante 02** (Roster-Card-Layout mit HUD-Frame und drei kleinen Stat-Icons oben rechts: Lightning / Downward-Arrow / Dial — emergent Speed/Reach/Power-Andeutungen). |
| Asset (archive) | `assets/archive/characters/brakk-9-01.png` + `-upscaled.png` (Full-body Defender-Poster, octagonal Frame, hazard-banner über die ganze Brust, Magenta-Cyan-Rim-Light, on-grid stehend — sehr ikonischer Hero-Poster, könnte später als Charakter-Intro oder Winner-Screen-Pose dienen). |
| Prompt-Quelle | [`prompts/character-brakk-9.txt`](../prompts/character-brakk-9.txt) — Befüllung des PRD §23.5 Templates mit Brakk-9-Specs aus PRD §14.3 (Defender, Box-Body, Single-Eye, hazard-stripes, panzerplatten armor). Wieder text-frei. |
| API-Modell | `rd_pro` |
| Style | `rd_pro__scifi` (Konsistenz mit Hero, Nova Vex, Arena 1) |
| Auflösung | 256×256 |
| Varianten | 2 |
| API-Cost | 0.36 Credits (Balance vorher 4.42 → nachher 4.06) |
| Cost-Check vorher | ✅ ja |
| Auswahl | **Variante 02** (User-Pick + MASCHIN-Empfehlung übereinstimmend). Begründung: Roster-Card-Konsistenz mit Nova Vex 01 (auch Roster-Card-Layout), emergent Stat-Icon-HUD passt narrativ direkt zu PRD §13.2 Stat-Konzept (Speed, Reach, Control, Power), Tournament-Select-Screen-Vibe klarer. |
| Iteration-Runde | 1 von max 3 |
| Reproduzieren | `./scripts/generate-asset.sh prompts/character-brakk-9.txt assets/characters/brakk-9.png rd_pro__scifi 256 256 false 2` |

**Notes:**
- Charakter 2 von 6 für MVP-Roster. Defender als bewusster visueller Kontrast zur Speedster Nova Vex (boxy industrial vs sleek pilot, single-eye-cyan vs visor-helm, hazard-stripes vs neon-jacket).
- Beide Varianten lieferten den boxy-defender-with-single-eye-and-hazard-stripes brief sauber. Pattern-Hold: PRD §14.3 Visual-Cues funktionieren als Prompt-Input direkt.
- Variante 01 ergänzte unprompted eine "stehend auf Tron-Grid"-Komposition — würde gut als Charakter-Intro-Screen oder Winner-Screen-Pose funktionieren (Backlog-Idea: T-character-intro-screen-poses).
- Variante 02 ergänzte unprompted drei kleine Stat-Icons (Lightning / Down-Arrow / Dial) im HUD — narrative Bonus passt zu PRD-Stats. AI-noise-glyphs an den Frame-Ecken sind weiter ein bekanntes Issue (T-retro-pong-card-frame-design Backlog), beide Varianten betroffen.
- Pattern bestätigt (3. Asset-Generation in Folge mit identischer Konfiguration): rd_pro__scifi + 256×256 + 2 Varianten + cost-check first ist die robuste Default-Konfiguration.

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
