# Asset Voices

> **Audio gallery for character voice samples.** Wer den Repo besucht und hören will, wie die Charaktere klingen, landet hier.

Für visuelle Assets siehe [asset-gallery.md](asset-gallery.md). Für Audit-Trail (Generation-Pipeline, Prompts, Kosten) siehe [asset-history.md](asset-history.md).

---

## Format

| Feld | Wert |
|---|---|
| Anzahl | 6 (ein Voice-Sample pro MVP-Charakter) |
| Format | WAV (uncompressed) |
| Speicherort | `assets/audio/voices/<character-slug>.wav` |
| Größe (gesamt) | ~10 MB (master copies — Runtime-Versionen können später als komprimiertes MP3/OGG abgeleitet werden) |
| Quelle | User-provided · Source: TBD |
| Datum | 2026-04-29 |

> **Note:** GitHub rendert kein Inline-Audio in Markdown. Klick auf einen Voice-Sample-Link lädt die WAV-Datei herunter oder öffnet sie im Browser-Player (je nach Browser). Lokale Wiedergabe via QuickTime, VLC oder jedem Audio-Player.

---

## Voice Samples

### Nova Vex — Speedster (Neon Sector 7)

> Former test pilot for experimental light drives. Wins through speed, timing, and last-second saves.

**Voice:** [`nova-vex.wav`](../assets/audio/voices/nova-vex.wav)

| Feld | Wert |
|---|---|
| Dauer | ~30.8 Sekunden |
| Größe | 2.7 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

### Brakk-9 — Defender (Outer Ring of the Titan Shipyards)

> Built to seal space dock gates against meteor strikes. In the Circuit, he stands in the way.

**Voice:** [`brakk-9.wav`](../assets/audio/voices/brakk-9.wav)

| Feld | Wert |
|---|---|
| Dauer | ~30.8 Sekunden |
| Größe | 2.7 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

### Lyra Byte — Technician (Data Moon L-404)

> Reads ball trajectories like old machine code. Wins by making opponents stand in exactly the wrong place.

**Voice:** [`lyra-byte.wav`](../assets/audio/voices/lyra-byte.wav)

| Feld | Wert |
|---|---|
| Dauer | ~13.6 Sekunden |
| Größe | 1.2 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

### Rexx Volt — Striker (Plasma Colony Voltara Prime)

> Does not play to score. Plays to make impacts. Fans call him the Plasma Hammer.

**Voice:** [`rexx-volt.wav`](../assets/audio/voices/rexx-volt.wav)

| Feld | Wert |
|---|---|
| Dauer | ~13.8 Sekunden |
| Größe | 1.2 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

### Captain Sol — Balanced Pilot (Sol Federation Training Fleet)

> The last representative of the old Arcade Fleet. No tricks. No plasma drama. No corrupted data magic.

**Voice:** [`captain-sol.wav`](../assets/audio/voices/captain-sol.wav)

| Feld | Wert |
|---|---|
| Dauer | ~12.7 Sekunden |
| Größe | 1.1 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

### Glitch-Ø — Chaos Unit (Unknown Memory Sector)

> Nobody invited Glitch-Ø. The unit simply appeared in the tournament bracket, complete with corrupted victory music.

**Voice:** [`glitch-zero.wav`](../assets/audio/voices/glitch-zero.wav)

| Feld | Wert |
|---|---|
| Dauer | ~20.5 Sekunden |
| Größe | 1.8 MB |
| Format | WAV |
| Status | Final · 2026-04-29 |

---

## Voice-Stand auf einen Blick

| Voice-Kategorie | Soll | Ist | Coverage |
|---|---|---|---|
| Charakter-Voices | 6 | 6 ✅ (Nova Vex, Brakk-9, Lyra Byte, Rexx Volt, Captain Sol, Glitch-Ø) | 100% |

Andere Audio-Kategorien (Menü-Musik, Match-Musik, SFX) sind nicht Teil dieses Voice-Sets — siehe PRD §6.2 ([06-art-and-audio.md](06-art-and-audio.md)) für den vollen Audio-Scope.

---

## Open Items

| # | Item | Quelle |
|---:|---|---|
| 1 | Source / Generation-Tool dokumentieren (ElevenLabs, Suno, eigene Aufnahme, etc.) | User-Eingabe |
| 2 | Lizenz / Nutzungsrechte klären | User-Eingabe |
| 3 | Optional: Komprimierte Runtime-Versionen ableiten (MP3 oder OGG, ~10× kleiner) | Späterer Build-Step |
| 4 | Voice-Lines-Inhalt transkribieren (was sagt jeder Charakter?) | Manuell oder Whisper |
| 5 | Verwendungs-Kontext im Spiel definieren (Intro, Match-Start, Sieg, Niederlage, Taunt?) | PRD-Erweiterung §6.2 |

---

← [Zurück zum README](../README.md) · Visuals: [asset-gallery.md](asset-gallery.md) · Audit-Trail: [asset-history.md](asset-history.md)
