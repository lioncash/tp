/* 80224DC0 00221D00  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80224DC4 00221D04  7C 08 02 A6 */ mflr r0
/* 80224DC8 00221D08  90 01 00 14 */ stw r0, 0x14(r1)
/* 80224DCC 00221D0C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80224DD0 00221D10  93 C1 00 08 */ stw r30, 8(r1)
/* 80224DD4 00221D14  7C 7F 1B 78 */ mr r31, r3
/* 80224DD8 00221D18  80 63 01 24 */ lwz r3, 0x124(r3)
/* 80224DDC 00221D1C  54 60 04 63 */ rlwinm. r0, r3, 0, 0x11, 0x11
/* 80224DE0 00221D20  40 82 01 58 */ bne lbl_80224F38
/* 80224DE4 00221D24  54 60 06 73 */ rlwinm. r0, r3, 0, 0x19, 0x19
/* 80224DE8 00221D28  41 82 00 30 */ beq lbl_80224E18
/* 80224DEC 00221D2C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224DF0 00221D30  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80224DF4 00221D34  88 03 4F AD */ lbz r0, 0x4fad(r3)
/* 80224DF8 00221D38  28 00 00 00 */ cmplwi r0, 0
/* 80224DFC 00221D3C  41 82 00 10 */ beq lbl_80224E0C
/* 80224E00 00221D40  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 80224E04 00221D44  54 00 06 30 */ rlwinm r0, r0, 0, 0x18, 0x18
/* 80224E08 00221D48  48 00 00 08 */ b lbl_80224E10
lbl_80224E0C:
/* 80224E0C 00221D4C  38 00 00 00 */ li r0, 0
lbl_80224E10:
/* 80224E10 00221D50  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 80224E14 00221D54  40 82 01 24 */ bne lbl_80224F38
lbl_80224E18:
/* 80224E18 00221D58  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224E1C 00221D5C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80224E20 00221D60  80 83 5D AC */ lwz r4, 0x5dac(r3)
/* 80224E24 00221D64  38 00 00 00 */ li r0, 0
/* 80224E28 00221D68  88 64 05 6A */ lbz r3, 0x56a(r4)
/* 80224E2C 00221D6C  28 03 00 00 */ cmplwi r3, 0
/* 80224E30 00221D70  41 82 00 10 */ beq lbl_80224E40
/* 80224E34 00221D74  28 03 00 26 */ cmplwi r3, 0x26
/* 80224E38 00221D78  40 80 00 08 */ bge lbl_80224E40
/* 80224E3C 00221D7C  38 00 00 01 */ li r0, 1
lbl_80224E40:
/* 80224E40 00221D80  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 80224E44 00221D84  40 82 00 F4 */ bne lbl_80224F38
/* 80224E48 00221D88  88 04 05 6A */ lbz r0, 0x56a(r4)
/* 80224E4C 00221D8C  28 00 00 2D */ cmplwi r0, 0x2d
/* 80224E50 00221D90  40 82 00 1C */ bne lbl_80224E6C
/* 80224E54 00221D94  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224E58 00221D98  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80224E5C 00221D9C  38 63 0F 38 */ addi r3, r3, 0xf38
/* 80224E60 00221DA0  4B E0 7D 5D */ bl dComIfG_play_c_NS_getTimerMode
/* 80224E64 00221DA4  2C 03 00 04 */ cmpwi r3, 4
/* 80224E68 00221DA8  41 82 00 D0 */ beq lbl_80224F38
lbl_80224E6C:
/* 80224E6C 00221DAC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224E70 00221DB0  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 80224E74 00221DB4  38 7E 4E 00 */ addi r3, r30, 0x4e00
/* 80224E78 00221DB8  3C 80 80 3A */ lis r4, lbl_80399338@ha
/* 80224E7C 00221DBC  38 84 93 38 */ addi r4, r4, lbl_80399338@l
/* 80224E80 00221DC0  38 84 00 0F */ addi r4, r4, 0xf
/* 80224E84 00221DC4  48 14 3B 11 */ bl strcmp
/* 80224E88 00221DC8  2C 03 00 00 */ cmpwi r3, 0
/* 80224E8C 00221DCC  40 82 00 30 */ bne lbl_80224EBC
/* 80224E90 00221DD0  88 1E 4F AD */ lbz r0, 0x4fad(r30)
/* 80224E94 00221DD4  28 00 00 00 */ cmplwi r0, 0
/* 80224E98 00221DD8  41 82 00 18 */ beq lbl_80224EB0
/* 80224E9C 00221DDC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80224EA0 00221DE0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80224EA4 00221DE4  A0 03 4F A4 */ lhz r0, 0x4fa4(r3)
/* 80224EA8 00221DE8  54 00 06 30 */ rlwinm r0, r0, 0, 0x18, 0x18
/* 80224EAC 00221DEC  48 00 00 08 */ b lbl_80224EB4
lbl_80224EB0:
/* 80224EB0 00221DF0  38 00 00 00 */ li r0, 0
lbl_80224EB4:
/* 80224EB4 00221DF4  54 00 04 3F */ clrlwi. r0, r0, 0x10
/* 80224EB8 00221DF8  41 82 00 28 */ beq lbl_80224EE0
lbl_80224EBC:
/* 80224EBC 00221DFC  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80224EC0 00221E00  54 60 00 43 */ rlwinm. r0, r3, 0, 1, 1
/* 80224EC4 00221E04  41 82 00 0C */ beq lbl_80224ED0
/* 80224EC8 00221E08  54 60 05 EF */ rlwinm. r0, r3, 0, 0x17, 0x17
/* 80224ECC 00221E0C  41 82 00 6C */ beq lbl_80224F38
lbl_80224ED0:
/* 80224ED0 00221E10  54 60 04 E7 */ rlwinm. r0, r3, 0, 0x13, 0x13
/* 80224ED4 00221E14  40 82 00 64 */ bne lbl_80224F38
/* 80224ED8 00221E18  54 60 02 D7 */ rlwinm. r0, r3, 0, 0xb, 0xb
/* 80224EDC 00221E1C  40 82 00 5C */ bne lbl_80224F38
lbl_80224EE0:
/* 80224EE0 00221E20  80 7F 01 24 */ lwz r3, 0x124(r31)
/* 80224EE4 00221E24  54 60 00 01 */ rlwinm. r0, r3, 0, 0, 0
/* 80224EE8 00221E28  40 82 00 50 */ bne lbl_80224F38
/* 80224EEC 00221E2C  54 60 07 39 */ rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80224EF0 00221E30  40 82 00 48 */ bne lbl_80224F38
/* 80224EF4 00221E34  54 60 06 F7 */ rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80224EF8 00221E38  40 82 00 40 */ bne lbl_80224F38
/* 80224EFC 00221E3C  54 60 01 CF */ rlwinm. r0, r3, 0, 7, 7
/* 80224F00 00221E40  40 82 00 38 */ bne lbl_80224F38
/* 80224F04 00221E44  54 60 06 B5 */ rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80224F08 00221E48  40 82 00 30 */ bne lbl_80224F38
/* 80224F0C 00221E4C  54 60 01 4B */ rlwinm. r0, r3, 0, 5, 5
/* 80224F10 00221E50  40 82 00 28 */ bne lbl_80224F38
/* 80224F14 00221E54  54 60 01 09 */ rlwinm. r0, r3, 0, 4, 4
/* 80224F18 00221E58  40 82 00 20 */ bne lbl_80224F38
/* 80224F1C 00221E5C  54 60 00 C7 */ rlwinm. r0, r3, 0, 3, 3
/* 80224F20 00221E60  40 82 00 18 */ bne lbl_80224F38
/* 80224F24 00221E64  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 80224F28 00221E68  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 80224F2C 00221E6C  A0 03 00 A2 */ lhz r0, 0xa2(r3)
/* 80224F30 00221E70  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80224F34 00221E74  41 82 00 10 */ beq lbl_80224F44
lbl_80224F38:
/* 80224F38 00221E78  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 80224F3C 00221E7C  4B FF 19 95 */ bl dMeter2Draw_c_NS_setAlphaRupeeAnimeMin
/* 80224F40 00221E80  48 00 00 0C */ b lbl_80224F4C
lbl_80224F44:
/* 80224F44 00221E84  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 80224F48 00221E88  4B FF 1A 49 */ bl dMeter2Draw_c_NS_setAlphaRupeeAnimeMax
lbl_80224F4C:
/* 80224F4C 00221E8C  80 7F 01 0C */ lwz r3, 0x10c(r31)
/* 80224F50 00221E90  38 80 00 00 */ li r4, 0
/* 80224F54 00221E94  4B FF 17 31 */ bl dMeter2Draw_c_NS_setAlphaRupeeChange
/* 80224F58 00221E98  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80224F5C 00221E9C  83 C1 00 08 */ lwz r30, 8(r1)
/* 80224F60 00221EA0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80224F64 00221EA4  7C 08 03 A6 */ mtlr r0
/* 80224F68 00221EA8  38 21 00 10 */ addi r1, r1, 0x10
/* 80224F6C 00221EAC  4E 80 00 20 */ blr
