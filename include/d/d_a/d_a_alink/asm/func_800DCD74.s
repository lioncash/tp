/* 800DCD74 000D9CB4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 800DCD78 000D9CB8  7C 08 02 A6 */ mflr r0
/* 800DCD7C 000D9CBC  90 01 00 34 */ stw r0, 0x34(r1)
/* 800DCD80 000D9CC0  39 61 00 30 */ addi r11, r1, 0x30
/* 800DCD84 000D9CC4  48 28 54 55 */ bl _savegpr_28
/* 800DCD88 000D9CC8  7C 7C 1B 78 */ mr r28, r3
/* 800DCD8C 000D9CCC  7C 9D 23 78 */ mr r29, r4
/* 800DCD90 000D9CD0  7C BE 2B 78 */ mr r30, r5
/* 800DCD94 000D9CD4  7C DF 33 78 */ mr r31, r6
/* 800DCD98 000D9CD8  80 63 06 78 */ lwz r3, 0x678(r3)
/* 800DCD9C 000D9CDC  38 63 00 24 */ addi r3, r3, 0x24
/* 800DCDA0 000D9CE0  7C E4 3B 78 */ mr r4, r7
/* 800DCDA4 000D9CE4  38 A1 00 08 */ addi r5, r1, 8
/* 800DCDA8 000D9CE8  48 26 A0 A5 */ bl PSMTXMultVecSR
/* 800DCDAC 000D9CEC  38 61 00 08 */ addi r3, r1, 8
/* 800DCDB0 000D9CF0  48 18 A3 A1 */ bl atan2sY_XZ__4cXyzCFv
/* 800DCDB4 000D9CF4  B0 7E 00 00 */ sth r3, 0(r30)
/* 800DCDB8 000D9CF8  38 61 00 08 */ addi r3, r1, 8
/* 800DCDBC 000D9CFC  48 18 A3 6D */ bl atan2sX_Z__4cXyzCFv
/* 800DCDC0 000D9D00  B0 7E 00 02 */ sth r3, 2(r30)
/* 800DCDC4 000D9D04  80 7C 06 78 */ lwz r3, 0x678(r28)
/* 800DCDC8 000D9D08  38 63 00 24 */ addi r3, r3, 0x24
/* 800DCDCC 000D9D0C  7F E4 FB 78 */ mr r4, r31
/* 800DCDD0 000D9D10  7F A5 EB 78 */ mr r5, r29
/* 800DCDD4 000D9D14  48 26 9F 99 */ bl PSMTXMultVec
/* 800DCDD8 000D9D18  39 61 00 30 */ addi r11, r1, 0x30
/* 800DCDDC 000D9D1C  48 28 54 49 */ bl _restgpr_28
/* 800DCDE0 000D9D20  80 01 00 34 */ lwz r0, 0x34(r1)
/* 800DCDE4 000D9D24  7C 08 03 A6 */ mtlr r0
/* 800DCDE8 000D9D28  38 21 00 30 */ addi r1, r1, 0x30
/* 800DCDEC 000D9D2C  4E 80 00 20 */ blr
