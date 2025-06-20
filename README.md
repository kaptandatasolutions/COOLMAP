# Simulator MVP – Godot 4.2

Small vertical slice for **Educational Life Simulator** playable in the browser and deployable on **Hugging Face Spaces** (static space).

## Features included

1. **Avatar + Needs** — create a character, move (WASD + Space) and watch Hunger / Energy / Mood gauges decay.
2. **Day / Night + Weather** — accelerated 24 h cycle (10 mn IRL) with clear / rain / snow chosen pseudo‑randomly.
3. **Inventory + Online Shop** — buy items from a JSON catalogue; they arrive 1 in‑game day later.

## Quick start (local)

```bash
godot4 .
```

Press `F6` to run `Main`.  
Export to HTML5:

```bash
./build_html.sh
```

## Deploy to Hugging Face Spaces (static)

```bash
# 1. Create a STATIC space on HF (“Static” template)
# 2. Push compiled HTML folder
git lfs install
git remote add hf https://huggingface.co/spaces/YOUR_USERNAME/educational-life-sim
git push hf main
```

## License

Code MIT, assets are CC‑0 (see `/assets/`).
