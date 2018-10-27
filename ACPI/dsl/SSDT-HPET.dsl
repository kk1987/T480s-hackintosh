// Disable HPET devices
// https://www.tonymacx86.com/threads/guide-using-clover-to-hotpatch-acpi.200137/page-51#post-1834575

DefinitionBlock("", "SSDT", 2, "hack", "_HPET", 0)
{
    External(_SB.PCI0.LPCB.HPET, DeviceObj)

    Scope(_SB.PCI0.LPCB.HPET)
    {
        Name (_STA, 0x0)
    }
}
