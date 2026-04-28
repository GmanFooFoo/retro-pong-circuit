> ⚠️ **Archive — historischer Snapshot vom 2026-04-28**
>
> Diese Datei ist die ungesplittete Original-PRD aus dem Obsidian Vault, exportiert mit JET-TP. Sie dient ausschließlich der Historie und Trace zur Quelle.
>
> **Nicht weiter pflegen.** Aktive Doku liegt in den thematischen Split-Files unter [`docs/`](../). Beim Anlegen neuer Inhalte oder Änderungen: dort, nicht hier.

---

---
title: Retro Pong Circuit - Last Arcade of the Galaxy - Product Requirements Document
version: 0.1
status: Draft
created: 2026-04-28
modified: 2026-04-28
tags:
  - game-design
  - prd
  - retro-pong-circuit
  - 8bit
  - retro-diffusion
  - claude-code
---

# Retro Pong Circuit: Last Arcade of the Galaxy

## Product Requirements Document

## 1. Zweck des Dokuments

Dieses Product Requirements Document beschreibt den fachlichen MVP-Scope für `Retro Pong Circuit: Last Arcade of the Galaxy`.

Das Dokument dient als Grundlage für:
1. die spätere Umsetzung mit Claude Code,
2. das Vibe-Coding des ersten spielbaren Prototyps,
3. die Definition von Retro-Diffusion-Assets,
4. die Arbeit des Kriterienentwicklers,
5. die klare Trennung zwischen MVP, V2 und späteren Erweiterungen.

Technische Architekturentscheidungen sind nicht Bestandteil dieses Dokuments.

## 2. Kurzbeschreibung

`Retro Pong Circuit: Last Arcade of the Galaxy` ist ein eigenständiges 80er-Retro-Sci-Fi-Arcade-Spiel auf Basis einer klassischen Paddle-Ball-Spielmechanik.

Der Spieler tritt mit einem von sechs Retro-Sci-Fi-Champions gegen CPU-Gegner an. Das Spiel kombiniert einfache Arcade-Mechanik, moderne Pixel-Art-Retro-Optik, dunkle Neon-Ästhetik, kurze Matches, leichte Charakterunterschiede und eine kleine Turnierklammer.

Der MVP ist bewusst schlank gehalten. Er soll schnell spielbar, gut verständlich und visuell eigenständig sein.

## 3. Produktvision

`Retro Pong Circuit` soll sich anfühlen wie ein verschollenes Arcade-Spiel aus einer alternativen 80er-Sci-Fi-Zeitlinie: einfach, direkt, schnell verständlich, aber mit genug Charakter, um nicht wie eine reine Kopie klassischer Paddle-Spiele zu wirken.

Die Vision ist nicht, ein komplexes modernes Spiel zu bauen. Die Vision ist ein kleines, charmantes, spielbares Retro-Experiment mit eigener Identität.

## 4. Zielbild des MVP

Der MVP soll ein vollständiges, kleines Spielerlebnis liefern:

1. Startscreen mit Titel und 80er-Neon-Arcade-Stimmung.
2. Auswahl zwischen `Free Match` und `Mini Tournament`.
3. Auswahl eines von sechs Charakteren.
4. Spiel gegen CPU-Gegner.
5. Drei visuell unterschiedliche Arenen.
6. Fünf auswählbare Ball-Skins.
7. Charaktere mit leichten passiven Unterschieden.
8. Englische Ingame-Texte.
9. 80er-Hybrid-Musik aus Chiptune und Synthwave.
10. Klare Legalund Brand-Guardrails.
11. Retro-Diffusion-Asset-Kriterien für konsistente Pixel-Art.

## 5. Zielgruppe

Der MVP richtet sich primär an:

1. Spieler, die einfache Retro-Arcade-Spiele mögen.
2. Personen, die kurze, unkomplizierte Sessions bevorzugen.
3. Freunde und Bekannte im privaten Spielkontext.
4. Entwickler oder Kreative, die den Workflow aus Claude Code, Vibe Coding und KI-generierten Pixel-Art-Assets ausprobieren möchten.
5. Retround 80er-Sci-Fi-Fans.

Das Spiel wird zunächst nicht als kommerzielles Produkt geplant. Trotzdem wird es so konzipiert, dass eine spätere Veröffentlichung nicht durch unsaubere Brandingoder Asset-Entscheidungen erschwert wird.

## 6. Kernprinzipien

## 6.1 Einfachheit vor Feature-Fülle

Das Spiel bleibt nah an der klassischen Paddle-Ball-Mechanik. Der MVP soll nicht durch zu viele Systeme überladen werden.

## 6.2 Lesbarkeit vor visueller Überladung

Ball, Paddles, Score und Spielfeldgrenzen müssen jederzeit klar erkennbar sein. Neon-Effekte und Hintergründe dürfen Atmosphäre schaffen, aber das Spiel nicht verdecken.

## 6.3 Eigenständigkeit vor Nostalgie-Kopie

Das Spiel darf von klassischen Arcade-Paddle-Spielen inspiriert sein, darf aber keine fremden Namen, Logos, Screens, Sounds oder Markenidentitäten kopieren.

## 6.4 Charakter vor Komplexität

Die sechs Charaktere sollen Persönlichkeit haben, aber keine komplexen aktiven Fähigkeiten im MVP. Unterschiede entstehen über passive Werte und Spielgefühl.

## 6.5 Schnelle Sessions

Matches sollen kurz, direkt und wiederholbar sein. Der Spieler soll schnell starten und ohne lange Erklärung spielen können.

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

## 8. Mini-Story

## 8.1 Grundidee

Im Jahr 2088 findet tief im Neon-Sektor das letzte echte Arcade-Turnier der Galaxis statt: der `Retro Pong Circuit`.

Sechs Champions treten in drei Arenen gegeneinander an.

Kein Imperium, keine Flotte, keine Superwaffe entscheidet den Ausgang — nur Paddle, Ball, Reaktion und Nerven.

## 8.2 Story-Scope im MVP

Der MVP enthält:

1. eine kurze Rahmenidee,
2. ein Turnier-Setup,
3. sechs Charaktere mit kurzer Fiction,
4. Rivalitätszeilen vor dem Finale,
5. einen Winner-Screen nach Turniersieg.

Der MVP enthält nicht:

1. keinen Story-Modus,
2. keine Kampagne,
3. keine Dialoge,
4. keine Cutscenes,
5. keine freischaltbaren Story-Kapitel.

## 9. Spielsprache

## 9.1 PRD-Sprache

Das PRD ist auf Deutsch.

## 9.2 Ingame-Sprache

Alle Ingame-Texte sind auf Englisch.

Dazu gehören:

1. Menüs.
2. Charakterbeschreibungen.
3. Rivalitätszeilen.
4. Winner-Screens.
5. Options.
6. Credits.
7. UI-Labels.

## 10. MVP-Scope

## 10.1 Enthalten im MVP

| Bereich | MVP-Umfang |
|---|---|
| Spielmodus 1 | `Free Match vs CPU` |
| Spielmodus 2 | `Mini Tournament vs CPU` |
| Spieleranzahl | 1 Spieler gegen CPU |
| Charaktere | 6 spielbare Retro-Sci-Fi-Champions |
| Charakterwerte | Speed, Reach, Control, Power |
| Stat-Darstellung | Arcade-Balken, keine Zahlen |
| Charakterunterschiede | leichte passive Unterschiede |
| Arenen | 3 visuelle Arenen |
| Ball-Skins | 5 rein visuelle Varianten |
| Musik | 80er-Hybrid aus Chiptune und Synthwave |
| Soundeffekte | Basis-SFX für Hit, Bounce, Score, Start, Win, Menü |
| Sprache | Englisch im Spiel |
| Asset-Erzeugung | Retro Diffusion |
| Asset-Kontrolle | Kriterienentwickler-Rolle |
| Branding | eigenständig, keine offizielle Pong-/Atari-Nähe |

## 10.2 Nicht enthalten im MVP

| Thema | Status |
|---|---|
| Zwei lokale Spieler | V2 oder V3 |
| Online-Multiplayer | nicht MVP |
| aktive Spezialfähigkeiten | V2 |
| Power-ups | V2 |
| Arena-Hindernisse | V2 |
| Arena-Modifikatoren | V2 |
| unterschiedliche Ballphysik je Arena | V2 |
| Boss-Gegner | V2 |
| Story-Modus | nicht MVP |
| Kampagne | nicht MVP |
| komplexe Cutscenes | nicht MVP |
| Account-System | nicht MVP |
| Speicherstände | nicht MVP |
| Leaderboards | später möglich |
| charakter-spezifische Sounds | V2 |
| arena-spezifische Musik | V2 |
| mehrere Charakterwelten | V2 |
| mehrere Tonalitäten / Skin-Packs | V2 |

## 11. Game Modes

## 11.1 Free Match vs CPU

Der Spieler wählt:

1. eigenen Charakter,
2. CPU-Gegner,
3. Arena,
4. Ball-Skin,
5. Punktelimit,
6. Schwierigkeitsgrad.

Danach startet ein einzelnes Match.

## 11.2 Punktelimit im Free Match

Der Spieler kann wählen:

| Option | Bedeutung |
|---|---|
| 5 Punkte | sehr kurze Runde |
| 7 Punkte | Standardrunde |
| 11 Punkte | klassischeres Arcade-Gefühl |

## 11.3 Mini Tournament vs CPU

Der Spieler wählt einen Charakter und spielt danach ein kleines Turnier gegen CPU-Gegner.

Der Turniermodus bleibt bewusst schlank.

## 11.4 Turnierablauf

| Phase | Gegner | Arena | Punktelimit |
|---|---|---|---:|
| Runde 1 | zufälliger CPU-Gegner | Neon Grid Court | 5 |
| Runde 2 | anderer CPU-Gegner | Orbital Arcade Deck | 5 |
| Finale | rivalitätsbasierter CPU-Gegner | Laser Alley | 7 |

## 11.5 Turnierregeln

1. Keine komplexe Turniermatrix.
2. Keine simulierten CPU-gegen-CPU-Matches.
3. Keine Speicherstände.
4. Keine freischaltbaren Inhalte.
5. Keine Zwischensequenzen.
6. Drei gespielte Matches reichen für einen Turnierlauf.
7. Nach dem Finale erscheint ein Winner-Screen.

## 12. CPU-Konzept

## 12.1 Grundprinzip

Die CPU soll einfach, verständlich und fair wirken. Sie darf nicht perfekt spielen.

Der MVP nutzt eine Kombination aus:

1. charakterabhängigem Spielstil,
2. drei Schwierigkeitsstufen.

## 12.2 Schwierigkeitsstufen

| Stufe | Verhalten |
|---|---|
| Easy | CPU reagiert langsamer und macht sichtbare Fehler |
| Normal | CPU spielt solide, aber klar schlagbar |
| Hard | CPU reagiert besser, bleibt aber fair |

## 12.3 CPU-Spielprofile

| Profil | CPU-Verhalten |
|---|---|
| Speedster | reagiert schnell, übersteuert aber gelegentlich |
| Defender | deckt viel Fläche ab, reagiert aber träger |
| Technician | sucht kontrollierte Winkel, spielt weniger aggressiv |
| Striker | spielt druckvoll, macht aber mehr Fehler bei spitzen Winkeln |
| Balanced Pilot | solide, wenige Extreme, gut berechenbar |
| Chaos Unit | unberechenbare Winkel, inkonsistente Entscheidungen |

## 13. Charaktere

## 13.1 Charakterprinzip

Der MVP enthält sechs spielbare Retro-Sci-Fi-Champions.

Jeder Charakter hat:

1. Name.
2. Profil.
3. Herkunft.
4. kurze Fiction.
5. Sprite.
6. Portrait oder Auswahlkarte.
7. eigenes Paddle-Design.
8. Stat-Balken.
9. leicht anderes Spielgefühl.
10. eigenes CPU-Verhalten.

## 13.2 Charakter-Stats

Jeder Charakter besitzt vier Werte:

| Stat | Bedeutung |
|---|---|
| Speed | Wie schnell sich das Paddle bewegt |
| Reach | Wie groß oder verzeihend das Paddle ist |
| Control | Wie gut Ballwinkel kontrollierbar sind |
| Power | Wie stark Rückprall-Intensität oder Ballgeschwindigkeit beeinflusst wird |

## 13.3 Darstellung der Stats

Stats werden als Arcade-Balken dargestellt.

Regeln:

1. Keine Zahlenwerte im UI.
2. Balken müssen schnell vergleichbar sein.
3. Balkenoptik: Pixel-Art, Neon, 80er-Arcade.
4. Intern dürfen präzise Werte genutzt werden.
5. Für Spieler bleibt die Darstellung abstrahiert.

## 13.4 Balancing-Regeln

1. Kein Charakter darf in allen vier Werten stark sein.
2. Jede Stärke braucht eine Schwäche.
3. Unterschiede sollen spürbar, aber nicht unfair sein.
4. Keine aktiven Spezialfähigkeiten im MVP.
5. Keine Power-ups im MVP.
6. Charaktere sollen Flavor und Spielgefühl liefern, aber keine harte Competitive-Meta erzeugen.

## 14. MVP-Roster

## 14.1 Übersicht

| Nr. | Charakter | Profil | Hauptstärke | Hauptschwäche |
|---:|---|---|---|---|
| 1 | Nova Vex | Speedster | Speed | Reach |
| 2 | Brakk-9 | Defender | Reach | Speed |
| 3 | Lyra Byte | Technician | Control | Power |
| 4 | Rexx Volt | Striker | Power | Control |
| 5 | Captain Sol | Balanced Pilot | Ausgewogenheit | keine Spitzenwerte |
| 6 | Glitch-Ø | Chaos Unit | Unberechenbarkeit | Konsistenz |

## 14.2 Nova Vex

| Feld | Inhalt |
|---|---|
| Profil | Speedster |
| Herkunft | Neon Sector 7 |
| Rolle | Hochgeschwindigkeits-Pilotin |
| Spielgefühl | schnell, reaktiv, aber weniger verzeihend |
| Paddle-Design | schlankes Neon-Paddle mit Doppellinie und kurzem Lichtschweif |
| Sprite-Idee | kleine Pilotin mit Visierhelm, leuchtender Jacke und Jet-Boots |
| CPU-Verhalten | reagiert schnell, übersteuert aber gelegentlich |

### Charakter-Fiction

Nova Vex was once a test pilot for experimental light drives. In the Retro Pong Circuit, she is known as the fastest player in the Neon Sector. She does not win through force. She wins through speed, timing, and last-second saves.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | sehr hoch |
| Reach | niedrig |
| Control | mittel |
| Power | mittel |

## 14.3 Brakk-9

| Feld | Inhalt |
|---|---|
| Profil | Defender |
| Herkunft | Outer Ring of the Titan Shipyards |
| Rolle | schwerer Verteidigungsroboter |
| Spielgefühl | stabil, breit, langsam |
| Paddle-Design | breites Schild-Paddle mit Panzerplatten-Optik |
| Sprite-Idee | quadratischer Roboter mit einem Auge, schweren Beinen und Warnstreifen |
| CPU-Verhalten | deckt viel Fläche ab, reagiert verzögert auf schnelle Winkel |

### Charakter-Fiction

Brakk-9 was built to seal space dock gates against meteor strikes. In the Circuit, he does the same thing: he stands in the way. Not elegant. Not fast. Very hard to pass.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | niedrig |
| Reach | sehr hoch |
| Control | mittel |
| Power | mittel |

## 14.4 Lyra Byte

| Feld | Inhalt |
|---|---|
| Profil | Technician |
| Herkunft | Data Moon L-404 |
| Rolle | Signalingenieurin und Winkel-Spezialistin |
| Spielgefühl | präzise, kontrolliert, taktisch |
| Paddle-Design | feines Circuit-Paddle mit Scanlinien und Datenpunkten |
| Sprite-Idee | Pixel-Ingenieurin mit Datenbrille, Kabelmantel und Mini-Terminal |
| CPU-Verhalten | spielt kontrollierte Winkel, erzeugt selten maximale Geschwindigkeit |

### Charakter-Fiction

Lyra Byte reads ball trajectories like old machine code. Her matches look less like sport and more like debugging under neon light. She wins by making opponents stand in exactly the wrong place.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | mittel |
| Control | sehr hoch |
| Power | niedrig |

## 14.5 Rexx Volt

| Feld | Inhalt |
|---|---|
| Profil | Striker |
| Herkunft | Plasma Colony Voltara Prime |
| Rolle | Energie-Schläger und Show-Off |
| Spielgefühl | druckvoll, aggressiv, weniger präzise |
| Paddle-Design | kurzes, massives Plasma-Paddle mit pulsierender Kante |
| Sprite-Idee | breitschultriger Alien-Champion mit Energiegürtel und Blitzfrisur |
| CPU-Verhalten | spielt aggressiv, beschleunigt Ballwechsel, macht Fehler bei spitzen Winkeln |

### Charakter-Fiction

Rexx Volt does not play to score. He plays to make impacts. His fans call him the Plasma Hammer. His opponents usually say nothing, because they are busy chasing the ball.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | niedrig |
| Control | niedrig bis mittel |
| Power | sehr hoch |

## 14.6 Captain Sol

| Feld | Inhalt |
|---|---|
| Profil | Balanced Pilot |
| Herkunft | Sol Federation Training Fleet |
| Rolle | Veteran und Allrounder |
| Spielgefühl | ausgewogen, fair, gut für Einstieg |
| Paddle-Design | klassisches Arcade-Paddle mit Sternenmarkierung und sauberer Neon-Kante |
| Sprite-Idee | Retro-Astronaut mit weißem Helm, Schulterstreifen und ruhiger Haltung |
| CPU-Verhalten | spielt solide, macht wenige extreme Fehler, aber keine spektakulären Moves |

### Charakter-Fiction

Captain Sol is the last representative of the old Arcade Fleet. No tricks. No plasma drama. No corrupted data magic. Just clean positioning and a very long patience bar.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | mittel |
| Control | mittel |
| Power | mittel |

## 14.7 Glitch-Ø

| Feld | Inhalt |
|---|---|
| Profil | Chaos Unit |
| Herkunft | Unknown Memory Sector beyond the Neon Grid |
| Rolle | fehlerhafte Turniereinheit |
| Spielgefühl | unberechenbar, riskant, eigenartig |
| Paddle-Design | fragmentiertes Paddle mit flackernden Pixelkanten |
| Sprite-Idee | kaputtes Hologramm-Wesen mit fehlenden Pixeln und asymmetrischem Auge |
| CPU-Verhalten | spielt ungewöhnliche Winkel, reagiert manchmal genial und manchmal offensichtlich falsch |

### Charakter-Fiction

Nobody invited Glitch-Ø. The unit simply appeared in the tournament bracket, complete with its own statistics, corrupted victory music, and a paddle that occasionally looks like it is having a bad day. Somehow, it still wins more often than it should.

### Stat-Profil

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel bis hoch |
| Reach | niedrig bis mittel |
| Control | niedrig bis mittel |
| Power | mittel bis hoch |

## 15. Rivalitäten im Finale

## 15.1 Finalgegner-Logik

Im Mini-Turnier hängt der Finalgegner vom gewählten Spielercharakter ab.

| Spielercharakter | Finalgegner | Rivalitätslogik |
|---|---|---|
| Nova Vex | Brakk-9 | Tempo gegen Masse |
| Brakk-9 | Nova Vex | Verteidigung gegen Geschwindigkeit |
| Lyra Byte | Glitch-Ø | Kontrolle gegen Chaos |
| Glitch-Ø | Lyra Byte | Fehler gegen Präzision |
| Rexx Volt | Captain Sol | rohe Power gegen sauberes Stellungsspiel |
| Captain Sol | Rexx Volt | Veteran gegen Show-Off |

## 15.2 Finale-Intro

Vor dem Finale erscheint eine kurze Rivalitätsanzeige.

Sie enthält:

1. Spielercharakter.
2. Finalgegner.
3. Arena: `Laser Alley`.
4. Kurze Rivalitätszeile.

## 15.3 Rivalitätszeilen

| Finale | Rivalitätszeile |
|---|---|
| Nova Vex vs. Brakk-9 | Speed meets steel in the Laser Alley. |
| Brakk-9 vs. Nova Vex | Steel holds the line against pure velocity. |
| Lyra Byte vs. Glitch-Ø | Perfect control enters corrupted space. |
| Glitch-Ø vs. Lyra Byte | The bug challenges the debugger. |
| Rexx Volt vs. Captain Sol | Plasma force meets old-school discipline. |
| Captain Sol vs. Rexx Volt | Experience faces the hammer of Voltara. |

## 16. Arenen

## 16.1 Arena-Prinzip

Der MVP enthält drei Arenen.

Die Arenen unterscheiden sich visuell, aber nicht mechanisch.

## 16.2 Übersicht

| Nr. | Arena | Funktion |
|---:|---|---|
| 1 | Neon Grid Court | Standardarena |
| 2 | Orbital Arcade Deck | Sci-Fi-Variante |
| 3 | Laser Alley | intensive Finalarena |

## 16.3 Neon Grid Court

Klassische 80er-Arcade-Arena mit dunklem Hintergrund, Neonraster, klarer Mittellinie und sehr guter Lesbarkeit.

Verwendung:

1. Free Match.
2. Runde 1 im Mini-Turnier.
3. Standardarena für frühe Spieltests.

## 16.4 Orbital Arcade Deck

Raumstationsarena mit Blick auf Sterne, Orbit-Linien oder einen fernen Planetenring.

Verwendung:

1. Free Match.
2. Runde 2 im Mini-Turnier.
3. Sci-Fi-Atmosphäre ohne visuelle Überladung.

## 16.5 Laser Alley

Dunklere, intensivere Arena mit Laserlinien, hohem Kontrast und stärkerem Finalgefühl.

Verwendung:

1. Free Match.
2. Finalmatch im Mini-Turnier.
3. Visuell stärkster Arena-Eindruck im MVP.

## 16.6 Arena-Regeln

1. Keine Hindernisse im MVP.
2. Keine Arena-spezifischen Spezialeffekte im MVP.
3. Keine veränderte Ballphysik je Arena.
4. Keine Sichtbehinderung durch Hintergründe.
5. Ball, Paddles und Score müssen immer klar erkennbar bleiben.
6. Arenen liefern Atmosphäre, aber keine mechanische Veränderung.

## 17. Ball-Konzept

## 17.1 Standard-Ball

Der Standard-Ball ist ein 80er-Arcade-Ball mit Neon-Trail.

Er wirkt wie ein kleiner Laser-Puck oder Energieball, bleibt aber funktional klar lesbar.

## 17.2 Ball-Skins im MVP

Der MVP enthält fünf auswählbare Ball-Skins.

| Ball-Skin | Look | Mechanik |
|---|---|---|
| Neon Core | klassischer leuchtender Arcade-Ball | neutral |
| Laser Puck | flacher, schneller Laser-Look | neutral |
| Plasma Orb | runde Sci-Fi-Energiekugel | neutral |
| Pixel Comet | kleiner Komet mit Trail | neutral |
| Grid Spark | eckiger Pixel-Funken | neutral |

## 17.3 Ball-Regeln

1. Ball-Skins sind im MVP rein visuell.
2. Ball-Skins dürfen keine spielmechanischen Vorteile bringen.
3. Ball muss immer klar sichtbar bleiben.
4. Trail-Effekt darf Richtung und Kollisionspunkt nicht verschleiern.
5. Charakterabhängige Ballfähigkeiten sind nicht Teil des MVP.

## 18. User Interface

## 18.1 UI-Grundstil

Das UI soll sich wie ein Arcade-Automat anfühlen, nicht wie ein modernes SaaS-Menü.

Eigenschaften:

1. Pixel-Schrift.
2. Dunkler Hintergrund.
3. Neon-Akzente.
4. Klare Menüführung.
5. Schnelle Lesbarkeit.
6. Keine überladenen Effekte.

## 18.2 Startscreen

Der Startscreen ist inszeniert, aber nicht überladen.

Elemente:

1. Titel: `Retro Pong Circuit`.
2. Untertitel: `Last Arcade of the Galaxy`.
3. Dunkler Neon-Sci-Fi-Hintergrund.
4. Leicht animiertes Neonraster.
5. Leuchtender Ball mit Trail.
6. Zwei stilisierte Paddles.
7. Kurzes Arcade-Menü.

## 18.3 Hauptmenü

Menüoptionen:

1. `Free Match`
2. `Mini Tournament`
3. `Options`
4. `Credits`

## 18.4 Character Select

Die Charakterauswahl wird als Turnier-Roster mit sechs Charakterkarten dargestellt.

Jede Karte enthält:

1. Sprite.
2. Name.
3. Herkunft.
4. Profil.
5. Kurzbeschreibung.
6. Arcade-Balken für Speed, Reach, Control, Power.
7. Paddle-Vorschau.

## 18.5 Options-Menü

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
4. keine Onlineoder Account-Einstellungen,
5. keine Speicherprofil-Verwaltung.

## 18.6 Credits

Credits enthalten:

| Bereich | Text / Inhalt |
|---|---|
| Game Concept | Retro Pong Circuit |
| Build Tooling | Built with Claude Code |
| Pixel Art | Pixel art generated with Retro Diffusion |
| Music / SFX | Music and sound effects attribution, depending on source |
| Inspiration | Inspired by classic arcade paddle games |

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

## **24. Legal / Brand Guardrails**

## **24.1 Grundsatz**

`Retro Pong Circuit: Last Arcade of the Galaxy` ist ein eigenständiges Arcade-Paddle-Spiel, inspiriert von klassischen Arcade-Paddle-Spielen.

Es ist kein offizielles Remake, keine Adaption, kein Clone, kein Tribute und keine lizenzierte Version eines bestehenden Spiels.
v

## **24.2 Must Not**

Das Projekt darf nicht:

1. den Namen `Pong`, `Atari` oder andere geschützte Drittmarken im Produkttitel, Branding, UI, Marketing oder in Credits verwenden,
2. originale Spielgrafiken, Cabinet-Artworks, Logos, Sounds, Musik, Code oder UI-Layouts historischer Arcade-Titel kopieren,
3. sich als offizielles Remake, Sequel, Tribute, Adaptation oder lizenzierte Version darstellen,
4. den Look-and-Feel eines geschützten Legacy-Produkts so eng nachbauen, dass Verwechslungsgefahr entsteht,
5. Drittanbieter-Assets verwenden, deren Lizenz die geplante Nutzung nicht ausdrücklich erlaubt.

## **24.3 Should**

Das Projekt soll:

1. eigene Charaktere verwenden,
2. eigene Arenen verwenden,
3. eigene Musik und Soundeffekte verwenden,
4. ein eigenes UI entwickeln,
5. eigene Fiction und Namensgebung verwenden,
6. nur generisch auf klassische Arcade-Paddle-Spiele als Inspiration verweisen.

## **24.4 Credits-Formulierung**

Zulässige Formulierung:

`Inspired by classic arcade paddle games.`

Nicht verwenden:

1. `Pong remake`
2. `Atari Pong`
3. `official Pong tribute`
4. `licensed Pong version`
5. `Pong clone`

## **25. Non-Goals für den MVP**

Der MVP soll ausdrücklich nicht versuchen, ein zu großes Spiel zu werden.

Nicht-Ziele:

1. Kein Online-Multiplayer.
2. Kein lokaler Zwei-Spieler-Modus im MVP.
3. Keine aktiven Spezialfähigkeiten.
4. Keine Power-ups.
5. Keine Bosskämpfe.
6. Keine Kampagne.
7. Keine komplexe Story.
8. Keine Account-Funktion.
9. Keine Leaderboards.
10. Keine Speicherstände.
11. Keine komplexe Steuerungskonfiguration.
12. Keine Plattform-Optimierung für Konsolen oder Mobile.
13. Kein Versuch, ein historisches Originalspiel exakt nachzubauen.

## **26. V2-Backlog**

Für eine spätere Version sind folgende Erweiterungen denkbar:

## **26.1 Gameplay**

1. Lokaler Zwei-Spieler-Modus.
2. Power-ups.
3. Aktive Spezialfähigkeiten pro Charakter.
4. Arena-Effekte.
5. Bewegliche Hindernisse.
6. Boss-Gegner.
7. Turnierfortschritt mit steigender Schwierigkeit.
8. Erweiterte CPU-Verhaltensmuster.

## **26.2 Charaktere und Welten**

1. Weitere Charakterwelten.
2. Fantasy-Retro-Welt.
3. IT-/Developer-Parodie-Welt.
4. Sport-/Arcade-Parodie-Welt.
5. Gemischt-absurde Sonderwelt.
6. Zusätzliche Charaktere.
7. Rivalitäts-Erweiterungen.
8. Skin-Packs.

## **26.3 Audio und Visuals**

1. Charakter-spezifische Sounds.
2. Arena-spezifische Musik.
3. Finale-Musik.
4. Dynamische Musik.
5. Mehr Ball-Skins.
6. Zusätzliche Arenen.
7. Erweiterte Winner-Screens.
8. Animierte Charakter-Intros.

## **26.4 Spielsysteme**

1. Leaderboards.
2. Achievements.
3. Schwierigkeitsskalierung.
4. Freischaltbare Inhalte.
5. Mini-Profil oder lokaler Fortschritt.
6. Optionaler Online-Modus.

## **27. V3-Ideen**

Langfristig denkbar:

1. Online-Multiplayer.
2. Ranked Matches.
3. Koop-Varianten.
4. Vier-Spieler-Arena.
5. Community-Charaktere.
6. Custom Arenas.
7. Asset-Modding.
8. Turnierbaum mit mehreren Spielern.
9. Web-Veröffentlichung.
10. Mobile-Port.

## **28. Erfolgskriterien des MVP**

Der MVP gilt als erfolgreich, wenn:

1. ein Spieler das Spiel ohne Erklärung starten kann,
2. Free Match vs CPU spielbar ist,
3. Mini Tournament vs CPU spielbar ist,
4. alle sechs Charaktere auswählbar sind,
5. Charaktere sich leicht unterschiedlich anfühlen,
6. die CPU fair und schlagbar wirkt,
7. alle drei Arenen nutzbar sind,
8. Ball und Paddles immer klar lesbar sind,
9. Ball-Skins auswählbar sind,
10. Musik und SFX das 80er-Arcade-Gefühl unterstützen,
11. die visuelle Identität eigenständig wirkt,
12. keine geschützten Drittassets oder Marken verwendet werden,
13. Retro-Diffusion-Assets konsistent und spielbar wirken,
14. das Spiel innerhalb weniger Minuten Spaß macht.

## **29. Akzeptanzkriterien**

## **29.1 Free Match**

Ein Free Match ist akzeptiert, wenn:

1. der Spieler einen Charakter wählen kann,
2. ein CPU-Gegner gewählt werden kann,
3. eine Arena gewählt werden kann,
4. ein Ball-Skin gewählt werden kann,
5. das Punktelimit 5, 7 oder 11 gewählt werden kann,
6. die Schwierigkeit Easy, Normal oder Hard gewählt werden kann,
7. das Match korrekt startet,
8. Punkte korrekt gezählt werden,
9. ein Gewinner angezeigt wird.

## **29.2 Mini Tournament**

Der Mini-Turniermodus ist akzeptiert, wenn:

1. der Spieler einen Charakter wählt,
2. Runde 1 gegen CPU auf Neon Grid Court startet,
3. Runde 2 gegen anderen CPU-Gegner auf Orbital Arcade Deck startet,
4. das Finale gegen rivalitätsbasierten CPU-Gegner auf Laser Alley startet,
5. das Finale eine Rivalitätszeile anzeigt,
6. Vorrunden bis 5 Punkte laufen,
7. das Finale bis 7 Punkte läuft,
8. nach Turniersieg ein Winner-Screen erscheint.

## **29.3 Charaktere**

Das Charaktermodell ist akzeptiert, wenn:

1. sechs Charaktere im Roster sichtbar sind,
2. jeder Charakter Name, Sprite, Fiction und Paddle-Design hat,
3. jeder Charakter vier Arcade-Balken besitzt,
4. jeder Charakter ein leicht unterschiedliches Spielgefühl hat,
5. kein Charakter offensichtlich unfair stark ist.

## **29.4 Arenen**

Die Arenen sind akzeptiert, wenn:

1. drei Arenen verfügbar sind,
2. jede Arena visuell unterscheidbar ist,
3. keine Arena die Spielmechanik verändert,
4. keine Arena Ball oder Paddle verdeckt,
5. jede Arena zur dunklen Neon-Sci-Fi-Richtung passt.

## **29.5 Audio**

Audio ist akzeptiert, wenn:

1. Menü-Musik vorhanden ist,
2. Match-Musik vorhanden ist,
3. zentrale Soundeffekte vorhanden sind,
4. Musik loopbar ist,
5. Audio nicht von geschützten Originalquellen übernommen wurde.

## **29.6 Assets**

Assets sind akzeptiert, wenn:

1. sie Pixel-Art-Charakter haben,
2. sie zum 80er-Sci-Fi-Neon-Stil passen,
3. sie lesbar und spielbar sind,
4. sie keine fremden Logos oder Marken enthalten,
5. sie vom Kriterienentwickler als `usable` markiert wurden.

## **30. Offene Punkte für spätere Detailklärung**

Vor Umsetzung oder während der ersten Claude-Code-Iteration müssen später noch geklärt werden:

1. konkrete Steuerung,
2. exakte interne Balancewerte,
3. konkrete Bildgrößen und Asset-Auflösungen,
4. konkrete Audioquelle oder Audioerzeugung,
5. finale Retro-Diffusion-Prompts pro Asset,
6. Dateibenennung für Assets,
7. Reihenfolge der Entwicklungsiterationen,
8. Testcheckliste für Gameplay,
9. Bug-Triage-Regeln,
10. Definition des ersten spielbaren Prototyps.

Diese Punkte sind bewusst nicht Teil der fachlichen Grundklärung, sondern gehören in die spätere Umsetzungsplanung.

## **31. Zusammenfassung**

`Retro Pong Circuit: Last Arcade of the Galaxy` ist ein kleines, eigenständiges 80er-Retro-Sci-Fi-Arcade-Spiel mit klassischer Paddle-Ball-Grundmechanik.

Der MVP konzentriert sich auf:

1. Solo-Spiel gegen CPU.
2. Free Match.
3. Mini-Turnier.
4. Sechs Charaktere.
5. Drei Arenen.
6. Fünf Ball-Skins.
7. Dunkle Neon-Pixel-Art.
8. 80er-Hybrid-Musik.
9. Retro-Diffusion-Assets.
10. klare Legalund Brand-Guardrails.

Das Projekt bleibt bewusst schlank, damit es mit Claude Code iterativ und spielerisch umgesetzt werden kann.