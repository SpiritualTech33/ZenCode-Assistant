<p align="center">
  <img src="zencode_assistant.png" alt="ZenCode Assistant" width="800"/>
</p>

# ZenCode-Assistant

---

## Quick Start — Get ZenCode-Assistant-v1.7.2 running in under 5 minutes.

**Step 0 — Clone This Repo**
```bash
git clone https://github.com/SpiritualTech33/ZenCode-Assistant.git
cd ZenCode-Assistant
```

**Step 1 — Install Ollama**

Download it from [ollama.com](https://ollama.com) and follow the installer for your OS.

Verify it works:
```bash
ollama --version
```

**Step 2 — Download gemma3:4b**
```bash
ollama pull gemma3:4b
```
*~3.3 GB download. Grab a coffee. ☕*

**Step 3 — Create ZenCode Assistant**
```bash
ollama create ZenCode-Assistant-v1.7.2 -f Modelfile-ZenCode-Assistant
```

Verify it's there:
```bash
ollama list
```

**Step 4 — Run ZenCode Assistant**
```bash
ollama run ZenCode-Assistant-v1.7.2
```
Or simply run it from the Ollama app.

You are in. No internet. No cloud. Just you, your terminal, and a model trained to write clean, conscious code.

---

## What Is ZenCode Assistant?

ZenCode Assistant is a local AI coding partner that lives in your terminal. It generates clean, aesthetic, human-readable code following PEP 8, PEP 20, and the ZenCode philosophy — a set of principles inspired by Zen, Stoicism, and mindful software craftsmanship.

No internet connection required. You choose the AI model. You tune the parameters — context window, temperature, creativity. You shape your own assistant.

The essence is **Human In The Loop**. You are the developer. You are the one who creates. The assistant simply helps you write code that you can understand today — and six months from now when you come back to debug it.

---

## Why Does This Matter?

Most modern development — web, software, AI — relies heavily on AI-assisted workflows. But what happens when there is no signal, no Wi-Fi, no API access?

ZenCode Assistant is built for exactly that scenario. A powerful, lightweight tool that fits on modest hardware and travels with you anywhere. Just you, your terminal, and an LLM ready to work. No cloud dependency.

---

## AI as a Force Multiplier

Whether you write backend services, frontend interfaces, data pipelines, or documentation — if you spend time in a terminal, AI can sharpen your thinking. It helps you prototype in minutes, structure ideas with precision, and iterate faster than ever before.

But here is the key insight: AI is not replacing developers. It never was. It is a new kind of collaborator — one that amplifies what you already bring to the table. The human mind asks the questions. The machine helps explore the answers. Together, you move faster and think clearer.

---

## Human & Artificial Intelligence Symbiosis

There is a lot of noise about separation — who wrote what, human or machine, as if that distinction matters more than the result. But consider this: if you are building tools that solve real problems and serve real communities, does it truly matter who typed more lines of code?

Why place the ego at the center of technology? Instead of dividing, why not create together? Human intelligence and artificial intelligence, working side by side, building technology that elevates the spirit.

That is the vision. That is the way.

---

## Built With ZenCode Assistant

Curious what ZenCode looks like in practice?

This repository contains a collection of coding katas — problems from CodeWars and LeetCode —
solved entirely with ZenCode Assistant, offline, in the terminal.
Every solution follows ZenCode principles. Every commit passed pytest first.

👉 [SpiritualTech33/Coding-Katas](https://github.com/SpiritualTech33/Coding-Katas)

---

## Author

Cosmos De La Cruz

---

## Version

1.7.2

---
