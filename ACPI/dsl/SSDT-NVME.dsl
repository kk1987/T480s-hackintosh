#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_NVME", 0x00000000)
{
#endif
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.RP09.PXSX._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2) { Return (Buffer() { 0x03 }) }

        Return (Package()
        {
            "deep-idle", One
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif

