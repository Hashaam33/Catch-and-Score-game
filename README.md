# Iron Catch

A small DOS text-mode catching game written in 16-bit x86 assembly. Move the bucket beneath falling blocks, collect valuable ores, and avoid catching TNT.

## Gameplay

- Catch iron for **5 points**, gold for **10 points**, and diamond for **15 points**.
- Catching magma subtracts **20 points**. The score cannot go below zero.
- Catching TNT ends the game. A TNT block that misses the bucket does not end the game.
- Blocks fall at timed intervals, and the game lasts **two minutes**.
- Your final score appears on the game-over screen. Press a key to return to the home menu.

## Controls

| Key | Action |
| --- | --- |
| Left / Right arrows | Move the bucket |
| Esc during a game | Open the pause menu |
| Up / Down arrows | Choose an item in the menu |
| Enter | Select an item |
| Esc in the pause menu | Resume |

Use the pause menu to resume or exit the game.

## Build and run

The source uses BIOS and DOS interrupts and builds as a DOS `.COM` program. With NASM installed, assemble it from a DOS-compatible environment:

```sh
nasm -f bin ironcatch.asm -o ironcatch.com
```

Run `ironcatch.com` in DOS or a DOS emulator such as DOSBox. Change `ironcatch.asm` in the command if your source file has a different name.

## Requirements

- NASM assembler
- DOS or a DOS-compatible emulator
- x86 real-mode BIOS/DOS interrupt support and color text video memory

## Technical notes

The program starts at offset `0x0100`, the standard load address for a DOS `.COM` program. It draws directly to color text video memory and uses BIOS keyboard and clock services.
