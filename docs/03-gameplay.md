# Gameplay

> **Game Modes, CPU-Verhalten, Ball-Konzept und User Interface.**
>
> Enthält: Game Modes, CPU-Konzept, Ball-Konzept und User Interface. *(Original-PRD: §11, §12, §17, §18)*

---

## 3.1 Game Modes

### Free Match vs CPU

Der Spieler wählt:

1. eigenen Charakter,
2. CPU-Gegner,
3. Arena,
4. Ball-Skin,
5. Punktelimit,
6. Schwierigkeitsgrad.

Danach startet ein einzelnes Match.

### Punktelimit im Free Match

Der Spieler kann wählen:

| Option | Bedeutung |
|---|---|
| 5 Punkte | sehr kurze Runde |
| 7 Punkte | Standardrunde |
| 11 Punkte | klassischeres Arcade-Gefühl |

### Mini Tournament vs CPU

Der Spieler wählt einen Charakter und spielt danach ein kleines Turnier gegen CPU-Gegner.

Der Turniermodus bleibt bewusst schlank.

### Turnierablauf

| Phase | Gegner | Arena | Punktelimit |
|---|---|---|---:|
| Runde 1 | zufälliger CPU-Gegner | Neon Grid Court | 5 |
| Runde 2 | anderer CPU-Gegner | Orbital Arcade Deck | 5 |
| Finale | rivalitätsbasierter CPU-Gegner | Laser Alley | 7 |

### Turnierregeln

1. Keine komplexe Turniermatrix.
2. Keine simulierten CPU-gegen-CPU-Matches.
3. Keine Speicherstände.
4. Keine freischaltbaren Inhalte.
5. Keine Zwischensequenzen.
6. Drei gespielte Matches reichen für einen Turnierlauf.
7. Nach dem Finale erscheint ein Winner-Screen.

## 3.2 CPU-Konzept

### Grundprinzip

Die CPU soll einfach, verständlich und fair wirken. Sie darf nicht perfekt spielen.

Der MVP nutzt eine Kombination aus:

1. charakterabhängigem Spielstil,
2. drei Schwierigkeitsstufen.

### Schwierigkeitsstufen

| Stufe | Verhalten |
|---|---|
| Easy | CPU reagiert langsamer und macht sichtbare Fehler |
| Normal | CPU spielt solide, aber klar schlagbar |
| Hard | CPU reagiert besser, bleibt aber fair |

### CPU-Spielprofile

| Profil | CPU-Verhalten |
|---|---|
| Speedster | reagiert schnell, übersteuert aber gelegentlich |
| Defender | deckt viel Fläche ab, reagiert aber träger |
| Technician | sucht kontrollierte Winkel, spielt weniger aggressiv |
| Striker | spielt druckvoll, macht aber mehr Fehler bei spitzen Winkeln |
| Balanced Pilot | solide, wenige Extreme, gut berechenbar |
| Chaos Unit | unberechenbare Winkel, inkonsistente Entscheidungen |

## 3.3 Ball-Konzept

### Standard-Ball

Der Standard-Ball ist ein 80er-Arcade-Ball mit Neon-Trail.

Er wirkt wie ein kleiner Laser-Puck oder Energieball, bleibt aber funktional klar lesbar.

### Ball-Skins im MVP

Der MVP enthält fünf auswählbare Ball-Skins.

| Ball-Skin | Look | Mechanik |
|---|---|---|
| Neon Core | klassischer leuchtender Arcade-Ball | neutral |
| Laser Puck | flacher, schneller Laser-Look | neutral |
| Plasma Orb | runde Sci-Fi-Energiekugel | neutral |
| Pixel Comet | kleiner Komet mit Trail | neutral |
| Grid Spark | eckiger Pixel-Funken | neutral |

### Ball-Regeln

1. Ball-Skins sind im MVP rein visuell.
2. Ball-Skins dürfen keine spielmechanischen Vorteile bringen.
3. Ball muss immer klar sichtbar bleiben.
4. Trail-Effekt darf Richtung und Kollisionspunkt nicht verschleiern.
5. Charakterabhängige Ballfähigkeiten sind nicht Teil des MVP.

## 3.4 User Interface

### UI-Grundstil

Das UI soll sich wie ein Arcade-Automat anfühlen, nicht wie ein modernes SaaS-Menü.

Eigenschaften:

1. Pixel-Schrift.
2. Dunkler Hintergrund.
3. Neon-Akzente.
4. Klare Menüführung.
5. Schnelle Lesbarkeit.
6. Keine überladenen Effekte.

### Startscreen

Der Startscreen ist inszeniert, aber nicht überladen.

Elemente:

1. Titel: `Retro Pong Circuit`.
2. Untertitel: `Last Arcade of the Galaxy`.
3. Dunkler Neon-Sci-Fi-Hintergrund.
4. Leicht animiertes Neonraster.
5. Leuchtender Ball mit Trail.
6. Zwei stilisierte Paddles.
7. Kurzes Arcade-Menü.

### Hauptmenü

Menüoptionen:

1. `Free Match`
2. `Mini Tournament`
3. `Options`
4. `Credits`

### Character Select

Die Charakterauswahl wird als Turnier-Roster mit sechs Charakterkarten dargestellt.

Jede Karte enthält:

1. Sprite.
2. Name.
3. Herkunft.
4. Profil.
5. Kurzbeschreibung.
6. Arcade-Balken für Speed, Reach, Control, Power.
7. Paddle-Vorschau.

### Options-Menü

Das Options-Menü bleibt im MVP bewusst einfach.

| Einstellung | Optionen |
|---|---|
| Music | On / Off |
| Sound FX | On / Off |
| Free Match Point Limit | 5 / 7 / 11 |
| Difficulty | Easy / Normal / Hard |
| Ball Skin | auswählbare Ball-Skins |

Nicht enthalten:

1. keine komplexen Grafikeinstellungen,
2. keine detaillierten Steuerungsoptionen,
3. keine Accessibility-Sektion,
4. keine Online- oder Account-Einstellungen,
5. keine Speicherprofil-Verwaltung.

### Credits

Credits enthalten:

| Bereich | Text / Inhalt |
|---|---|
| Game Concept | Retro Pong Circuit |
| Build Tooling | Built with Claude Code |
| Pixel Art | Pixel art generated with Retro Diffusion |
| Music / SFX | Music and sound effects attribution, depending on source |
| Inspiration | Inspired by classic arcade paddle games |


---

← [Zurück zum README](../README.md) · Vorher: [02-mvp-scope.md](02-mvp-scope.md) · Weiter: [04-characters.md](04-characters.md)
