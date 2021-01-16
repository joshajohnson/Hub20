# VIA Keymap Configuration

`Hub20 was recently merged into VIA, so it should be automatically detected. If for some reason it is not, the below info should allow you to manually load the config file.`

- Open the settings tab in VIA, and enable "Show Design Tab".
- On the design tab, click "load" and select the [hub20.json](../software/via-hub20.json) file.
	- To download the json file, click through to the above link, select raw, copy all of the next into notepad or a similar text editor, and save as hub20.json.
- Hub20 should now be detected by VIA.

VIA is a great way to graphically configure your keyboard without going through the hassle of configuring build environments and poking around in the code.

## Install VIA

To use VIA, first [download and install](https://caniusevia.com/) the configuration software, and then plug in your keyboard. It should detect and show a graphic of Hub20 on your screen.

**Note: Hub20 ships with VIA by default, however if you have flashed a custom firmware on it you will need to ensure a VIA compatible keymap is on your board before continuing.**

## Configure Keys

From within VIA, you can easily configure keys as required. It allows not only the typical keys found on your keyboard, but media keys, macros, layer shifting to enable different functions per key, and even keys to control the LEDs installed in Hub20. It does not however allow you to configure the rotary encoder behaviour.

Due to the multiple layouts Hub20 allows, VIA allows you to toggle on / off the 2U keys required for it to be a left hand numpad. This can be done from the `layouts` tab in the top left of the screen. To configure Hub20 as a right hand numpad, enable split plus / enter / zero, and change the keymap as required. For the 2U keys, simply assign the same key to both keys in the pair.

## Configure Encoders

By default, the encoders are configured to volume up / down (left) and media next / prev (right).

Unfortunately, due to limitations in VIA the encoders are not visible or configurable. The best workaround at this time is to build a new VIA keymap with the encoder functions altered to suit your use case, flash this onto the board, and then configure the remainder of the keys in VIA. This can be done by following the below instructions:

- Follow the QMK [getting started guide](https://docs.qmk.fm/#/newbs_getting_started) to install the toolchain and configure your build environment.
- If you are reading this, the Hub20 firmware is not yet merged into QMK. Copy the `hub20` folder in `firmware` to `qmk_firmware/keyboards/hub20` before continuing.
- Open the `qmk_firmware/keyboards/hub20/keymaps/via/keymap.c` file in your preferred text editor.
- Locate the function `encoder_update_user`, and update the keycodes in `tap_code(KC_xxx)` to one from the [keycodes list](https://docs.qmk.fm/#/keycodes?id=basic-keycodes). If you use keycode not on the basic list, you may need to replace `tap_code` with `tap_code16`.
- With the changes made, save your new keymap, build, and flash the keymap to Hub20 with `make hub20:via:flash` run from the `qmk_firmware` directory.
- You should now see the encoders functioning as desired, and you can configure the remainder or your keyboard using VIA.
