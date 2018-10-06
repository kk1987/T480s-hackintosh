## Introduction

This repo is my notes and configuration files for my hackintosh (10.14 Mojave) installation on a Thinkpad T480s.

## Basic Info

### Hardware (OEM):

* i5 8250U CPU, Intel UHD 620 (no dGPU)
* 1080p screen w/ touch (LCD: IVO R140NWF5, Touchscreen: ELAN)
* Realtek ALC257
* Intel Ethernet
* Synaptics TrackPoint + ELAN TrackPad
* Synaptics Fingerprint Reader

### Hardware (upgraded/replaced):

* 24GB RAM (8G onboard + 16G SODIMM, DDR4)
* ADATA SX8200 960GB NVMe SSD
* BCM94352Z M.2 WiFi + BT (card is E-key while mobo slot is A-key; mechanically modified with knife/file to fit)

### UEFI Settings:

* UEFI Firmware version 1.25
* "Thunderbolt BIOS Assist" disabled (default)

### Partitioning & other OSes:

I did a tri-boot setup with installation order as follows:

* macOS -> Windows 10 -> Arch Linux (Antergos)

## Status

### Working
* most features do work
  * Keyboard & TrackPoint/TrackPad (as mouse)
  * Ethernet, WiFi, Bluetooth
  * Screen brightness & brightness shortcut keys
  * Basic audio including speaker, internal mic, headphone/mic combo jack
  * Touchscreen
  * Camera
  * Card reader
  * All USB ports
  * HDMI (video only) output (video only), standalone or via USB type-C
  * DP output (video only)
  * Sleep/resume (takes 25-30s to sleep)

### Limited functionality

* Boot: random KP/hangs on non-verbose boot
* Audio: everything works fine, except for no HDMI audio and no auto switching between internal mic and external mic via the combo jack
* HDMI/DP
  * Video output works, audio is muted (VoodooHDA limitation)
  * May see a reduced max resolution
* HID: No multi-touch/scrolling; both TrackPad and TrackPoint function as PS/2 mouse
  * Can alternatively use closed-source ELAN driver at https://github.com/linusyang92/macOS-ThinkPad-T480s for multi-touch TrackPad (need to disable TrackPoint in UEFI)
  * [Smart Scroll](http://www.marcmoini.com/sx_en.html) can be used to emulate mid-button TrackPoint scrolling (enable "Vector Scroll" with "Drag Button 3")
### Not Working / Untested

* Fingerprint reader (no driver)
* Thunderbolt (untested)
* BT Handover etc. (untested)

## Clover UEFI Setup

### Clover

* Verified working with sf.net versions r4658, r4674

### drivers64UEFI

* ApfsDriverLoader-64
* NvmExpressDxe-64
* AptioMemoryFix-64 (or OsxAptioFixDrv-64 + EmuVariableUefi-64)

### (Pre-install) Minimal Setup for Booting Installer

* drivers64UEFI: see above
* kexts: FakeSMC + VoodooPS2Controller (anything else is optional)
* config.plist: use the one from RehabMan's [guide](https://www.tonymacx86.com/threads/guide-booting-the-os-x-installer-on-laptops-with-clover.148093/)
  * Should boot as-is with an invalid ig-platform-id like 0x12344321 specified at boot
  * Can alternatively apply Lilu+WhateverGreen+Devices/Properties patches or use the full post-install setup (untested)

### (Post-install) config.plist

* (archived in this repo)

### (Post-install) kexts

I put them under EFI/CLOVER/kexts/Other unless otherwise noted.

* FakeSMC, for Hackintosh to boot
  * Okay to keep all all sensor plugins
* ACPIBatteryManager, for battery status
* AppleBacklightInjector, for brightness
  * Installed to /L/E per RehabMan's guide - didn't test if Clover injection works
* VoodooHDA, for audio
  * Use the pkg installer, customize and select "UEFI/ESP -> Mojave"
  * Set iGain=0, PCM=100, Rec=50
* Lilu, for various stuff below to work
* WhateverGreen, for iGPU
  * See Devices/Properties patches in config.plist (set ig-platform-id & device-id + patch for 32MB DVMT-prealloc)
* USBInjectAll, for USB ports
  * Touchscreen, Bluetooth etc. won't work without this
  * See SSDT-UIAC.dsl for machine-specific patch
* VoodooPS2Controller, for keyboard/touchpad/trackpad
* IntelMausiEthernet, for Ethernet
* AirportBrcmFixup, for WiFi
  * Refer to toledo's [guide](https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/)
  * See KextsToPatch in config.plist
* BrcmFirmwareData + BrcmPatchRAM2, for Bluetooth
  * See toledo's guide

## ACPI Patching

* Based on RehabMan's [guide](https://www.tonymacx86.com/threads/guide-patching-laptop-dsdt-ssdts.152573/)
* Current: "Full Hotpatch" configuration (most SSDTs taken from linusyang92's [repo](https://github.com/linusyang92/macOS-ThinkPad-T480s))
* Commit `a95dec1`: "Partial Hotpatch" configuration (patched DSDT & add-on SSDTs in ACPI/patched)
* See git changelog for details!!
