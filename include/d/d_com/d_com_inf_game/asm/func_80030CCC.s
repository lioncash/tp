/* 80030CCC 0002DC0C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80030CD0 0002DC10  7C 08 02 A6 */ mflr r0
/* 80030CD4 0002DC14  90 01 00 14 */ stw r0, 0x14(r1)
/* 80030CD8 0002DC18  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80030CDC 0002DC1C  93 C1 00 08 */ stw r30, 8(r1)
/* 80030CE0 0002DC20  7C 7E 1B 79 */ or. r30, r3, r3
/* 80030CE4 0002DC24  7C 9F 23 78 */ mr r31, r4
/* 80030CE8 0002DC28  41 82 00 34 */ beq lbl_80030D1C
/* 80030CEC 0002DC2C  3C 80 80 3B */ lis r4, lbl_803AB61C@ha
/* 80030CF0 0002DC30  38 04 B6 1C */ addi r0, r4, lbl_803AB61C@l
/* 80030CF4 0002DC34  90 1E 14 00 */ stw r0, 0x1400(r30)
/*.global cBgS_ChkElm_NS_dtor*/
/* 80030CF8 0002DC38  3C 80 80 03 */ lis r4, cBgS_ChkElm_NS_dtor@ha
/*.global cBgS_ChkElm_NS_dtor*/
/* 80030CFC 0002DC3C  38 84 FE F8 */ addi r4, r4, cBgS_ChkElm_NS_dtor@l
/* 80030D00 0002DC40  38 A0 00 14 */ li r5, 0x14
/* 80030D04 0002DC44  38 C0 01 00 */ li r6, 0x100
/* 80030D08 0002DC48  48 33 0F E1 */ bl func_80361CE8
/* 80030D0C 0002DC4C  7F E0 07 35 */ extsh. r0, r31
/* 80030D10 0002DC50  40 81 00 0C */ ble lbl_80030D1C
/* 80030D14 0002DC54  7F C3 F3 78 */ mr r3, r30
/* 80030D18 0002DC58  48 29 E0 25 */ bl __dl__FPv
lbl_80030D1C:
/* 80030D1C 0002DC5C  7F C3 F3 78 */ mr r3, r30
/* 80030D20 0002DC60  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80030D24 0002DC64  83 C1 00 08 */ lwz r30, 8(r1)
/* 80030D28 0002DC68  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80030D2C 0002DC6C  7C 08 03 A6 */ mtlr r0
/* 80030D30 0002DC70  38 21 00 10 */ addi r1, r1, 0x10
/* 80030D34 0002DC74  4E 80 00 20 */ blr