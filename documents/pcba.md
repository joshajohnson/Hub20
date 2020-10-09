# PCB SMT Assembly Guide

I highly recommend assembling this board using solder paste, a stencil, and a reflow oven. If you don't have access to a reflow oven, a hot air gun will also get the job done. 

- Gerbers can be found in `production/1.0-prod/gerbers.zip` folder, and can be uploaded to your favourite PCB manufacturer.
- Most PCB houses will generate the solderpaste stencil from your copper layer, which can cause issues. As such I recommend uploading the stencil separately to ensure the apertures are as per the design files.
- The bill of materials can be found at `production/1.0-prod/bom.csv` and contains part numbers for all components on the board. DigiKey and LCSC part numbers are provided where available, however some parts such at the USB connectors, reverse mount LEDs, and USB hub may only be available at one or neither of the suppliers.
- The "Human PnP" file is located at `production/1.0-prod/assembly.html`, and will be very helpful in assembling the board.

With the board assembled and reflowed, it is time to power it up and flash the firmware.

- Before powering up, measure between 5V, 3V3 and GND to ensure there are no shorts. The capacitors either side of the linear regulator are an easy place to measure.
- Upon plugging the board in, you should see the PWR led turn on, and the USB hub enumerate. The STM32 microcontroller will not be detected at this time.
- To flash the firmware, run `make hub20:default:flash` from within your `qmk_firmware` folder. Reset the board using the reset button, and you should see `dfu-util` flash the board.
- Confirm all keys work by shorting the switch contacts with tweezers and looking for an output from the board, and confirm the USB hub works by plugging a device into each port and checking for enumeration. Ensure you flip the USB connector and test all the ports with it in the other orientation as well.

If the board does not work, common issues include:

- Shorts / opens on the QFN and USB footprints.
- Crystal for the USB hub not being soldered down correctly.
- Diodes being installed backwards.
- LEDs damaged due to moisture ingress / excessive heat during reflow.
- Shorts on the resistor networks.
