//
// SSDT-MCHC.dsl
//
// Dell XPS 15 9560 
//
// This SSDT adds the missing Memory (DRAM) Controller to the system.
//
// Credit to syscl:
// https://github.com/syscl/XPS9350-macOS
//
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "_MCHC", 0)
{
#endif
    External(_SB.PCI0, DeviceObj)

    Scope(_SB.PCI0)
    {
		Device (MCHC)
		{
		    Name (_ADR, Zero)
		}
	}
#ifndef NO_DEFINITIONBLOCK
}
#endif