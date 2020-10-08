# Hub20

Hub20 is a numpad with a bunch of features you never knew you needed. They include:

- Left and Right handed layouts supported, along with a 4x5 1U grid enabling it to be used as a macropad.
- Two rotary encoders, enabling intuitive controls for a wide range of tools including CAD and photo / video editing.
- Inbuilt USB 2.0 Hub with Type-C connectors, allowing connection to other keyboards, memory sticks, wireless receivers and more!
- VIA and QMK compatibility, including a "macro" mode enabling the keys to be remapped on a host computer.
- 27 addressable RGB leds, including one under each key.

If this project looks familiar, it's because it contains all the best parts of [Hub16](https://github.com/joshajohnson/Hub16), with a few added extras.

## Project Status

Hardware is stable and firmware is close to finished. All going well will be available for purchase on Tindie before end of year, otherwise everything you need to build your own is available in this repo.

## Getting Started Guide

- Keyboard Assembly
- [VIA Keymap Configuration](documents/via.md)
- [Macro Configuration](documents/macro.md)

## Detailed Info

- [Advanced Firmware / Software Configuration](documents/advanced-config.md)
- [PCB SMT Assembly Guide](documents/pcba.md)
- [Enclosure Manufacturing](documents/enclosure.md)

### Repo Contents

- `documents` contains all documentation and images for the project. 
- `firmware` contains both the source and precompiled binaries for Hub20.
- `hardware` contains the KiCad design files for the keyboard.
- `josh-kicad-lib` is my personal KiCad parts library which contains many of the parts used.
- `mechanicals` contain the plate and case design for Hub20.
- `produciton` contains all the files required to produce the PCB. It also contains test scripts and jigs.
- `software` contains all the VIA config, along with template script to use Hub20 as a macropad with software on your computer.

### Notes on the USB Hub

The hub is a four port USB 2.0 Hub with Type-C connectors, aimed at allowing connection of keyboards, mice, memory sticks, wireless receivers, and other small devices (including a second Hub20!)  to your computer.

Due to cost and space constraints, the hub has some limitations. The hub **is not**:

- USB 3.x, Power Delivery, Thunderbolt, DisplayPort, etc compatible. 
- Designed to charge your phone quickly. Only 100mA is guaranteed per port.
- Designed to work with power hungry devices such as spinning hard drives.
- Guaranteed to provide full USB 2.0 speeds and performance on all ports.

Might you be able to charge your phone whilst copying files at full speed of a spinning hard drive over a long cable? Maybe. However Hub20 is a numpad first, USB hub second, so if you are looking for a high performance device I'd suggest picking up a dedicated USB hub and just using Hub20 as a numpad.

If you have any questions or comments please get in touch. I can be found on Discord as `_joshajohnson#9451`, [Twitter](https://twitter.com/_joshajohnson), email, or leave an issue or pull request on this repo.
