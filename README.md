# AveonEvan

A Roblox script hub: **382 deobfuscated game scripts** with a scanner-first GUI.
The hub detects the game you're in and shows which scripts are compatible.

## Loadstring

Paste this into your executor (Delta, Solara, Wave, ...):

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Xenomorph9/AveonEvan/main/loader.lua"))()
```

- Toggle the hub window with **RightControl** (or the `-` button).
- **Dashboard** — auto-detects your current game (via PlaceId) and lists its compatible scripts.
- **All Scripts** — searchable list of the whole library, EXECUTE button under every card.
- **Favorites** — tap ☆ on any card; saved locally on your device.
- **Game Scanner** — paste any PlaceId to check the library for it.
- **Info** — usage, credits, notes.

## How it works

```
loader.lua      tiny bootstrap (this is what the loadstring runs)
src/hub.lua     the GUI
src/games.json  generated index: name, PlaceId, file, size for every script
games/          one .lua per game, named  Game Name [PlaceId].lua
misc/           scripts without a PlaceId (multi-game / unindexed)
```

Scripts are fetched from this repo at execute time, so the loadstring stays
tiny and updates ship without changing anything on your side.

## Adding scripts

Drop a new file into `games/` named `Game Name [PlaceId].lua`
(the PlaceId is in the game URL), then regenerate `src/games.json`
(the index the hub reads). The hub matches scripts to your current game
purely by that PlaceId.

## Credits & notes

- Script sources: the deobfuscated **Ouroboros** collection (public dump).
- Many scripts load their own UI (Obsidian library) at runtime.
- Hub GUI built from scratch for this project.
- Running executor scripts violates Roblox's ToS and can get your account
  banned — use a burner account. For personal use only.
