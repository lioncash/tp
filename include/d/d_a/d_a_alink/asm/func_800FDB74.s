/* 800FDB74 000FAAB4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800FDB78 000FAAB8  7C 08 02 A6 */ mflr r0
/* 800FDB7C 000FAABC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800FDB80 000FAAC0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800FDB84 000FAAC4  93 C1 00 08 */ stw r30, 8(r1)
/* 800FDB88 000FAAC8  7C 7E 1B 78 */ mr r30, r3
/* 800FDB8C 000FAACC  4B FF F9 1D */ bl daAlink_c_NS_setMoveBGLadderCorrect
/* 800FDB90 000FAAD0  2C 03 00 00 */ cmpwi r3, 0
/* 800FDB94 000FAAD4  41 82 00 0C */ beq lbl_800FDBA0
/* 800FDB98 000FAAD8  38 60 00 01 */ li r3, 1
/* 800FDB9C 000FAADC  48 00 00 64 */ b lbl_800FDC00
lbl_800FDBA0:
/* 800FDBA0 000FAAE0  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800FDBA4 000FAAE4  38 00 00 06 */ li r0, 6
/* 800FDBA8 000FAAE8  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800FDBAC 000FAAEC  7F E3 FB 78 */ mr r3, r31
/* 800FDBB0 000FAAF0  48 06 09 1D */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800FDBB4 000FAAF4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800FDBB8 000FAAF8  41 82 00 24 */ beq lbl_800FDBDC
/* 800FDBBC 000FAAFC  7F C3 F3 78 */ mr r3, r30
/* 800FDBC0 000FAB00  4B FF FA 25 */ bl daAlink_c_NS_checkLadderFall
/* 800FDBC4 000FAB04  2C 03 00 00 */ cmpwi r3, 0
/* 800FDBC8 000FAB08  40 82 00 34 */ bne lbl_800FDBFC
/* 800FDBCC 000FAB0C  7F C3 F3 78 */ mr r3, r30
/* 800FDBD0 000FAB10  38 80 00 00 */ li r4, 0
/* 800FDBD4 000FAB14  4B FF F6 D9 */ bl daAlink_c_NS_changeLadderMoveProc
/* 800FDBD8 000FAB18  48 00 00 24 */ b lbl_800FDBFC
lbl_800FDBDC:
/* 800FDBDC 000FAB1C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800FDBE0 000FAB20  C0 02 93 C8 */ lfs f0, lbl_80452DC8-_SDA2_BASE_(r2)
/* 800FDBE4 000FAB24  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800FDBE8 000FAB28  4C 41 13 82 */ cror 2, 1, 2
/* 800FDBEC 000FAB2C  40 82 00 10 */ bne lbl_800FDBFC
/* 800FDBF0 000FAB30  38 00 00 01 */ li r0, 1
/* 800FDBF4 000FAB34  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800FDBF8 000FAB38  B0 1E 30 10 */ sth r0, 0x3010(r30)
lbl_800FDBFC:
/* 800FDBFC 000FAB3C  38 60 00 01 */ li r3, 1
lbl_800FDC00:
/* 800FDC00 000FAB40  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800FDC04 000FAB44  83 C1 00 08 */ lwz r30, 8(r1)
/* 800FDC08 000FAB48  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800FDC0C 000FAB4C  7C 08 03 A6 */ mtlr r0
/* 800FDC10 000FAB50  38 21 00 10 */ addi r1, r1, 0x10
/* 800FDC14 000FAB54  4E 80 00 20 */ blr
