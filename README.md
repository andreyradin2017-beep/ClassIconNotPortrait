# ClassIconNotPortrait

WoW 3.3.5 (Sirus) addon. Replaces the default portrait in stock unit frames (player/target/focus/party) with the class icon for player units.

## How it works

Hooks the global `UnitFramePortrait_Update` function and, for player units, loads `Interface/TargetingFrame/UI-Classes-Circles` with coordinates from the standard `CLASS_ICON_TCOORDS` table. Non-player units keep their normal portrait.

## Files

- `ClassIconNotPortrait.toc`
- `ClassIconNotPortrait.lua`

## Requirements

- Interface `30300` (WotLK / Sirus client).