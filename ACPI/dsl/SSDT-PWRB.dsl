#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_PWRB", 0x00000000)
{
#endif
    Device (_SB.PWRB)
    {
        Name (_HID, EisaId ("PNP0C0C"))  // _HID: Hardware ID
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif

