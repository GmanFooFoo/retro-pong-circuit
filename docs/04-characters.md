# Characters

> **Sechs Champions — Prinzip, Stats, Roster und Finalrivalitäten.**
>
> Enthält: Charakterprinzip, Stats, MVP-Roster (Nova Vex, Brakk-9, Lyra Byte, Rexx Volt, Captain Sol, Glitch-Ø) und Rivalitäten im Finale. *(Original-PRD: §13, §14, §15)*

---

## 4.1 Charakterprinzip

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

## 4.2 Charakter-Stats

Jeder Charakter besitzt vier Werte:

| Stat | Bedeutung |
|---|---|
| Speed | Wie schnell sich das Paddle bewegt |
| Reach | Wie groß oder verzeihend das Paddle ist |
| Control | Wie gut Ballwinkel kontrollierbar sind |
| Power | Wie stark Rückprall-Intensität oder Ballgeschwindigkeit beeinflusst wird |

## 4.3 Darstellung der Stats

Stats werden als Arcade-Balken dargestellt.

Regeln:

1. Keine Zahlenwerte im UI.
2. Balken müssen schnell vergleichbar sein.
3. Balkenoptik: Pixel-Art, Neon, 80er-Arcade.
4. Intern dürfen präzise Werte genutzt werden.
5. Für Spieler bleibt die Darstellung abstrahiert.

## 4.4 Balancing-Regeln

1. Kein Charakter darf in allen vier Werten stark sein.
2. Jede Stärke braucht eine Schwäche.
3. Unterschiede sollen spürbar, aber nicht unfair sein.
4. Keine aktiven Spezialfähigkeiten im MVP.
5. Keine Power-ups im MVP.
6. Charaktere sollen Flavor und Spielgefühl liefern, aber keine harte Competitive-Meta erzeugen.

## 4.5 MVP-Roster

### Übersicht

| Nr. | Charakter | Profil | Hauptstärke | Hauptschwäche |
|---:|---|---|---|---|
| 1 | Nova Vex | Speedster | Speed | Reach |
| 2 | Brakk-9 | Defender | Reach | Speed |
| 3 | Lyra Byte | Technician | Control | Power |
| 4 | Rexx Volt | Striker | Power | Control |
| 5 | Captain Sol | Balanced Pilot | Ausgewogenheit | keine Spitzenwerte |
| 6 | Glitch-Ø | Chaos Unit | Unberechenbarkeit | Konsistenz |

### Nova Vex

| Feld | Inhalt |
|---|---|
| Profil | Speedster |
| Herkunft | Neon Sector 7 |
| Rolle | Hochgeschwindigkeits-Pilotin |
| Spielgefühl | schnell, reaktiv, aber weniger verzeihend |
| Paddle-Design | schlankes Neon-Paddle mit Doppellinie und kurzem Lichtschweif |
| Sprite-Idee | kleine Pilotin mit Visierhelm, leuchtender Jacke und Jet-Boots |
| CPU-Verhalten | reagiert schnell, übersteuert aber gelegentlich |

Nova Vex was once a test pilot for experimental light drives. In the Retro Pong Circuit, she is known as the fastest player in the Neon Sector. She does not win through force. She wins through speed, timing, and last-second saves.

| Stat | Balken-Niveau |
|---|---|
| Speed | sehr hoch |
| Reach | niedrig |
| Control | mittel |
| Power | mittel |

### Brakk-9

| Feld | Inhalt |
|---|---|
| Profil | Defender |
| Herkunft | Outer Ring of the Titan Shipyards |
| Rolle | schwerer Verteidigungsroboter |
| Spielgefühl | stabil, breit, langsam |
| Paddle-Design | breites Schild-Paddle mit Panzerplatten-Optik |
| Sprite-Idee | quadratischer Roboter mit einem Auge, schweren Beinen und Warnstreifen |
| CPU-Verhalten | deckt viel Fläche ab, reagiert verzögert auf schnelle Winkel |

Brakk-9 was built to seal space dock gates against meteor strikes. In the Circuit, he does the same thing: he stands in the way. Not elegant. Not fast. Very hard to pass.

| Stat | Balken-Niveau |
|---|---|
| Speed | niedrig |
| Reach | sehr hoch |
| Control | mittel |
| Power | mittel |

### Lyra Byte

| Feld | Inhalt |
|---|---|
| Profil | Technician |
| Herkunft | Data Moon L-404 |
| Rolle | Signalingenieurin und Winkel-Spezialistin |
| Spielgefühl | präzise, kontrolliert, taktisch |
| Paddle-Design | feines Circuit-Paddle mit Scanlinien und Datenpunkten |
| Sprite-Idee | Pixel-Ingenieurin mit Datenbrille, Kabelmantel und Mini-Terminal |
| CPU-Verhalten | spielt kontrollierte Winkel, erzeugt selten maximale Geschwindigkeit |

Lyra Byte reads ball trajectories like old machine code. Her matches look less like sport and more like debugging under neon light. She wins by making opponents stand in exactly the wrong place.

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | mittel |
| Control | sehr hoch |
| Power | niedrig |

### Rexx Volt

| Feld | Inhalt |
|---|---|
| Profil | Striker |
| Herkunft | Plasma Colony Voltara Prime |
| Rolle | Energie-Schläger und Show-Off |
| Spielgefühl | druckvoll, aggressiv, weniger präzise |
| Paddle-Design | kurzes, massives Plasma-Paddle mit pulsierender Kante |
| Sprite-Idee | breitschultriger Alien-Champion mit Energiegürtel und Blitzfrisur |
| CPU-Verhalten | spielt aggressiv, beschleunigt Ballwechsel, macht Fehler bei spitzen Winkeln |

Rexx Volt does not play to score. He plays to make impacts. His fans call him the Plasma Hammer. His opponents usually say nothing, because they are busy chasing the ball.

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | niedrig |
| Control | niedrig bis mittel |
| Power | sehr hoch |

### Captain Sol

| Feld | Inhalt |
|---|---|
| Profil | Balanced Pilot |
| Herkunft | Sol Federation Training Fleet |
| Rolle | Veteran und Allrounder |
| Spielgefühl | ausgewogen, fair, gut für Einstieg |
| Paddle-Design | klassisches Arcade-Paddle mit Sternenmarkierung und sauberer Neon-Kante |
| Sprite-Idee | Retro-Astronaut mit weißem Helm, Schulterstreifen und ruhiger Haltung |
| CPU-Verhalten | spielt solide, macht wenige extreme Fehler, aber keine spektakulären Moves |

Captain Sol is the last representative of the old Arcade Fleet. No tricks. No plasma drama. No corrupted data magic. Just clean positioning and a very long patience bar.

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel |
| Reach | mittel |
| Control | mittel |
| Power | mittel |

### Glitch-Ø

| Feld | Inhalt |
|---|---|
| Profil | Chaos Unit |
| Herkunft | Unknown Memory Sector beyond the Neon Grid |
| Rolle | fehlerhafte Turniereinheit |
| Spielgefühl | unberechenbar, riskant, eigenartig |
| Paddle-Design | fragmentiertes Paddle mit flackernden Pixelkanten |
| Sprite-Idee | kaputtes Hologramm-Wesen mit fehlenden Pixeln und asymmetrischem Auge |
| CPU-Verhalten | spielt ungewöhnliche Winkel, reagiert manchmal genial und manchmal offensichtlich falsch |

Nobody invited Glitch-Ø. The unit simply appeared in the tournament bracket, complete with its own statistics, corrupted victory music, and a paddle that occasionally looks like it is having a bad day. Somehow, it still wins more often than it should.

| Stat | Balken-Niveau |
|---|---|
| Speed | mittel bis hoch |
| Reach | niedrig bis mittel |
| Control | niedrig bis mittel |
| Power | mittel bis hoch |

## 4.6 Rivalitäten im Finale

### Finalgegner-Logik

Im Mini-Turnier hängt der Finalgegner vom gewählten Spielercharakter ab.

| Spielercharakter | Finalgegner | Rivalitätslogik |
|---|---|---|
| Nova Vex | Brakk-9 | Tempo gegen Masse |
| Brakk-9 | Nova Vex | Verteidigung gegen Geschwindigkeit |
| Lyra Byte | Glitch-Ø | Kontrolle gegen Chaos |
| Glitch-Ø | Lyra Byte | Fehler gegen Präzision |
| Rexx Volt | Captain Sol | rohe Power gegen sauberes Stellungsspiel |
| Captain Sol | Rexx Volt | Veteran gegen Show-Off |

### Finale-Intro

Vor dem Finale erscheint eine kurze Rivalitätsanzeige.

Sie enthält:

1. Spielercharakter.
2. Finalgegner.
3. Arena: `Laser Alley`.
4. Kurze Rivalitätszeile.

### Rivalitätszeilen

| Finale | Rivalitätszeile |
|---|---|
| Nova Vex vs. Brakk-9 | Speed meets steel in the Laser Alley. |
| Brakk-9 vs. Nova Vex | Steel holds the line against pure velocity. |
| Lyra Byte vs. Glitch-Ø | Perfect control enters corrupted space. |
| Glitch-Ø vs. Lyra Byte | The bug challenges the debugger. |
| Rexx Volt vs. Captain Sol | Plasma force meets old-school discipline. |
| Captain Sol vs. Rexx Volt | Experience faces the hammer of Voltara. |


---

← [Zurück zum README](../README.md) · Vorher: [03-gameplay.md](03-gameplay.md) · Weiter: [05-arenas.md](05-arenas.md)
