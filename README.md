# Retro Pong Circuit

> **Last Arcade of the Galaxy** — a fun retro-sci-fi paddle game built with Claude Code and AI-generated pixel art.

> **Status:** Concept / Pre-Alpha — Vibe-Coding-Experiment, co-developed with a friend.

<p align="center">
  <img src="assets/startscreen-hero.png" alt="Retro Pong Circuit – Last Arcade of the Galaxy: pixel-art startscreen showing two stylized sci-fi paddles in a neon-grid arena with a glowing ball in motion, and the title overlaid in cyan and magenta Press Start 2P typography" width="640">
</p>

> Startscreen key visual generated with [Retro Diffusion](https://www.retrodiffusion.ai/) (`rd_pro__scifi`, 256×256, nearest-neighbor upscaled to 1024×1024). Title and subtitle composited on top with [Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P) (OFL).

---

## Inspiration

Built on the shoulders of giants:

- **[Pong (Atari, 1972)](https://en.wikipedia.org/wiki/Pong)** — the ancestor of every paddle game ever made. We borrow the core mechanic: two paddles, one ball, simple rules. Everything else is ours.
- **80s arcade sci-fi** — neon grids, glowing trails, dark CRT atmospheres. The visual language of Tron, Outrun, and the alternative-1985-future aesthetic.
- **Modern AI tooling** — PRD drafted with **JET-TP**, pixel art generated with **[Retro Diffusion](https://www.retrodiffusion.ai/)**, code written with **[Claude Code](https://claude.com/claude-code)**.

---

## What is this?

Retro Pong Circuit is a small, standalone 80s retro-sci-fi arcade game built around a classic paddle-ball mechanic. It is set in 2088, in a fictional "Neon Sector," where six retro-sci-fi champions compete in the last true arcade tournament in the galaxy.

It is meant to feel like a lost arcade game from an alternative 80s sci-fi timeline — simple, direct, quickly understood, but with enough character not to be a pure copy of classic paddle games. The project is intentionally lean so it can be built iteratively and playfully with Claude Code.

## TL;DR

- **Genre:** 80s retro-sci-fi arcade paddle-ball
- **Modes:** Solo vs CPU — Free Match + Mini Tournament (3 rounds)
- **Roster:** Six playable champions with distinct stats (Speed, Reach, Control, Power)
- **Arenas:** Three visual arenas (Neon Grid Court, Orbital Arcade Deck, Laser Alley)
- **Cosmetics:** Five ball skins (purely visual, no gameplay impact)
- **Visuals:** Dark neon pixel-art, AI-generated via Retro Diffusion
- **Audio:** 80s hybrid (chiptune melodies + synthwave bass/drums)
- **Languages:** PRD in German, in-game text in English
- **License:** [MIT](LICENSE)

## Documentation

The full Product Requirements Document is split into eight thematic documents:

| # | Document | What's in it |
|---|----------|--------------|
| 1 | [01-vision.md](docs/01-vision.md) | Purpose, brief, product vision, audience, core principles, mini-story |
| 2 | [02-mvp-scope.md](docs/02-mvp-scope.md) | MVP scope: what's in, what's NOT, success criteria, acceptance criteria |
| 3 | [03-gameplay.md](docs/03-gameplay.md) | Game modes, CPU concept, ball, user interface |
| 4 | [04-characters-and-arenas.md](docs/04-characters-and-arenas.md) | Six champions, finals rivalries, three arenas |
| 5 | [05-art-and-audio.md](docs/05-art-and-audio.md) | Branding, visual direction, audio, asset pipeline + Retro Diffusion prompts |
| 6 | [06-meta.md](docs/06-meta.md) | Game language and legal / brand guardrails |
| 7 | [07-roadmap.md](docs/07-roadmap.md) | V2 backlog and V3 ideas (post-MVP) |
| 8 | [08-open-questions.md](docs/08-open-questions.md) | Open points to clarify as we build |
| 🖼️ | [asset-gallery.md](docs/asset-gallery.md) | Visual gallery of all produced assets — hero, characters, arenas, branding |
| 📜 | [asset-history.md](docs/asset-history.md) | Audit trail for every generated asset — prompt, parameters, cost, selection |

> The original, unsplit PRD is preserved as a historical snapshot in [`docs/_archive/`](docs/_archive/) and is **not** maintained further. All active documentation lives in the eight files above.

**Suggested reading order for a new contributor:** README → 01-vision → 02-mvp-scope → (rest as needed).

## Tech Stack

**TBD** — to be decided in the kickoff session. Candidates:

- HTML5 Canvas + Vanilla JS (single-file deploy, lowest overhead)
- Phaser.js (classic 2D game framework, strong fit for paddle/pixel-art)
- Godot Engine + Web export (full game-engine experience, steeper learning curve)

## Getting Started

Setup instructions will land here once the tech stack is locked in.

## Contributing

This is a private side project shared between two people. Public PRs are not expected. If you somehow stumbled here and want to chat, open an issue.

Branching: `feature/<short-name>` or just push straight to `main` — we're a team of two.

## Built with

Claude Code (vibe-coding) · Retro Diffusion (AI pixel-art) · 🍕

## Acknowledgments

See the [Inspiration](#inspiration) block at the top for the lineage. We do not copy any specific franchise. Legal and brand guardrails are spelled out in [06-meta.md](docs/06-meta.md).

## License

[MIT](LICENSE) — Copyright (c) 2026 GmanFooFoo.
