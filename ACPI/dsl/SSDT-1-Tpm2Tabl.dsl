/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1-Tpm2Tabl.aml, Mon Sep 17 17:08:02 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003DB (987)
 *     Revision         0x02
 *     Checksum         0x69
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Tpm2Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "Tpm2Tabl", 0x00001000)
{
    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "STM7304")  // _HID: Hardware ID
            Noop
            Name (_CID, "MSFT0101")  // _CID: Compatible ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadOnly,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })
            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8
            }

            OperationRegion (TNVS, SystemMemory, 0x7FF55000, 0x26)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (LAnd (LLess (Arg0, 0x06), LGreater (Arg0, 0x03)))
                {
                    If (LNot (And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP)
                        Store (MCIN, IOB2)
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (ACC0, 0xFF))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If (LEqual (_STA (), Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                     
                        })
                    }
                    Case (One)
                    {
                        Return ("1.3")
                    }
                    Case (0x02)
                    {
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (0x02, PPIP)
                        Store (PPIN, IOB2)
                        Return (FRET)
                    }
                    Case (0x03)
                    {
                        Store (PPRQ, Index (TPM2, One))
                        Return (TPM2)
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        Store (0x05, PPIP)
                        Store (PPIN, IOB2)
                        Store (LPPR, Index (TPM3, One))
                        Store (PPRP, Index (TPM3, 0x02))
                        Return (TPM3)
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        Store (0x07, PPIP)
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (Zero, PPRM)
                        If (LEqual (PPRQ, 0x17))
                        {
                            Store (DerefOf (Index (Arg2, One)), PPRM)
                        }

                        Store (PPIN, IOB2)
                        Return (FRET)
                    }
                    Case (0x08)
                    {
                        Store (0x08, PPIP)
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ)
                        Store (PPIN, IOB2)
                        Store (Zero, PPRQ)
                        Return (FRET)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    Case (One)
                    {
                        Store (DerefOf (Index (Arg2, Zero)), MORD)
                        Store (One, MCIP)
                        Store (MCIN, IOB2)
                        Return (MRET)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }
    }
}

