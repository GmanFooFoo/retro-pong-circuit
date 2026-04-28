# Art & Audio

> **Branding, Visual Direction, Audio-Konzept und die komplette Retro-Diffusion-Asset-Pipeline.**
>
> Diese Datei bündelt aus der Original-PRD die Sektionen **§7 Branding (Titel, Untertitel, Wirkung)**, **§19 Audio-Konzept**, **§20 Visual Direction**, **§21 MVP-Asset-Scope**, **§22 Rolle Kriterienentwickler** und **§23 Retro Diffusion Prompts & Asset Criteria**. Komplette Asset-Pipeline mit Prompt-Templates für alle Asset-Typen.

---

## 7. Titel und Branding

## 7.1 Haupttitel

`Retro Pong Circuit`

## 7.2 Untertitel

`Last Arcade of the Galaxy`

## 7.3 Wirkung

Der Titel soll folgende Assoziationen auslösen:

1. Retro-Arcade.
2. Paddle-Ball-Spiel.
3. 80er-Sci-Fi.
4. Turnierstruktur.
5. Leicht epischer, aber nicht zu ernster Ton.

## 7.4 Verwendungsorte

Der Titel wird verwendet auf:

1. Startscreen.
2. Credits.
3. PRD.
4. Asset-Briefings.
5. Retro-Diffusion-Prompts.
6. Projektordnern und Dokumentation.

## 19. Audio-Konzept

## 19.1 Musikstil

Die Musik ist ein Hybrid aus:

1. Chiptune-Melodie,
2. Synthwave-Bass,
3. Synthwave-Drums,
4. 80er-Arcade-Energie.

## 19.2 Eigenschaften

| Element | Entscheidung |
|---|---|
| Grundstil | 80er-Arcade-Hybrid |
| Melodie | Chiptune / 8-Bit |
| Rhythmus | Synthwave-Drums |
| Bass | treibender Synth-Bass |
| Stimmung | energetisch, retro, spielbar |
| Loop-Länge | ca. 30–60 Sekunden |
| Ziel | Match fühlt sich wie ein Neon-Arcade-Duell an |

## 19.3 Musik im MVP

| Audio-Element | Status |
|---|---|
| Menü-Musik | MVP |
| Match-Musik | MVP |
| Finale-Musik | optional MVP, sonst V2 |
| Arena-spezifische Musik | V2 |
| dynamische Musik | V2/V3 |

## 19.4 Soundeffekte

| Effekt | Beschreibung |
|---|---|
| Paddle Hit | kurzer digitaler Pong-/Laser-Klick |
| Wall Bounce | heller Arcade-Bleep |
| Point Scored | kurzer Score-Jingle |
| Match Start | kurzer Ready-Sound |
| Match Win | kurzer Victory-Jingle |
| Menu Move | leiser UI-Bleep |
| Menu Confirm | kräftiger Confirm-Sound |

## 19.5 Audio-Regeln

1. Musik darf nicht nervig sein.
2. Loops müssen kurz und sauber wiederholbar sein.
3. Soundeffekte müssen klar und arcade-artig sein.
4. Keine Nutzung fremder Originalsounds.
5. Alle Audioquellen müssen lizenztechnisch sauber sein.

## 20. Visual Direction

## 20.1 Stil

Der visuelle Stil ist:

`Modern pixel-art retro style with 80s arcade sci-fi aesthetics.`

## 20.2 Keine strenge Hardware-Limitierung

Das Spiel muss nicht exakt wie NES, C64 oder Game Boy aussehen.

Stattdessen gilt:

1. Retro-Anmutung.
2. Moderne Lesbarkeit.
3. Saubere Pixel-Art.
4. Starke Silhouetten.
5. Dunkle Hintergründe.
6. Kräftige Neon-Akzente.
7. Kein unnötiger historischer Purismus.

## 20.3 Farbund Kontrastprinzip

| Element | Entscheidung |
|---|---|
| Hintergrund | dunkel |
| Hauptakzente | kräftige Neonfarben |
| Stimmung | 80er-Arcade, Synthwave, Retro-Sci-Fi |
| Spielfeld | klar lesbar |
| Ball | hell, kontrastreich, mit Neon-Trail |
| Paddles | deutlich vom Hintergrund abgesetzt |
| UI | helle Pixel-Schrift, klare Arcade-Balken |

## 20.4 Lesbarkeitsregeln

1. Ball hat höchste visuelle Priorität.
2. Paddles haben zweithöchste Priorität.
3. Score muss jederzeit lesbar sein.
4. Charaktersprites dürfen das Spielfeld nicht stören.
5. Hintergründe bleiben atmosphärisch, aber zurückhaltend.
6. Effekte bleiben kontrolliert.

## 21. MVP-Asset-Scope

## 21.1 Asset-Liste

| Asset-Typ | Anzahl | Zweck |
|---|---:|---|
| Charakter-Sprites | 6 | sichtbare Spielfiguren / Roster |
| Charakter-Portraits / Auswahlkarten | 6 | Character Select / Turnier-Roster |
| Paddle-Designs | 6 | visuelle Zuordnung pro Charakter |
| Ball-Skins | 5 | auswählbare Ball-Varianten |
| Arenen / Hintergründe | 3 | visuelle Match-Umgebungen |
| UI-Elemente | 1 Set | Menüs, Score, Balken, Buttons |
| Startscreen-Key-Visual | 1 | Titelbild / Hauptmenü |
| Winner-Screen / Tournament-Win-Visual | 1 | Abschlussbild nach Turniersieg |
| Icons / kleine Menümarker | kleines Set | Cursor, Auswahlmarker, Optionssymbole |

## 21.2 Asset-Prinzip

Alle Assets müssen zur gleichen visuellen Richtung passen:

`Modern pixel-art retro style, dark neon look, 80s arcade sci-fi, strong readability, no protected legacy arcade branding.`

## 22. Rolle: Kriterienentwickler

## 22.1 Zweck der Rolle

Der Kriterienentwickler sorgt dafür, dass Retro-Diffusion-Assets nicht zufällig entstehen, sondern anhand klarer Kriterien entwickelt, geprüft und iteriert werden.

## 22.2 Aufgaben

Der Kriterienentwickler:

1. definiert die visuellen Leitplanken für alle Assets,
2. erstellt Prompt-Templates für Retro Diffusion,
3. bewertet Asset-Ergebnisse nach klaren Kriterien,
4. entscheidet zwischen `usable`, `needs iteration` und `reject`,
5. achtet auf Konsistenz zwischen Charakteren, Arenen, UI und Startscreen,
6. achtet auf Lesbarkeit im Spielkontext,
7. verhindert zu starke Nähe zu fremden Marken, Originalgrafiken oder bekannten Legacy-Spielen,
8. dokumentiert, welche Asset-Version final verwendet wird.

## 22.3 Asset-Abnahme-Status

| Status | Bedeutung |
|---|---|
| usable | Asset passt und kann in den MVP übernommen werden |
| needs iteration | Asset ist grundsätzlich gut, braucht aber Nacharbeit |
| reject | Asset passt nicht zum Projekt oder verletzt Kriterien |

## 22.4 Workflow

```text
Concept idea
→ Asset criteria
→ Retro Diffusion prompt
→ Generated asset candidates
→ Criteria review
→ Iteration if needed
→ Final asset selection
→ Game integration
```

## **23. Retro Diffusion Prompt & Asset Criteria**

## **23.1 Visual Style Baseline**

Alle Asset-Prompts sollen sich an folgender Basis orientieren:

```text
modern pixel-art retro style, 80s arcade sci-fi, dark neon palette, strong silhouettes, clean readable shapes, high contrast, arcade game asset, no photorealism, no 3D render, no brand logos, no copyrighted characters, no text unless explicitly requested
```

## **23.2 Global Asset Criteria**

Ein Asset ist brauchbar, wenn:

1. es sofort als Pixel-Art lesbar ist,
2. es zum dunklen Neon-Sci-Fi-Stil passt,
3. es nicht zu detailliert oder matschig wirkt,
4. es bei kleiner Darstellung noch erkennbar bleibt,
5. es keine fremden Logos, Schriftzüge oder Marken enthält,
6. es für ein Spiel-UI verwendbar wirkt,
7. es klare Silhouetten hat,
8. es zum restlichen Asset-Set passt.

## **23.3 Negative Criteria**

Ein Asset wird abgelehnt, wenn:

1. es fotorealistisch wirkt,
2. es wie 3D-Rendering aussieht,
3. es zu weich, malerisch oder unscharf wirkt,
4. es geschützte Marken, Logos oder erkennbare Fremdfiguren enthält,
5. es zu viel Text enthält,
6. Ball, Paddle oder Charakter bei Spielgröße nicht erkennbar wären,
7. es nicht zum 80er-Arcade-Sci-Fi-Look passt,
8. es historische Arcade-Marken zu direkt imitiert,
9. es visuell zu überladen ist,
10. es das Gameplay erschweren würde.

## **23.4 Prompt Template: Character Sprite**

```text
Create a small pixel-art game character sprite for a modern retro 80s arcade sci-fi game.

Character:
[CHARACTER NAME]
Role:
[ROLE / PROFILE]
Description:
[SHORT CHARACTER DESCRIPTION]

Style:
modern pixel-art retro style, 80s arcade sci-fi, dark neon accents, strong readable silhouette, clean pixel shapes, small game sprite, arcade character, high contrast, limited but vibrant neon palette

Requirements:
full body sprite, readable at small size, front or slight three-quarter view, transparent or simple dark background, no text, no logo, no copyrighted character, no photorealism, no 3D render
```

## **23.5 Prompt Template: Character Portrait / Roster Card**

```text
Create a pixel-art character portrait card for an 80s arcade sci-fi tournament roster.

Character:
[CHARACTER NAME]
Role:
[ROLE / PROFILE]
Personality:
[PERSONALITY / FICTION]
Visual cues:
[HELMET / ROBOT BODY / ALIEN FEATURES / GLITCH EFFECTS]

Style:
modern pixel-art retro style, dark neon arcade UI, sci-fi tournament card, strong silhouette, expressive face or head shape, high contrast, clean readable pixel art

Card feel:
arcade character select screen, 80s neon interface, compact composition, no external logos, no brand references, no unreadable text
```

## **23.6 Prompt Template: Paddle Design**

```text
Create a pixel-art paddle design for a retro sci-fi arcade paddle game.

Character association:
[CHARACTER NAME]
Profile:
[ROLE / PROFILE]
Paddle personality:
[SLIM / HEAVY / TECHNICAL / PLASMA / CLASSIC / GLITCHED]

Style:
modern pixel-art retro style, 80s neon sci-fi, clean readable shape, high contrast, arcade game asset, simple vertical paddle, distinctive silhouette, usable in gameplay

Requirements:
must be readable during fast gameplay, no text, no logo, no copyrighted references, no excessive details, no photorealism, no 3D render
```

## **23.7 Prompt Template: Ball Skin**

```text
Create a pixel-art arena background for a modern retro 80s arcade sci-fi paddle game.

Arena:
[ARENA NAME]
Description:
[ARENA DESCRIPTION]

Style:
modern pixel-art retro style, dark neon palette, 80s arcade sci-fi, high contrast, clean geometric shapes, atmospheric but not distracting, readable gameplay space

Gameplay requirements:
background must not overpower ball or paddles, no bright clutter near play area, clear center field, suitable for fast arcade gameplay, no logos, no copyrighted references, no text unless explicitly requested
```

## **23.8 Prompt Template: Arena Background**

```text
Create a pixel-art arena background for a modern retro 80s arcade sci-fi paddle game.

Arena:
[ARENA NAME]
Description:
[ARENA DESCRIPTION]

Style:
modern pixel-art retro style, dark neon palette, 80s arcade sci-fi, high contrast, clean geometric shapes, atmospheric but not distracting, readable gameplay space

Gameplay requirements:
background must not overpower ball or paddles, no bright clutter near play area, clear center field, suitable for fast arcade gameplay, no logos, no copyrighted references, no text unless explicitly requested
```

## **23.9 Prompt Template: UI Elements**

```text
Create a pixel-art UI element set for a modern retro 80s arcade sci-fi game.

Elements:
menu cursor, selection marker, score digits, stat bars, button frames, small icons, option toggles

Style:
dark neon arcade UI, modern pixel-art retro style, high contrast, readable, clean shapes, 80s sci-fi interface, consistent visual language

Requirements:
usable in game UI, no brand logos, no excessive decoration, no unreadable text, no photorealism, no 3D render
```

## **23.10 Prompt Template: Startscreen Key Visual**

```text
Create a pixel-art key visual for the title screen of an 80s retro sci-fi arcade paddle game.

Title:
Retro Pong Circuit
Subtitle:
Last Arcade of the Galaxy

Scene:
dark neon arcade environment, glowing ball with trail, two stylized paddles, animated-feeling neon grid, sci-fi tournament mood, not overloaded

Style:
modern pixel-art retro style, 80s arcade sci-fi, dark background, strong neon accents, clean composition, high contrast, arcade cabinet title screen feel

Requirements:
title-safe composition, readable central area, no third-party logos, no copyrighted references, no photorealism, no 3D render
```

## **23.11 Prompt Template: Winner Screen**

```text
Create a pixel-art winner screen for an 80s retro sci-fi arcade tournament.

Theme:
Retro Pong Circuit: Last Arcade of the Galaxy

Scene:
victorious arcade champion, neon trophy or glowing circuit emblem, dark sci-fi arena background, celebratory but not overly busy

Style:
modern pixel-art retro style, 80s arcade sci-fi, dark neon palette, high contrast, clean readable composition, tournament victory screen

Requirements:
no third-party logos, no copyrighted references, no photorealism, no 3D render, minimal or no text unless explicitly requested
```

## **23.12 Asset Review Checklist**

Für jedes generierte Asset wird geprüft:

|**Kriterium**|**Frage**|
|---|---|
|Stiltreue|Passt es zu modernem Pixel-Art-Retro-Stil?|
|80er-Sci-Fi|Wirkt es wie dunkle Neon-Arcade-Sci-Fi?|
|Lesbarkeit|Ist es bei Spielgröße erkennbar?|
|Konsistenz|Passt es zum restlichen Asset-Set?|
|Gameplay-Tauglichkeit|Stört es Ball, Paddle oder UI nicht?|
|Originalität|Vermeidet es bekannte Marken, Logos und Fremdfiguren?|
|Qualität|Ist es sauber, klar und nicht matschig?|
|Nutzbarkeit|Kann es direkt oder mit wenig Nacharbeit verwendet werden?|


---

← [Zurück zum README](../README.md) · Vorher: [04-characters-and-arenas.md](04-characters-and-arenas.md) · Weiter: [06-meta.md](06-meta.md)
