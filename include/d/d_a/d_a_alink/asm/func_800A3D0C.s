/* 800A3D0C 000A0C4C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800A3D10 000A0C50  7C 08 02 A6 */ mflr r0
/* 800A3D14 000A0C54  90 01 00 24 */ stw r0, 0x24(r1)
/* 800A3D18 000A0C58  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800A3D1C 000A0C5C  7C 9F 23 78 */ mr r31, r4
/* 800A3D20 000A0C60  B0 A1 00 08 */ sth r5, 8(r1)
/* 800A3D24 000A0C64  90 C4 00 08 */ stw r6, 8(r4)
/* 800A3D28 000A0C68  3C 80 00 01 */ lis r4, 0x0000FFFF@ha
/* 800A3D2C 000A0C6C  38 04 FF FF */ addi r0, r4, 0x0000FFFF@l
/* 800A3D30 000A0C70  B0 01 00 0A */ sth r0, 0xa(r1)
/* 800A3D34 000A0C74  38 81 00 0A */ addi r4, r1, 0xa
/* 800A3D38 000A0C78  38 A1 00 08 */ addi r5, r1, 8
/* 800A3D3C 000A0C7C  4B FF FF A9 */ bl daAlink_c_NS_setIdxMask
/* 800A3D40 000A0C80  A0 A1 00 0A */ lhz r5, 0xa(r1)
/* 800A3D44 000A0C84  28 05 FF FF */ cmplwi r5, 0xffff
/* 800A3D48 000A0C88  40 82 00 14 */ bne lbl_800A3D5C
/* 800A3D4C 000A0C8C  7F E3 FB 78 */ mr r3, r31
/* 800A3D50 000A0C90  A0 81 00 08 */ lhz r4, 8(r1)
/* 800A3D54 000A0C94  48 0B B3 15 */ bl daPy_anmHeap_c_NS_loadDataIdx
/* 800A3D58 000A0C98  48 00 00 10 */ b lbl_800A3D68
lbl_800A3D5C:
/* 800A3D5C 000A0C9C  7F E3 FB 78 */ mr r3, r31
/* 800A3D60 000A0CA0  A0 81 00 08 */ lhz r4, 8(r1)
/* 800A3D64 000A0CA4  48 0B B3 B5 */ bl daPy_anmHeap_c_NS_loadDataDemoRID
lbl_800A3D68:
/* 800A3D68 000A0CA8  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800A3D6C 000A0CAC  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800A3D70 000A0CB0  7C 08 03 A6 */ mtlr r0
/* 800A3D74 000A0CB4  38 21 00 20 */ addi r1, r1, 0x20
/* 800A3D78 000A0CB8  4E 80 00 20 */ blr
