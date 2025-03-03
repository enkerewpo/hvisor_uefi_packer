/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ./qemu_aml.aml
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00000C30 (3120)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x66
 *     OEM ID           "BOCHS "
 *     OEM Table ID     "BXPC    "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "BXPC"
 *     Compiler Version 0x00000001 (1)
 */
DefinitionBlock ("", "DSDT", 1, "BOCHS ", "BXPC    ", 0x00000001)
{
    Scope (_SB)
    {
        Device (COMA)
        {
            Name (_HID, "PNP0501" /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, One)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x000000001FE001E0, // Range Minimum
                    0x000000001FE002DF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000100, // Length
                    ,, , AddressRangeMemory, TypeStatic)
                Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                {
                    0x00000042,
                }
            })
            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("daffd814-6eba-4d8c-8a91-bc9bbf4aa301") /* Device Properties for _DSD */, 
                Package (0x01)
                {
                    Package (0x02)
                    {
                        0x05F5E100, 
                        "clock-frenquency"
                    }
                }
            })
        }
    }

    Device (L000)
    {
        Name (_HID, "PNP0C0F" /* PCI Interrupt Link Device */)  // _HID: Hardware ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000050,
            }
        })
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000050,
            }
        })
        Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
        {
        }
    }

    Device (L001)
    {
        Name (_HID, "PNP0C0F" /* PCI Interrupt Link Device */)  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000051,
            }
        })
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000051,
            }
        })
        Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
        {
        }
    }

    Device (L002)
    {
        Name (_HID, "PNP0C0F" /* PCI Interrupt Link Device */)  // _HID: Hardware ID
        Name (_UID, 0x02)  // _UID: Unique ID
        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000052,
            }
        })
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000052,
            }
        })
        Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
        {
        }
    }

    Device (L003)
    {
        Name (_HID, "PNP0C0F" /* PCI Interrupt Link Device */)  // _HID: Hardware ID
        Name (_UID, 0x03)  // _UID: Unique ID
        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000053,
            }
        })
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x00000053,
            }
        })
        Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
        {
        }
    }

    Device (PCI0)
    {
        Name (_HID, "PNP0A08" /* PCI Express Bus */)  // _HID: Hardware ID
        Name (_CID, "PNP0A03" /* PCI Bus */)  // _CID: Compatible ID
        Name (_SEG, Zero)  // _SEG: PCI Segment
        Name (_BBN, Zero)  // _BBN: BIOS Bus Number
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STR, Unicode ("PCIe 0 Device"))  // _STR: Description String
        Name (_CCA, One)  // _CCA: Cache Coherency Attribute
        Name (_PRT, Package (0x80)  // _PRT: PCI Routing Table
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0001FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0003FFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0004FFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0005FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0006FFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0007FFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0009FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000AFFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000BFFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x000CFFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000DFFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000EFFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x000FFFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0010FFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0011FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0012FFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0013FFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0014FFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0015FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0016FFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0017FFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0018FFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x0019FFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001AFFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x03, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                Zero, 
                L002, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                One, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x02, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001EFFFF, 
                0x03, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                Zero, 
                L003, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                L000, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x02, 
                L001, 
                Zero
            }, 

            Package (0x04)
            {
                0x001FFFFF, 
                0x03, 
                L002, 
                Zero
            }
        })
        Method (_CBA, 0, NotSerialized)  // _CBA: Configuration Base Address
        {
            Return (0x20000000)
        }

        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                0x0000,             // Granularity
                0x0000,             // Range Minimum
                0x007F,             // Range Maximum
                0x0000,             // Translation Offset
                0x0080,             // Length
                ,, )
            DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                0x00000000,         // Granularity
                0x00000000,         // Range Minimum
                0x0000BFFF,         // Range Maximum
                0x18004000,         // Translation Offset
                0x0000C000,         // Length
                ,, , TypeStatic, DenseTranslation)
            QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                0x0000000000000000, // Granularity
                0x0000000040000000, // Range Minimum
                0x000000007FFFFFFF, // Range Maximum
                0x0000000000000000, // Translation Offset
                0x0000000040000000, // Length
                ,, , AddressRangeMemory, TypeStatic)
        })
        Name (SUPP, Zero)
        Name (CTRL, Zero)
        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, Zero, CDW1)
            If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
            {
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                SUPP = CDW2 /* \PCI0._OSC.CDW2 */
                CTRL = CDW3 /* \PCI0._OSC.CDW3 */
                CTRL &= 0x1F
                If ((Arg1 != One))
                {
                    CDW1 |= 0x08
                }

                If ((CDW3 != CTRL))
                {
                    CDW1 |= 0x10
                }

                CDW3 = CTRL /* \PCI0.CTRL */
                Return (Arg3)
            }
            Else
            {
                CDW1 |= 0x04
                Return (Arg3)
            }
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x01                                             // .
                    })
                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }

        Device (RES0)
        {
            Name (_HID, "PNP0C02" /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                QWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000020000000, // Range Minimum
                    0x0000000027FFFFFF, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000008000000, // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
        }
    }

    Device (\_SB.GED)
    {
        Name (_HID, "ACPI0013" /* Generic Event Device */)  // _HID: Hardware ID
        Name (_UID, "GED")  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                0x00000044,
            }
        })
        OperationRegion (EREG, SystemMemory, 0x100E0000, 0x04)
        Field (EREG, DWordAcc, NoLock, WriteAsZeros)
        {
            ESEL,   32
        }

        Method (_EVT, 1, Serialized)  // _EVT: Event
        {
            Local0 = ESEL /* \_SB_.GED_.ESEL */
            If (((Local0 & 0x02) == 0x02))
            {
                Notify (PWRB, 0x80) // Status Change
            }
        }
    }

    Device (PWRB)
    {
        Name (_HID, "PNP0C0C" /* Power Button Device */)  // _HID: Hardware ID
        Name (_UID, Zero)  // _UID: Unique ID
    }

    Device (FLS0)
    {
        Name (_HID, "LNRO0015")  // _HID: Hardware ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0x1C000000,         // Address Base
                0x01000000,         // Address Length
                )
        })
    }

    Device (FLS1)
    {
        Name (_HID, "LNRO0015")  // _HID: Hardware ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
        {
            Memory32Fixed (ReadWrite,
                0x1D000000,         // Address Base
                0x01000000,         // Address Length
                )
        })
    }

    Scope (\)
    {
        Name (_S5, Package (0x04)  // _S5_: S5 System State
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }
}

