/* 8019F438 0019C378  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8019F43C 0019C37C  7C 08 02 A6 */ mflr r0
/* 8019F440 0019C380  90 01 00 14 */ stw r0, 0x14(r1)
/* 8019F444 0019C384  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8019F448 0019C388  7C 7F 1B 79 */ or. r31, r3, r3
/* 8019F44C 0019C38C  41 82 00 10 */ beq lbl_8019F45C
/* 8019F450 0019C390  7C 80 07 35 */ extsh. r0, r4
/* 8019F454 0019C394  40 81 00 08 */ ble lbl_8019F45C
/* 8019F458 0019C398  48 12 F8 E5 */ bl __dl__FPv
lbl_8019F45C:
/* 8019F45C 0019C39C  7F E3 FB 78 */ mr r3, r31
/* 8019F460 0019C3A0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8019F464 0019C3A4  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8019F468 0019C3A8  7C 08 03 A6 */ mtlr r0
/* 8019F46C 0019C3AC  38 21 00 10 */ addi r1, r1, 0x10
/* 8019F470 0019C3B0  4E 80 00 20 */ blr