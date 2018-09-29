## Introduction

This repo is my notes and configuration files for my hackintosh (10.14 Mojave) installation on a Thinkpad T480s.

## Basic Info

### Hardware (OEM):

* i5 8250U CPU, Intel UHD 620 (no dGPU)
* 1080p screen w/ touch (LCD: IVO R140NWF5, Touchscreen: ELAN)
* ALC257
* Intel Ethernet
* Synaptics TrackPoint + ELAN TrackPad
* Synaptics Fingerprint Reader

### Hardware (upgraded/replaced):

* 16GB RAM (8G onboard + 8G SODIMM, DDR4)
* ADATA SX8200 480GB NVMe SSD
* BCM94352Z M.2 WiFi + BT (card is E-key while mobo slot is A-key; mechanically modified with knife/file to fit)

### UEFI Settings:

* TPM enabled (disabling would change SSDT names, but doesn't matter otherwise)
* "Thunderbolt BIOS Assist" enabled (reduces power draw)

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
  * HDMI (video) output, standalone or via USB type-C
  * Sleep/resume

### Limited functionality

* Audio: everything works fine, except for no HDMI audio and no auto switching between internal mic and external mic via the combo jack
* HDMI: video output works, audio is muted (VoodooHDA limitation)
* Sleep/resume: LED keeps blinking after resume (TODO)
* USB: everything works, except the second/bottom type-C port can only be used for charging
* HID: No scrolling support; both TrackPad and TrackPoint function as PS/2 mouse
  * TODO - make PrtSc disable TrackPad _only_
  * TODO - make TrackPoint mid button scroll work

### Not Working / untested

* Fingerprint reader (no driver)
* Thunderbolt (device not showing up in Profiler)
* DP output via type-C (untested)
* BT Handover etc. (untested)

## Clover UEFI Setup

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

### (Post-install) ACPI/patched
* Patched DSDT + patched SSDTs + SSDT-PNLF.aml + SSDT-UIAC.aml
* Set SSDR order in config.plist accordingly
* See this repo for detailed changes

### (Post-install) kexts

I put them under EFI/CLOVER/kexts/Other unless otherwise noted.

* FakeSMC, for Hackintosh to boot
  * Okay to keep all all sensor plugins
* ACPIBatteryManager, for battery status
* AppleBacklightInjector, for brightness
  * Installed to /L/E per RehabMan's guide - didn't test if Clover injection works
* VoodooHDA, for audio
  * I used pkg installer to install the prefPane & SettingsLoader, then restored original AppleHDA, removed VoodooHDA & AppleHDADisabler from /S/L/E and injected VoodooHDA with Clover instead
  * Set iGain=0, PCM=100, Rec=50
* Lilu, for various stuff below to work
* WhateverGreen, for iGPU
  * See Devices/Properties patches in config.plist
* USBInjectAll, for USB ports
  * Touchscreen, Bluetooth etc. won't work without this
  * See SSDT-UIAC.dsl for machine-specific patch
* VoodooPS2Controller, for keyboard/touchpad/trackpad
* IntelMausiEthernet, for Ethernet
* AirportBrcmFixup, for WiFi
  * Refer to toledo's [guide](https://www.tonymacx86.com/threads/broadcom-wifi-bluetooth-guide.242423/)
  * See KextsToPatch in config.plist
* BrcmFirmwareData/Repo + BrcmPatchRAM2, for Bluetooth
  * See toledo's guide
