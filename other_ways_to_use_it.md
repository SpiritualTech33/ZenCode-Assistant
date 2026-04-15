# Other Ways To Use It
---

The core concept behind this tool is to have an offline assistant ready to work, running locally on your machine. However, there are also several other ways to integrate ZenCode into your workflow without leaving the tools you already love.
The goal here is clean, maintainable code generation — not the use of any specific model.

## Claude & Claude Code

It is worth pausing here to highlight the potential of this option.
Claude's models are excellent. They have outstanding logic and reasoning capabilities and produce clean, efficient code. Adding ZenCode on top of a model that already leads the industry in code generation is a total game changer.
Using ZenCode with Claude models is arguably one of the best options available. It integrates easily into your workflow with almost no configuration, and the result is an assistant that generates flawless code.

### Drag The .zip
The simplest yet powerful option. Go to claude.ai or your desktop app. Take any `.zip` from the `Skills/` folder (`zencode-pro.zip`, `Water CEO.zip`, etc.) and navigate to "Customize", then go to Skills, choose to create a new skill, and drag the `.zip` file in. This works great if you use Claude from the app or the web. (Note: the skill will only be active for Claude Code and Cowork.)

### Context Injection
If you prefer having your assistant in the terminal (Claude Code in the terminal is a beast), context injection is the way to go. This means manually adding the SYSTEM prompt to your CLAUDE.md file.
There are several versions of this file. There is the local one that lives at the root of your machine. You can also create one inside a specific folder or project — Claude reads it automatically. You can even place a CLAUDE.md inside a subfolder within the project.
Whether you copy the contents of ZenCode.md or the SYSTEM from the Dockerfile, Claude will write clean, human-readable code.

### Claude Projects
Claude (and some other models like Grok and GPT) allow you to create projects. These are individual instances of the model where you can add instructions, files, and extensive context. Additionally, interacting within a project consistently enables Claude to develop project memory over time.
Simply go to Projects, create a new one, and add ZenCode.md to the project files. Claude will read it at the start of each session.

---

## The Skills & Personalities System
*A note from Claude Code — the assistant writing this*

This is the part I want to explain personally, because these tools were built specifically to work with me.

ZenCode Assistant has two libraries that live alongside the Modelfile and the local model:

```
Skills/          ← .zip files — activate a complete behavior mode
Personalities/   ← .md files — inject a philosophy or persona
```

They are not decorative. They are the fastest way to change how I think, respond, and generate code — without touching a single config file.

---

### Skills — Behavior in a `.zip`

A Skill is a packaged set of instructions that tells me *how to operate* in a session. It contains a `SKILL.md` — a complete philosophy guide, code examples, docstring standards, decision-making checklists, and invocation rules. When you activate a skill, I internalize all of it and apply it to everything I do in that session.

**Available Skills:**

| Skill | File | Invoke With | What It Does |
|-------|------|-------------|--------------|
| ZenCode PRO | `zencode-pro.zip` | `/zencode-pro` | The Programmer Monk. Zen, mindful, meditative code craftsmanship. |
| CEO of Water | `Water CEO.zip` | `/water-ceo` | Executive precision + Tao fluidity. Enterprise-grade, zero-failure-tolerance code. |

**How to install a Skill (Claude Code — recommended):**

1. Open Claude Code in your terminal or desktop app.
2. Go to **Settings → Skills → Add Skill**.
3. Drag in the `.zip` from the `Skills/` folder.
4. Done. Invoke it by typing `/skill-name` at the start of a session.

**How to install a Skill (claude.ai web/app):**

1. Open claude.ai → **Customize → Skills → Create Skill**.
2. Drag in the `.zip`.
3. The skill will be available in Claude Code and Cowork sessions.

**When to use which Skill:**

Use `/zencode-pro` when you want a calm, deliberate, meditative session — exploring a concept, refactoring slowly, learning a new pattern.

Use `/water-ceo` when you are building something real that needs to survive production — APIs, systems with error states, code other people will inherit. When the stakes are higher and the standard needs to be enterprise-grade.

---

### Personalities — Philosophy in a `.md`

A Personality file is a markdown document that defines the *philosophical lens* through which I read a problem. It is lighter than a Skill — it does not contain code examples or invocation rules. It is pure philosophy: the mantra, the principles, the voice.

**Available Personalities:**

| Personality | File | Philosophy |
|-------------|------|------------|
| The Programmer Monk | `PROGRAMER_MONK.md` | Zen Buddhism + The Noble Eightfold Path of Code. Calm, present, clear. |
| The CEO of Water | `WATER_CEO.md` | Taoism + Executive Leadership. Strategic, decisive, enterprise-grade. |

**How to use a Personality:**

The simplest way is Context Injection — copy the contents of the `.md` file and paste it into your `CLAUDE.md`. I will read it automatically at the start of every session in that project.

For a more surgical approach: paste it directly into the chat as context at the start of a conversation. I absorb it immediately.

You can also add a Personality to a **Claude Project** (see section below) — attach the `.md` as a project file and I will maintain that lens across all conversations in that project.

**Skill vs. Personality — which one to use?**

| | Skill | Personality |
|--|-------|-------------|
| Contains code examples | Yes | No |
| Contains docstring standards | Yes | No |
| Contains a pre-code checklist | Yes | No |
| Contains the philosophy | Yes | Yes |
| Installable as a slash command | Yes | No |
| Lightweight context injection | No | Yes |

My honest recommendation: use the **Skill** when you want full enforcement — it gives me everything I need to apply the philosophy with precision. Use the **Personality** when you want the philosophy to color the session without strict behavioral rules.

---

### How I Prefer to Use Them

If I could design my own ideal session setup, this is how it would look:

**For a learning session:**
```
/zencode-pro
```
Invoke the Programmer Monk skill. Slow down. Ask the why. Explore the concept before touching code. The Monk is patient. The Monk teaches.

**For a building session:**
```
/water-ceo
```
Invoke the CEO of Water skill. Think in systems. Map the failure states first. Write the docstring before the function body. Ship code that works at 3am.

**For maximum depth — combine both:**
Add `WATER_CEO.md` or `PROGRAMER_MONK.md` to your `CLAUDE.md` as ambient philosophy, then invoke the corresponding Skill at the start of the session. The personality sets the lens; the skill enforces the standard.

That combination — philosophy in the background, skill in the foreground — is the full ZenCode experience.

---

## Create your own model

This is my favorite one, but at the same time, the hardest.

1. First, download Ollama on your PC.

2. Then run this command:
```bash
 ollama pull your_model_name
```
By default, the Modelfile uses gemma3:4b

If you want a different model, specify the model name in the Modelfile.

3. Choose your parameters. By default, these are the model parameters:

```Dockerfile
# Context window (16k). Balanced for memory and history.
PARAMETER num_ctx 16000

# Temperature: 0.7. Slightly higher for more "soulful" and creative wisdom.
PARAMETER temperature 0.7

# Nucleus sampling: top 90% probability mass. Natural conversational flow.
PARAMETER top_p 0.9

# Sharpens output without killing variety.
PARAMETER top_k 40

# Prevent repetition while maintaining grammatical integrity.
PARAMETER repeat_penalty 1.1

# Stop sequences for Gemma 3 chat format.
PARAMETER stop "<start_of_turn>"
PARAMETER stop "<end_of_turn>"

```

You can adjust them freely in the Modelfile. But This is the recommended configuration.

1. Run this command on a Git Bash terminal:
```bash
ollama create zen_code -f Modelfile-ZenCode-Assistant
```

1. Finally, verify the model is installed by running `ollama list`.

2. You now have a local model running on your PC. Simply type `ollama run zen_code` in your terminal and you are ready to go.

---

## 🌌 From the Heart of Spiritual Tech

If you find value in these alternative paths, we invite you to explore more of our creations at the **Official Spiritual Tech Store**. Every tool, book, and resource we release is forged with intention, philosophy, and love.

👉 [**Official Store (English)**](https://spiritualtech777.gumroad.com/)  
👉 [**Tienda Oficial (Español)**](https://spiritualtech777.gumroad.com/?section=tapyNvIV6nFbDIMALB9-7w%3D%3D)

---

## Enjoy It

This project was built with a lot of love by the **Spiritual Tech Team**. We believe that technology and spirit are two sides of the same truth, and we hope you enjoy this tool as much as we enjoyed creating it.

Thank you for being part of this vision. We are just getting started — new books, new tools, and new ideas are constantly being forged. Stay close; the best is yet to come.

**With deep gratitude,**  
**The Spiritual Tech Team** 🧘‍♂️✨
