#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_USBX", 0x00000000)
{
#endif
	External(\_SB.PCI0.XHC, DeviceObj)
	// inject properties for XHCI
        Method(\_SB.PCI0.XHC._DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Local0 = Package()
            {
                "AAPL,current-available", Buffer() { 0x34, 0x08, 0, 0 },
                "AAPL,current-extra", Buffer() { 0x98, 0x08, 0, 0, },
                "AAPL,current-extra-in-sleep", Buffer() { 0x40, 0x06, 0, 0, },
                "AAPL,max-port-current-in-sleep", Buffer() { 0x34, 0x08, 0, 0 },
            }
            Return(Local0)
        }


	Device (_SB.USBX)
	{
		Name (_ADR, Zero)  // _ADR: Address
		Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
		{
			If (!Arg2)
			{
				Return (Buffer ()
				{
					0x03
				})
			}

			Return (Package ()
			{
				"kUSBSleepPortCurrentLimit", 
				2100, 
				"kUSBSleepPowerSupply", 
				2600, 
				"kUSBWakePortCurrentLimit", 
				2100, 
				"kUSBWakePowerSupply", 
				3200
			})
		}
	}
#ifndef NO_DEFINITIONBLOCK
}
#endif

