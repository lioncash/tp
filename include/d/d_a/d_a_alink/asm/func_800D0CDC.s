/* 800D0CDC 000CDC1C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D0CE0 000CDC20  7C 08 02 A6 */ mflr r0
/* 800D0CE4 000CDC24  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D0CE8 000CDC28  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D0CEC 000CDC2C  7C 7F 1B 79 */ or. r31, r3, r3
/* 800D0CF0 000CDC30  41 82 00 30 */ beq lbl_800D0D20
/* 800D0CF4 000CDC34  3C 60 80 3B */ lis r3, lbl_803B35EC@ha
/* 800D0CF8 000CDC38  38 03 35 EC */ addi r0, r3, lbl_803B35EC@l
/* 800D0CFC 000CDC3C  90 1F 00 00 */ stw r0, 0(r31)
/* 800D0D00 000CDC40  41 82 00 10 */ beq lbl_800D0D10
/* 800D0D04 000CDC44  3C 60 80 3D */ lis r3, lbl_803CD97C@ha
/* 800D0D08 000CDC48  38 03 D9 7C */ addi r0, r3, lbl_803CD97C@l
/* 800D0D0C 000CDC4C  90 1F 00 00 */ stw r0, 0(r31)
lbl_800D0D10:
/* 800D0D10 000CDC50  7C 80 07 35 */ extsh. r0, r4
/* 800D0D14 000CDC54  40 81 00 0C */ ble lbl_800D0D20
/* 800D0D18 000CDC58  7F E3 FB 78 */ mr r3, r31
/* 800D0D1C 000CDC5C  48 1F E0 21 */ bl __dl__FPv
lbl_800D0D20:
/* 800D0D20 000CDC60  7F E3 FB 78 */ mr r3, r31
/* 800D0D24 000CDC64  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D0D28 000CDC68  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D0D2C 000CDC6C  7C 08 03 A6 */ mtlr r0
/* 800D0D30 000CDC70  38 21 00 10 */ addi r1, r1, 0x10
/* 800D0D34 000CDC74  4E 80 00 20 */ blr