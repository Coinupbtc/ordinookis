# Ordinookis — Character Reference & Render Log

Project hub: `~/Documents/projects/ordinookis/`
- `characters/` — original 5 character art (from Telegram, Aug 4 2026)
- `videos/` — finished deliverables (H3 renders)
- `prompts.md` — this file: character map + exact prompts + render recipe

Render stack: **MiniMax H3 FL2VA** (local 2× DGX Spark, `http://192.168.100.10:8800`)
Standard: 1280×720 @24fps, 4s/clip, FL2VA I2V, audio on.

## Character roster

| # | File | Look | Gambling-trench role |
|---|------|------|----------------------|
| 1 | `characters/01-poker-shark.jpg` | Blue fur, beret w/ gold button, purple sunglasses, pipe, pink jacket, silver chain, ETH-pattern bg | Poker shark |
| 2 | `characters/02-pit-boss-shiba.jpg` | Blue Shiba, navy police cap w/ gold badge, orange bg | Casino pit boss |
| 3 | `characters/03-slot-fiend-redpanda.jpg` | Cyan red panda, black hoodie w/ green strawberry print, pastel pink bg | Slot machine fiend |
| 4 | `characters/04-roulette-highroller.jpg` | Grey bear, beige fedora, neon-green glasses, black suit + red tie, mint bg | Roulette high-roller |
| 5 | `characters/05-craps-heat.jpg` | Brown bear, tan beanie w/ pom-pom, red heart eyes, lollipop, red bg | Craps hot streak |

## Exact prompts (2026-08-04, "The Gambling Trenches" montage)

1. **poker-shark** — "Pixel-art character with blue fur, purple sunglasses, a brown pipe in its mouth and a pink jacket: sitting at a smoky underground poker table in a neon casino, sliding a tall stack of gold chips into the center of the pot, pipe smoke curling up, confident grin, cinematic lighting"
2. **pit-boss-shiba** — "Pixel-art blue Shiba Inu in a navy police cap with gold badge: standing behind a casino card table like a pit boss, dealing cards with one paw, tall stacks of chips in front, stern focused look, neon casino lights, cigarette smoke haze"
3. **slot-fiend-redpanda** — "Pixel-art cyan red panda in a black hoodie with a small green strawberry print: yanking the lever of a vintage slot machine, reels spinning with cherries and sevens, pink neon glow, excited eyes, coins spilling out"
4. **roulette-highroller** — "Pixel-art grey bear in a beige fedora, neon-green sunglasses and a black suit with red tie: high-roller at a roulette table, sliding a huge stack of chips onto red, watching the ball spin in the wheel, cool calm confidence"
5. **craps-heat** — "Pixel-art brown bear with a beanie and glowing red heart eyes, holding a pink lollipop: at a craps table rolling dice, hearts glowing bright, jackpot celebration, confetti falling, neon casino lights"

## Re-render recipe

```bash
# single character → clip
H3_WIDTH=1280 H3_HEIGHT=720 bash ~/.hermes/scripts/h3-image2video.sh \
  ~/Documents/projects/ordinookis/characters/01-poker-shark.jpg "<prompt>"

# full montage driver (idempotent; skips finished clips)
bash /tmp/ordinookis-gambling.sh   # outputs ordinookis-gambling-trenches.mp4
```

## Other deliverables logged here

- `videos/ken-griffey-home-run.mp4` — H3 text-to-video, Ken Griffey Jr. home run, 1280×704, 4.5s (Aug 4 2026)
- Raw H3 output bucket (all gens): `~/Documents/projects/MiniMax-H3-2x-DGX-Spark/output/`
