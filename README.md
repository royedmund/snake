# Snake for the TRS-80 Model I

A small BASIC game by Roy E. Antaw for #Septandy 2021. It uses the TRS-80's `SET`/`POINT` graphics and direct keyboard scanning.

## Run

Load or import [snake.bas](snake.bas) into a TRS-80 Model I BASIC environment, then enter:

```basic
RUN
```

The import method depends on your machine or emulator. This is hardware-specific TRS-80 BASIC; a modern BASIC interpreter will need changes to the graphics and keyboard routines.

## Controls and gameplay

- Use the arrow keys to move. Movement continues in the last selected direction.
- Avoid the border and the trail you have already drawn.
- After game over, press uppercase `Y` to play again or `N` to finish.

The score increases with each successful move. This implementation draws a continuous trail; it does not implement food items or a moving tail.

## Repository layout

| File | Purpose |
| --- | --- |
| [snake.bas](snake.bas) | Complete game listing |
| [LICENSE](LICENSE) | GNU GPL v3 licence text |

The single-file layout is sufficient. The live keyboard read is `PEEK(14400)`; an earlier source comment mentions another address, so use the executable statements when adapting the game.
