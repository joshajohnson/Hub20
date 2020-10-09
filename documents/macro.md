# Macro Configuration

Hub20 can also be used with software on your computer to enable powerful, context aware macros to be run.

This works by sending uniquely identifiable keys to your computer which are picked up by software, which can then map those keys as required. As such, this requires the correct firmware to be loaded onto Hub20, and software to be installed on your computer.

## Firmware

Hub20 does not ship with the macro firmware preinstalled, but is easily flashed onto your board.

MechMerlin has [a great video](https://youtu.be/VR53Wo9Z960) on the process, so I will highlight the Hub20 specific configurations / settings.

- When selecting the file to flash, use `firmware/binaries/hub20_macro.bin`.
- There is no need to select the microcontroller before flashing the board.
- The reset button can be found between the USB connectors on the back of the board, or by holding down the top right button and depressing the left encoder.

The default configuration for the keyboard is shown below:

```
------------------
|  ENC1   ENC2   |  ENC1:Clockwise: u
| a   b   c   d* |  ENC1:Anticlockwise: v
| e   f   g   h  |  ENC2:Button: w
| i   j   k   l  |  ENC2:Clockwise: x
| m   n   o   p  |  ENC2:Anticlockwise: y
| q   r   s   t  |  ENC2:Button: z
------------------
```

\* Once flashing the macro layout you may notice that holding or tapping the top right key quickly may not result in a key being sent. This because if you double tap that key, it will bring you to a configuration layer on the keyboard which allows you to control the LEDs and reset the keyboard.  Double tapping the same key will return you to the base layer. The keymap for this configuration is shown below:

```
                Reset,   _______,
 RGB On/Off,  RGB Prev,  RGB Next,       Home,
    _______,  Bright +,  BRIGHT -,    _______,
    _______,     Hue +,     Hub -,    _______,
    _______,     Sat +,     Sat -,    _______,
    _______,   _______,   _______,    _______,

```

## Software

### Windows

- Download and install [AutoHotKey](https://www.autohotkey.com/).
- Copy the example script from `software/hub20-template.ahk` into a folder of your choice.
- For the script to run at startup, I strongly suggest placing a shortcut to the above file in `%APPDATA%/Roaming/Microsoft/Windows/Start Menu/Programs/Start-up`.
- Configure the script to suit your use case, ensuring to restart the AHK script after each change, otherwise it will not use the latest changes.

### macOS

- Install [Karabiner-Elements](https://karabiner-elements.pqrs.org/docs/getting-started/installation/).
- Copy the example script from `software/karabiner-hub20.json` to your local `~.config/karabiner` folder.
- Configure keybindings as required.

### Linux

- Whilst it's slightly more painful and buggy to configure and use on Linux, the below is the best configuration I've got to work. PRs are very much welcome for improvements to this.
- Install AutoKey from [here](https://github.com/autokey/autokey/wiki/Installing#debian-and-derivatives), as the apt-get version is broken.
- Create a file in your home directory with the name `.Xmodmap` and the following contents

    ``` bash
    keycode 202 = Hyper_R
    add mod3 = Hyper_R
    ```

- Update xmodmap with `xmodmap ~/.Xmodmap` and then confirm that `mod3` has been updated by entering `xmodmap` in your shell and looking for `mod3 Hyper_R (0xca)`.
- Then add it to your ```~./bashrc```, as this will allow the keyboard to work **only after a shell is opened by the user**. A PR to resolve this would be very welcomed.
- Load the AutoKey files found in `software/hub16` and it should work.
    - Note: you may need to make a new folder from within Autokey, then copy your files in as it is particular about locating new files.
- You will also need to configure AutoKey to start at boot, which can be done from `Edit -> Preferences`.
- For volume and media control as configured in my example code, [playerctl](https://github.com/altdesktop/playerctl) and ```alsa-utils``` must be installed.
