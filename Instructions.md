# Instructions — How To Use It
---

Well, I will give you several forms to use it, from the easiest one up to the pro one.

## Just Drag The Zip Folder Into Customize Tab on claude.ai

This is the simplest one. 
Go to claude.ai, enter into customize tab, select skills, choose create skill and drag that 
zip folder into there. No configuration needed. Just make sure to tell claude to use ZenCode
principles. This is a great way to use it if you already use ClaudeCode.

---

## Copy the system prompt into CLAUDE.md local file

If you are like me and you love to have your AI models in the terminal, this option fits for you.
Just go to the local CLAUDE.md file in your computer and copy and paste the system prompt.
That way, ClaudeCode will generate ZenCode right from the beginning of the session.

---

## Use the ZenCode.md file in a project

There's a lot of models that give you the option to create projects. Grok, Claude, GPT, you can create a project and put the ZenCode.md file in the files window. That way the model will read the file before each session.

---

## Create your own model

This is my favorite one, but at the same time, the hardest.
1. First you have to download  ollama in your PC.

2. Then download a model. You can use qwen2.5-coder:7b as default, but it's up to you and your computer 
power, i would love to run Opus 4.5 locally, that would be insane, but i still don't have enough hardware power to run such a beast haha. Anthropic if you're reading this, please, hire me hahahaha. Love you fellas.

3. When you have your model in your PC put the model name in the selected space in Modelfile ZenCode

4. Choose your parameters

5. Run this command on a Git Bash terminal:
 ollama create ZenCode-Assistant -f Modelfile-ZenCode-Assistant

The model name is up to you, but I like ZenCode-Assistant.

6. And finally, check if is in your PC with ollama list

7. Now you have a local model running on your PC. Just type on your terminal ollama run ZenCode-Assistant and you will be ready to go.

---

## Enjoy It

This is a project with a lot of love, i hope you enjoy it, just like me.

---
   