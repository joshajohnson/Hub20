#!/bin/python3

# Script to program and test Hub20

import os
import time
import argparse

def qmk():
    # Flash QMK
    flash = "dfu-util -d 0483:df11 -a 0 -s 0x08000000:leave -D ../../firmware/binaries/hub20_via.bin"
    os.system(flash)

def read_firmware():
    # Read entire firmware, including VIA EEPROM emulation
    read = "dfu-util -d 0483:df11 -a 0 -s 0x08000000:131072 -U firmware.bin"
    os.system(read)


def write_firmware():
    # Write entire firmware, including VIA EEPROM emulation
    write = "dfu-util -d 0483:df11 -a 0 -s 0x08000000:leave -D firmware.bin"
    os.system(write)

def test():
    # Test Device
    chars_reqd = "abcdefghijklmnopqrstuvwxyz"
    chars_input = input("Press all the keys!: ")
    chars_remain = ""

    while True:

        for char in chars_reqd:
            if char in chars_input:
                chars_remain = chars_remain.replace(char, "")
            elif char not in chars_remain:
                chars_remain = chars_remain + char

        if len(chars_remain) == 0:
            print("ALL KEYS WORKING")
            break

        chars_reqd = chars_remain
        chars_input = input("Need to press {}: ".format(chars_remain))

if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-q", "--qmk",          action='store_true')
    parser.add_argument("-e", "--read_eeprom",  action='store_true')
    parser.add_argument("-w", "--write_eeprom", action='store_true')
    parser.add_argument("-t", "--test",         action='store_true')
    args = parser.parse_args()

    if args.qmk:
        qmk()
    if args.read_eeprom:
        read_firmware()
    if args.write_eeprom:
        write_firmware()
    if args.test:
        test()