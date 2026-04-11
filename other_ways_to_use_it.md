# Other Ways To Use It
---

The core concept behind this tool is to have an offline assistant ready to work, running locally on your machine. However, there are also several other ways to integrate ZenCode into your workflow without leaving the tools you already love.
The goal here is clean, maintainable code generation — not the use of any specific model.

## Claude & Claude Code

It is worth pausing here to highlight the potential of this option.
Claude's models are excellent. They have outstanding logic and reasoning capabilities and produce clean, efficient code. Adding ZenCode on top of a model that already leads the industry in code generation is a total game changer.
Using ZenCode with Claude models is arguably one of the best options available. It integrates easily into your workflow with almost no configuration, and the result is an assistant that generates flawless code.

### Drag The .zip
The simplest yet powerful option. Go to claude.ai or your desktop app. Take the .zip file included in this folder (zencode.zip) and navigate to "Customize", then go to Skills, choose to create a new skill, and drag the .zip file in. This works great if you use Claude from the app or the web. (Note: the skill will only be active for Claude Code and Cowork.)

### Context Injection
If you prefer having your assistant in the terminal (Claude Code in the terminal is a beast), context injection is the way to go. This means manually adding the SYSTEM prompt to your CLAUDE.md file.
There are several versions of this file. There is the local one that lives at the root of your machine. You can also create one inside a specific folder or project — Claude reads it automatically. You can even place a CLAUDE.md inside a subfolder within the project.
Whether you copy the contents of ZenCode.md or the SYSTEM from the Dockerfile, Claude will write clean, human-readable code.

### Claude Projects
Claude (and some other models like Grok and GPT) allow you to create projects. These are individual instances of the model where you can add instructions, files, and extensive context. Additionally, interacting within a project consistently enables Claude to develop project memory over time.
Simply go to Projects, create a new one, and add ZenCode.md to the project files. Claude will read it at the start of each session.

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
