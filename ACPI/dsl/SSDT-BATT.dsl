#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "_BATT", 0x00000000)
{
#endif
    External (_SB_.LID_, DeviceObj)    // (from opcode)
    External (_SB_.LID_._LID, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.DCPL, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.CLID, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.AC__._PSR, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ATMC, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B0I0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B0I1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B0I2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B0I3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1I0, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1I1, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1I2, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.B1I3, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HB0S, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HB1S, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BATM, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BATW, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BRNS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BSWA, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BSWR, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DCWL, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ELNK, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.EVNT, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.FNST, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HCMU, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HFNI, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HFSP, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HIID, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.ANGN, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.DHKC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.DYTC, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKE, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.WGWK, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HSPA, IntObj)    // (from opcode)
//    External (_SB_.PCI0.RP09, UnknownObj)    // (from opcode)
//    External (_SB_.PCI0.RP09.PDSF, IntObj)    // (from opcode)
//    External (_SB_.PCI0.RP09.PDSX, IntObj)    // (from opcode)
    External (_SB_.SLPB, DeviceObj)    // (from opcode)
    External (_TZ_.THM0, ThermalZoneObj)    // (from opcode)
    External (ACST, MethodObj)    // 0 Arguments (from opcode)
    External (AWON, MethodObj)    // 1 Arguments (from opcode)
//    External (B0I0, IntObj)    // (from opcode)
//    External (B0I1, IntObj)    // (from opcode)
//    External (B0I2, IntObj)    // (from opcode)
//    External (B0I3, IntObj)    // (from opcode)
//    External (B1I0, IntObj)    // (from opcode)
//    External (B1I1, IntObj)    // (from opcode)
//    External (B1I2, IntObj)    // (from opcode)
//    External (B1I3, IntObj)    // (from opcode)
//    External (BATM, UnknownObj)    // (from opcode)
    External (BRLV, IntObj)    // (from opcode)
//    External (BSWA, UnknownObj)    // (from opcode)
//    External (BSWR, UnknownObj)    // (from opcode)
    External (CHKC, IntObj)    // (from opcode)
    External (CHKE, IntObj)    // (from opcode)
    External (CMPR, IntObj)    // (from opcode)
    External (CSUM, MethodObj)    // 1 Arguments (from opcode)
    External (FNID, IntObj)    // (from opcode)
//    External (HIID, UnknownObj)    // (from opcode)
    External (IOEN, IntObj)    // (from opcode)
    External (IOST, IntObj)    // (from opcode)
    External (ISWK, IntObj)    // (from opcode)
    External (LIDB, IntObj)    // (from opcode)
    External (NBCF, IntObj)    // (from opcode)
    External (NVSS, MethodObj)    // 1 Arguments (from opcode)
    External (OSC4, MethodObj)    // 0 Arguments (from opcode)
    External (PNTF, MethodObj)    // 1 Arguments (from opcode)
    External (PWRS, MethodObj)    // 0 Arguments (from opcode)
    External (RRBF, IntObj)    // (from opcode)
    External (SCRM, MethodObj)    // 0 Arguments (from opcode)
    External (SPS_, FieldUnitObj)    // (from opcode)
    External (UCMS, MethodObj)    // 1 Arguments (from opcode)
    External (VBRC, MethodObj)    // 1 Arguments (from opcode)
    External (VBTD, MethodObj)    // 0 Arguments (from opcode)
    External (VCMS, MethodObj)    // 2 Arguments (from opcode)
    External (VIGD, IntObj)    // (from opcode)
    External (VSLD, MethodObj)    // 1 Arguments (from opcode)
    External (WAKI, IntObj)    // (from opcode)
    External (WLAC, IntObj)    // (from opcode)
    External (WVIS, IntObj)    // (from opcode)

    Method (B1B2, 2, NotSerialized)
    {
        ShiftLeft (Arg1, 0x08, Local0)
        Or (Arg0, Local0, Local0)
        Return (Local0)
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg1, ShiftLeft (Local0, 0x08), Local0)
        Or (Arg0, ShiftLeft (Local0, 0x08), Local0)
        Return (Local0)
    }

    Scope (\_SB.PCI0.LPCB.EC)
    {
        Method (RE1B, 1, NotSerialized)
        // Arg0 - offset in bytes from zero-based EC
        {
            OperationRegion(ECOR, EmbeddedControl, Arg0, 1)
            Field(ECOR, ByteAcc, NoLock, Preserve) { BYTE, 8 }
            Return(BYTE)
        }
        Method (RECB, 2, Serialized)
        // Arg0 - offset in bytes from zero-based EC
        // Arg1 - size of buffer in bits
        {
            ShiftRight(Arg1, 3, Arg1)
            Name(TEMP, Buffer(Arg1) { })
            Add(Arg0, Arg1, Arg1)
            Store(0, Local0)
            While (LLess(Arg0, Arg1))
            {
                Store(RE1B(Arg0), Index(TEMP, Local0))
                Increment(Arg0)
                Increment(Local0)
            }
            Return(TEMP)
        }

        OperationRegion (BRAM, EmbeddedControl, Zero, 0x0100)
        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x36), 
            AC10,8,AC11,8,
            Offset (0x4C), 
                /*HTMH*/,   8, 
                /*HTML*/,   8, 
                AK00,8,AK01,8,
            Offset (0x83), 
                /*HFNI*/,   8, 
                SPD0,8,SPD1,8,
            Offset (0xB0), 
                DEN0,8,DEN1,8,DEN2,8,DEN3,8, 
                DEP0,8,DEP1,8,DEP2,8,DEP3,8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
                RC00,8,RC01,8, 
                FC00,8,FC01,8, 
                BAE0,8,BAE1,8, 
                BRS0,8,BRS1,8, 
                AC00,8,AC01,8, 
                BV00,8,BV01,8, 
                BAF0,8,BAF1,8, 
                BBS0,8,BBS1,8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
                SB00,8,SB01,8, 
                BMD0,8,BMD1,8, 
                CC00,8,CC01,8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
                DC00,8,DC01,8, 
                DV00,8,DV01,8, 
                BOM0,8,BOM1,8, 
                BSI0,8,BSI1,8, 
                BDT0,8,BDT1,8, 
                SN00,8,SN01,8
        }

        Field (BRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            CH00,8,CH01,8,CH02,8,CH03,8
        }
        
        Field (BRAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0xA0), 
                BMNX,128,//SBMN,128
            }

            Field (BRAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0xA0), 
                BDNX,128,//SBDN,128
            }

        Method (GBIF, 3, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                Or (Arg0, 0x01, HIID)
                Store (B1B2(SB00,SB01), Local7)
                ShiftRight (Local7, 0x0F, Local7)
                XOr (Local7, 0x01, Index (Arg1, 0x00))
                Store (Arg0, HIID)
                If (Local7)
                {
                    Multiply (B1B2(FC00,FC01), 0x0A, Local1)
                }
                Else
                {
                    Store (B1B2(FC00,FC01), Local1)
                }

                Store (Local1, Index (Arg1, 0x02))
                Or (Arg0, 0x02, HIID)
                If (Local7)
                {
                    Multiply (B1B2(DC00,DC01), 0x0A, Local0)
                }
                Else
                {
                    Store (B1B2(DC00,DC01), Local0)
                }

                Store (Local0, Index (Arg1, 0x01))
                Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                If (Local7)
                {
                    Store (0xC8, Index (Arg1, 0x06))
                }
                ElseIf (B1B2(DV00,DV01))
                {
                    Divide (0x00030D40, B1B2(DV00,DV01), Local2, Index (Arg1, 0x06))
                }
                Else
                {
                    Store (0x00, Index (Arg1, 0x06))
                }

                Store (B1B2(DV00,DV01), Index (Arg1, 0x04))
                Store (B1B2(SN00,SN01), Local0)
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Store (0x04, Local2)
                While (Local0)
                {
                    Divide (Local0, 0x0A, Local1, Local0)
                    Add (Local1, 0x30, Index (SERN, Local2))
                    Decrement (Local2)
                }

                Store (SERN, Index (Arg1, 0x0A))
                Or (Arg0, 0x06, HIID)
                Store (RECB(0xA0,128), Index (Arg1, 0x09))
                Or (Arg0, 0x04, HIID)
                Name (BTYP, Buffer (0x05)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00                   
                })
                Store (B1B4(CH00,CH01,CH02,CH03), BTYP)
                Store (BTYP, Index (Arg1, 0x0B))
                Or (Arg0, 0x05, HIID)
                Store (RECB(0xA0,128), Index (Arg1, 0x0C))
            }
            Else
            {
                Store (0xFFFFFFFF, Index (Arg1, 0x01))
                Store (0x00, Index (Arg1, 0x05))
                Store (0x00, Index (Arg1, 0x06))
                Store (0xFFFFFFFF, Index (Arg1, 0x02))
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBIX, 3, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                Or (Arg0, 0x01, HIID)
                Store (B1B2(CC00,CC01), Local7)
                Store (Local7, Index (Arg1, 0x08))
                Store (B1B2(SB00,SB01), Local7)
                ShiftRight (Local7, 0x0F, Local7)
                XOr (Local7, 0x01, Index (Arg1, 0x01))
                Store (Arg0, HIID)
                If (Local7)
                {
                    Multiply (B1B2(FC00,FC01), 0x0A, Local1)
                }
                Else
                {
                    Store (B1B2(FC00,FC01), Local1)
                }

                Store (Local1, Index (Arg1, 0x03))
                Or (Arg0, 0x02, HIID)
                If (Local7)
                {
                    Multiply (B1B2(DC00,DC01), 0x0A, Local0)
                }
                Else
                {
                    Store (B1B2(DC00,DC01), Local0)
                }

                Store (Local0, Index (Arg1, 0x02))
                Divide (Local1, 0x14, Local2, Index (Arg1, 0x06))
                If (Local7)
                {
                    Store (0xC8, Index (Arg1, 0x07))
                }
                ElseIf (B1B2(DV00,DV01))
                {
                    Divide (0x00030D40, B1B2(DV00,DV01), Local2, Index (Arg1, 0x07))
                }
                Else
                {
                    Store (0x00, Index (Arg1, 0x07))
                }

                Store (B1B2(DV00,DV01), Index (Arg1, 0x05))
                Store (B1B2(SN00,SN01), Local0)
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Store (0x04, Local2)
                While (Local0)
                {
                    Divide (Local0, 0x0A, Local1, Local0)
                    Add (Local1, 0x30, Index (SERN, Local2))
                    Decrement (Local2)
                }

                Store (SERN, Index (Arg1, 0x11))
                Or (Arg0, 0x06, HIID)
                Store (RECB(0xA0,128), Index (Arg1, 0x10))
                Or (Arg0, 0x04, HIID)
                Name (BTYP, Buffer (0x05)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00                   
                })
                Store (B1B4(CH00,CH01,CH02,CH03), BTYP)
                Store (BTYP, Index (Arg1, 0x12))
                Or (Arg0, 0x05, HIID)
                Store (RECB(0xA0,128), Index (Arg1, 0x13))
            }
            Else
            {
                Store (0xFFFFFFFF, Index (Arg1, 0x02))
                Store (0x00, Index (Arg1, 0x06))
                Store (0x00, Index (Arg1, 0x07))
                Store (0xFFFFFFFF, Index (Arg1, 0x03))
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBST, 4, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (And (Arg1, 0x20))
            {
                Store (0x02, Local0)
            }
            ElseIf (And (Arg1, 0x40))
            {
                Store (0x01, Local0)
            }
            Else
            {
                Store (0x00, Local0)
            }

            If (And (Arg1, 0x07)){}
            Else
            {
                Or (Local0, 0x04, Local0)
            }

            If (LEqual (And (Arg1, 0x07), 0x07))
            {
                Store (0x04, Local0)
                Store (0x00, Local1)
                Store (0x00, Local2)
                Store (0x00, Local3)
            }
            Else
            {
                Store (Arg0, HIID)
                Store (B1B2(BV00,BV01), Local3)
                If (Arg2)
                {
                    Multiply (B1B2(RC00,RC01), 0x0A, Local2)
                }
                Else
                {
                    Store (B1B2(RC00,RC01), Local2)
                }

                Store (B1B2(AC00,AC01), Local1)
                If (LGreaterEqual (Local1, 0x8000))
                {
                    If (And (Local0, 0x01))
                    {
                        Subtract (0x00010000, Local1, Local1)
                    }
                    Else
                    {
                        Store (0x00, Local1)
                    }
                }
                ElseIf (LNot (And (Local0, 0x02)))
                {
                    Store (0x00, Local1)
                }

                If (Arg2)
                {
                    Multiply (Local3, Local1, Local1)
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }

            Store (ShiftLeft (0x01, ShiftRight (Arg0, 0x04)), Local5)
            Or (BSWA, BSWR, BSWA)
            If (LEqual (And (BSWA, Local5), 0x00))
            {
                Store (Local0, Index (Arg3, 0x00))
                Store (Local1, Index (Arg3, 0x01))
                Store (Local2, Index (Arg3, 0x02))
                Store (Local3, Index (Arg3, 0x03))
                If (LEqual (Arg0, 0x00))
                {
                    Store (Local0, B0I0)
                    Store (Local1, B0I1)
                    Store (Local2, B0I2)
                    Store (Local3, B0I3)
                }
                Else
                {
                    Store (Local0, B1I0)
                    Store (Local1, B1I1)
                    Store (Local2, B1I2)
                    Store (Local3, B1I3)
                }
            }
            Else
            {
                If (\_SB.PCI0.LPCB.EC.AC._PSR ())
                {
                    If (LEqual (Arg0, 0x00))
                    {
                        Store (B0I0, Index (Arg3, 0x00))
                        Store (B0I1, Index (Arg3, 0x01))
                        Store (B0I2, Index (Arg3, 0x02))
                        Store (B0I3, Index (Arg3, 0x03))
                    }
                    Else
                    {
                        Store (B1I0, Index (Arg3, 0x00))
                        Store (B1I1, Index (Arg3, 0x01))
                        Store (B1I2, Index (Arg3, 0x02))
                        Store (B1I3, Index (Arg3, 0x03))
                    }
                }
                Else
                {
                    Store (Local0, Index (Arg3, 0x00))
                    Store (Local1, Index (Arg3, 0x01))
                    Store (Local2, Index (Arg3, 0x02))
                    Store (Local3, Index (Arg3, 0x03))
                }

                If (LAnd (LEqual (And (Local0, 0x04), 0x00), LAnd (LGreater (Local2, 0x00), LGreater (Local3, 0x00))))
                {
                    And (BSWA, Not (Local5), BSWA)
                    Store (Local0, Index (Arg3, 0x00))
                    Store (Local1, Index (Arg3, 0x01))
                    Store (Local2, Index (Arg3, 0x02))
                    Store (Local3, Index (Arg3, 0x03))
                }
            }

            Release (BATM)
            Return (Arg3)
        }
            
        Method (AJTP, 3, NotSerialized)
        {
            Store (Arg1, Local0)
            Acquire (BATM, 0xFFFF)
            Store (Arg0, HIID)
            Store (B1B2(RC00,RC01), Local1)
            Release (BATM)
            If (LEqual (Arg0, 0x00))
            {
                Store (HB0S, Local2)
            }
            Else
            {
                Store (HB1S, Local2)
            }

            If (And (Local2, 0x20))
            {
                If (LGreater (Arg2, 0x00))
                {
                    Add (Local0, 0x01, Local0)
                }

                If (LLessEqual (Local0, Local1))
                {
                    Add (Local1, 0x01, Local0)
                }
            }
            ElseIf (And (Local2, 0x40))
            {
                If (LGreaterEqual (Local0, Local1))
                {
                    Subtract (Local1, 0x01, Local0)
                }
            }

            Return (Local0)
        }
            
    }

    Scope (\_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            Store (B1B2(\_SB.PCI0.LPCB.EC.AC10,\_SB.PCI0.LPCB.EC.AC11), Local0)
            Store (Local0, \RRBF)
            Sleep (0x0A)
            If (And (Local0, 0x02)){}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If (And (Local0, 0x08))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x40)){}
            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02)
            }
        }
    }

    Method (OWAK, 1, NotSerialized)
    {
        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x05)))
        {
            Return (WAKI)
        }

        Store (0x00, \SPS)
        Store (0x00, \_SB.PCI0.LPCB.EC.HCMU)
        \_SB.PCI0.LPCB.EC.EVNT (0x01)
        \_SB.PCI0.LPCB.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPCB.EC.FNST ()
        \UCMS (0x0D)
        Store (0x00, \LIDB)
        \_SB.PCI0.DCPL ()
        If (LEqual (Arg0, 0x01))
        {
            Store (\_SB.PCI0.LPCB.EC.HFNI, \FNID)
        }

        If (LEqual (Arg0, 0x03))
        {
            \NVSS (0x00)
            Store (\_SB.PCI0.LPCB.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (LNotEqual (\ACST, \_SB.PCI0.LPCB.EC.AC._PSR ()))
            {
                \_SB.PCI0.LPCB.EC.ATMC ()
            }

            If (\SCRM)
            {
                Store (0x07, \_SB.PCI0.LPCB.EC.HFSP)
            }

            Store (0x00, \IOEN)
            Store (0x00, \IOST)
            If (LEqual (\ISWK, 0x01))
            {
                If (\_SB.PCI0.LPCB.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x6070)
                }
            }

            If (\VIGD)
            {
                Store (\_SB.LID._LID (), \_SB.PCI0.IGPU.CLID)
                If (\WVIS)
                {
                    \VBTD ()
                }
            }
            ElseIf (\WVIS)
            {
                Store (\_SB.LID._LID (), \_SB.PCI0.IGPU.CLID)
                \VBTD ()
            }

            \VCMS (0x01, \_SB.LID._LID ())
            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.SLPB, 0x02)
                Store (0x00, \CMPR)
            }

            If (LEqual (\WLAC, 0x02)){}
            ElseIf (LAnd (\_SB.PCI0.LPCB.EC.ELNK, LEqual (\WLAC, 0x01)))
            {
                Store (0x00, \_SB.PCI0.LPCB.EC.DCWL)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPCB.EC.DCWL)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            \NVSS (0x00)
            Store (0x00, \_SB.PCI0.LPCB.EC.HSPA)
            Store (\_SB.PCI0.LPCB.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            \_SB.PCI0.LPCB.EC.ATMC ()
            If (\SCRM)
            {
                Store (0x07, \_SB.PCI0.LPCB.EC.HFSP)
            }

            If (LNot (\NBCF))
            {
                If (\VIGD)
                {
                    \_SB.PCI0.LPCB.EC.BRNS ()
                }
                Else
                {
                    \VBRC (\BRLV)
                }
            }

            Store (0x00, \IOEN)
            Store (0x00, \IOST)
            If (LEqual (\ISWK, 0x02))
            {
                If (\_SB.PCI0.LPCB.EC.HKEY.DHKC)
                {
                    \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x6080)
                }
            }

            If (LEqual (\WLAC, 0x02)){}
            ElseIf (LAnd (\_SB.PCI0.LPCB.EC.ELNK, LEqual (\WLAC, 0x01)))
            {
                Store (0x00, \_SB.PCI0.LPCB.EC.DCWL)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPCB.EC.DCWL)
            }
        }

        \_SB.PCI0.LPCB.EC.BATW (Arg0)
        \_SB.PCI0.LPCB.EC.HKEY.WGWK (Arg0)
        Notify (\_TZ.THM0, 0x80)
        \VSLD (\_SB.LID._LID ())
        If (\VIGD)
        {
            Store (\_SB.LID._LID (), \_SB.PCI0.IGPU.CLID)
        }
        ElseIf (\WVIS)
        {
            Store (\_SB.LID._LID (), \_SB.PCI0.IGPU.CLID)
        }

        If (LLess (Arg0, 0x04))
        {
            If (LOr (And (\RRBF, 0x02), And (B1B2(\_SB.PCI0.LPCB.EC.AC10,\_SB.PCI0.LPCB.EC.AC11), 0x02)))
            {
                ShiftLeft (Arg0, 0x08, Local0)
                Store (Or (0x2013, Local0), Local0)
                \_SB.PCI0.LPCB.EC.HKEY.MHKQ (Local0)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (0x00, Local0)
            Store (\CSUM (0x00), Local1)
            If (LNotEqual (Local1, \CHKC))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKC)
            }

            Store (\CSUM (0x01), Local1)
            If (LNotEqual (Local1, \CHKE))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKE)
            }

            If (Local0)
            {
                Notify (\_SB, 0x00)
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            Store (0x00, \_SB.PCI0.LPCB.EC.HKEY.ANGN)
            \_SB.PCI0.LPCB.EC.HKEY.DYTC (0x000F0001)
        }

        Store (Zero, \RRBF)
        Return (WAKI)
    }

#ifndef NO_DEFINITIONBLOCK
}
#endif

