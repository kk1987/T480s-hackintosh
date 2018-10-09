## Introduction

This repo is my notes and configuration files for my hackintosh (10.14 Mojave) installation on a Thinkpad T480s.

The Clover files in this repo (config.plist + ACPI/patched/ + kexts/Other/ + drivers64UEFI) _in theory_ should boot macOS 10.14, installer or post-install, on any T480s. There's absolutely zero guarantee though, since I never tested on a different machine.

The EDID injection is specific to the IVO touch panel and probably should be disabled for other configurations. Also for initial booting, it might be necessary to inject an invalid ig-platform-id like 0x12344321. Subsequent boots should be fine without.

## Basic Info

### Hardware (OEM):

* i5 8250U CPU, Intel UHD 620 (no dGPU)
* 1080p screen w/ touch (IVO R140NWF5 R6, w/ ELAN USB touchscreen built-in)
* Realtek ALC3287 (ALC257?)
* Intel Ethernet I219-V
* Synaptics TrackPoint + ELAN TrackPad
* Synaptics Fingerprint Reader

### Hardware (upgraded/replaced):

* 24GB RAM (8G onboard + 16G SODIMM, DDR4)
* ADATA SX8200 960GB NVMe SSD
* BCM94352Z M.2 WiFi + BT (card is E-key while mobo slot is A-key; mechanically modified with knife/file to fit)

### UEFI Settings:

* Current: UEFI Firmware version 1.26
  * "Thunderbolt BIOS Assist": disable (default) to make front type-C port work in macOS; enable to reduce idle power consumption in Linux
* Static / partial-hotpatch ACPI files before `d6dd12a` were patched against UEFI version 1.25, all ports/devices enabled (default), and "Thunderbolt BIOS Assist" enabled

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
* Audio: no HDMI audio (device exists but is muted) and no auto switching between internal mic and external mic via the combo jack (headphone/speaker switching seems to be working)
* Display: noticeable color banding on gradients (the FHD touch panel seems to be 6-bit, as reported in Intel Driver's settings under Windows, but the banding seems to be worse in macOS)
* HID: No multi-touch/scrolling; both TrackPad and TrackPoint function as PS/2 mouse
  * [Smart Scroll](http://www.marcmoini.com/sx_en.html) can be used to emulate mid-button TrackPoint scrolling (enable "Vector Scroll" with "Drag Button 3")
  * Alternatively, multi-touch trackpad can be enabled using patched ELAN driver found at https://github.com/linusyang92/macOS-ThinkPad-T480s (requires disabling TrackPoint in UEFI though)

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

### config.plist

* (archived in this repo)

### kexts

I put all extra kexts under EFI/CLOVER/kexts/Other.

* FakeSMC (w/ all plugins), for Hackintosh to boot
* ACPIBatteryManager, for battery status
* AppleBacklightInjector, for brightness
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
  * This likely won't work with different hardware specs, or even different UEFI versions/settings
  * See git changelog for details. (Mostly just FYI which patches are needed)