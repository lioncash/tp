/* 8020E620 0020B560  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020E624 0020B564  7C 08 02 A6 */ mflr r0
/* 8020E628 0020B568  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020E62C 0020B56C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8020E630 0020B570  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020E634 0020B574  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020E638 0020B578  3B E3 4E 20 */ addi r31, r3, 0x4e20
/* 8020E63C 0020B57C  7F E3 FB 78 */ mr r3, r31
/* 8020E640 0020B580  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020E644 0020B584  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8020E648 0020B588  7D 89 03 A6 */ mtctr r12
/* 8020E64C 0020B58C  4E 80 04 21 */ bctrl
/* 8020E650 0020B590  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8020E654 0020B594  54 00 07 7F */ clrlwi. r0, r0, 0x1d
/* 8020E658 0020B598  41 82 00 94 */ beq lbl_8020E6EC
/* 8020E65C 0020B59C  7F E3 FB 78 */ mr r3, r31
/* 8020E660 0020B5A0  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020E664 0020B5A4  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8020E668 0020B5A8  7D 89 03 A6 */ mtctr r12
/* 8020E66C 0020B5AC  4E 80 04 21 */ bctrl
/* 8020E670 0020B5B0  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8020E674 0020B5B4  54 00 07 7E */ clrlwi r0, r0, 0x1d
/* 8020E678 0020B5B8  2C 00 00 05 */ cmpwi r0, 5
/* 8020E67C 0020B5BC  41 82 00 70 */ beq lbl_8020E6EC
/* 8020E680 0020B5C0  7F E3 FB 78 */ mr r3, r31
/* 8020E684 0020B5C4  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020E688 0020B5C8  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8020E68C 0020B5CC  7D 89 03 A6 */ mtctr r12
/* 8020E690 0020B5D0  4E 80 04 21 */ bctrl
/* 8020E694 0020B5D4  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8020E698 0020B5D8  54 00 07 7E */ clrlwi r0, r0, 0x1d
/* 8020E69C 0020B5DC  2C 00 00 03 */ cmpwi r0, 3
/* 8020E6A0 0020B5E0  41 82 00 4C */ beq lbl_8020E6EC
/* 8020E6A4 0020B5E4  7F E3 FB 78 */ mr r3, r31
/* 8020E6A8 0020B5E8  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020E6AC 0020B5EC  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8020E6B0 0020B5F0  7D 89 03 A6 */ mtctr r12
/* 8020E6B4 0020B5F4  4E 80 04 21 */ bctrl
/* 8020E6B8 0020B5F8  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8020E6BC 0020B5FC  54 00 07 7E */ clrlwi r0, r0, 0x1d
/* 8020E6C0 0020B600  2C 00 00 04 */ cmpwi r0, 4
/* 8020E6C4 0020B604  41 82 00 28 */ beq lbl_8020E6EC
/* 8020E6C8 0020B608  7F E3 FB 78 */ mr r3, r31
/* 8020E6CC 0020B60C  81 9F 00 00 */ lwz r12, 0(r31)
/* 8020E6D0 0020B610  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 8020E6D4 0020B614  7D 89 03 A6 */ mtctr r12
/* 8020E6D8 0020B618  4E 80 04 21 */ bctrl
/* 8020E6DC 0020B61C  A0 03 00 0A */ lhz r0, 0xa(r3)
/* 8020E6E0 0020B620  54 00 07 7E */ clrlwi r0, r0, 0x1d
/* 8020E6E4 0020B624  2C 00 00 06 */ cmpwi r0, 6
/* 8020E6E8 0020B628  40 82 00 0C */ bne lbl_8020E6F4
lbl_8020E6EC:
/* 8020E6EC 0020B62C  38 60 00 01 */ li r3, 1
/* 8020E6F0 0020B630  48 00 00 08 */ b lbl_8020E6F8
lbl_8020E6F4:
/* 8020E6F4 0020B634  38 60 00 00 */ li r3, 0
lbl_8020E6F8:
/* 8020E6F8 0020B638  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8020E6FC 0020B63C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020E700 0020B640  7C 08 03 A6 */ mtlr r0
/* 8020E704 0020B644  38 21 00 10 */ addi r1, r1, 0x10
/* 8020E708 0020B648  4E 80 00 20 */ blr
