# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
## Cada entrada es un commit
Aqui uso un sistema de SnapShot. Tomo una foto del repo antes de hacer los cambios y los guardo en memoria de ClaudeCode o Gemini. Despues les digo que compare la repo despues del commit y registre los cambios en el Changelog

---

## [1.7.3] - 2026-04-09

### Added
- **ZenCode PRO** — The advanced evolution of our philosophy.
- **The Programmer Monk's Mantra** — A meditative commitment to clarity and presence.
- **The Noble Eightfold Path of Code** — Ancient wisdom applied to modern software craftsmanship.
- **Automatic Ollama Installation** — Setup scripts now handle the acquisition of the Ollama vessel automatically (`winget` for Windows, `curl` for Mac/Linux).
- **Spiritual Tech Integration** — README and documentation now reflect the core vision, gratitude, and direct links to the official store.


### Changed
- **Modelfile v1.7.3** — Reborn as "The Programmer Monk". Tuned for deeper reasoning and a calmer, more intentional voice.
- `README.md` — Simplified "Quick Start" focusing on the Path of Least Resistance (one-click setup).
- `ZEN_CODE.md` evolved into `ZEN_CODE_PRO.md` — Now a complete manual for conscious programming.
- Setup scripts (`setup.bat` & `setup.sh`) updated to facilitate the 1.7.3 flow.

---

## [1.7.2] - 2026-04-09 

### Changed
- Switched base model from `qwen2.5-coder:7b` to `gemma3:4b` for better conversational quality and reasoning
- Compressed system prompt from ~250 lines to ~45 lines — preserves all ZenCode principles, frees context window
- Tuned sampling parameters (temperature, top_p, top_k, repeat_penalty) for more natural responses
- Updated stop tokens to match Gemma 3 native chat format
- New Thumbnail image.
- Minimal change in images order

---

## [1.7.1] - 2026-04-08

### Added
- `Other-Ways-To-Use-It.md` — alternative usage guide for ZenCode Assistant

### Changed
- Modelfile parameter adjustments for improved response quality
- README command instructions updated for clarity

### Removed
- `Instructions.md` — consolidated into `Other-Ways-To-Use-It.md`

---

## [1.7.0] - 2026-04-07

### Changed
- README restructured with improved project documentation
- Modelfile expanded with additional parameter tuning and system prompt refinements

---

## [1.0.0] - 2026-04-07

### Changed
- README rewritten with full project overview
- ZenCode-Assistant project image updated
- All project files versioned to v1.0.0

---

## [0.7.0] - 2026-04-06

### Added
- First release of ZenCode-Assistant
- ZenCode philosophy with seven principles (`ZenCode.md`)
- ZenCode skill package for Claude Code (`zencode.zip`)
- Ollama Modelfile configured with `qwen2.5-coder:7b`
- Usage instructions for four integration methods
- MIT License
- README with project overview
