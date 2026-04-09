# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.7.2] - 2026-04-09

### Changed
- Switched base model from `qwen2.5-coder:7b` to `gemma3:4b` for better conversational quality and reasoning
- Compressed system prompt from ~250 lines to ~45 lines — preserves all ZenCode principles, frees context window
- Tuned sampling parameters (temperature, top_p, top_k, repeat_penalty) for more natural responses
- Updated stop tokens to match Gemma 3 native chat format

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

---
