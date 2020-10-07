# Advanced Firmware and Software Configuration

This section details the juicy details on how Hub20 works, and how you can modify it to suit your needs.

If you are simply looking for into on how to get up and running, the [VIA](via.md) and [Macro](macro.md) documentation may be better suited.

## Summary

The macro functionality of Hub20 is quite unique, as it moves control over what key is detected by the host computer from the keyboard to the computer itself, which enables a whole new level of control. Examples of functionality enabled by this include:

- Dynamically assigning keys pressed depending on open application, e.g. encoder changing zoom in Photoshop, but zooming timeline in Premiere.
- Accessing low level functions, such as directly bringing a given application to the foreground without tabbing through open windows.
- Running shell commands without opening a shell and playing back key presses.
- Any other feature that your software (AutoHotKey, Karabiner-Elements, Autokey) provides an interface for.

## Theory of Operation

- Hub20 works by presenting a uniquely identifiable key to your computer, which can be intercepted by a intermediate layer of software on your computer, and can then be processed as required.
- This works by "wrapping" a normal key press with a modifier key to create a unique key, just like pressing SHIFT changes the key shown on your screen when pressed in conjunction with a key on your keyboard.
- However, as CTRL, SHIFT, ALT etc are commonly used they would not be very helpful to generate a unique key, so we instead use F13 - F24 as most keyboards do not have these, but are still valid keycodes.
- To achieve this, when you press a key, Hub20 first sends a modifier key (e.g. F23) before pressing down the key you touched. Upon release of your key, it releases the modifier, allowing the computer to pick up that Hub20 has pressed a key.
- **NOTE** macOS instead uses the VID:PID of your device to uniquely identify Hub20, however the high level concept outlined above still applies.

## Firmware Configuration

The default configuration can be easily changed, allowing for further customisation of the board. Examples of what can be done include:

- Holding down a key / encoder results in different keys being sent when rotating the encoder, effectively doubling (or tripling etc) the usefulness of encoders on the board.
- Extending the number of macro keys by having multiple layers of unique keys, accessed by the bottom row of keys being dedicated to shifting layers.
- Building the macro configuration with VIA enabled, allowing LEDs to be customised from the VIA GUI instead of tapping keys to change the mode and colour.