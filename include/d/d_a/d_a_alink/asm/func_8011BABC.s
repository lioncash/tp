/* 8011BABC 001189FC  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8011BAC0 00118A00  7C 08 02 A6 */ mflr r0
/* 8011BAC4 00118A04  90 01 00 14 */ stw r0, 0x14(r1)
/* 8011BAC8 00118A08  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8011BACC 00118A0C  7C 7F 1B 78 */ mr r31, r3
/* 8011BAD0 00118A10  38 80 01 4B */ li r4, 0x14b
/* 8011BAD4 00118A14  4B FA 72 D1 */ bl daAlink_c_NS_commonProcInitNotSameProc
/* 8011BAD8 00118A18  2C 03 00 00 */ cmpwi r3, 0
/* 8011BADC 00118A1C  40 82 00 0C */ bne lbl_8011BAE8
/* 8011BAE0 00118A20  38 60 00 00 */ li r3, 0
/* 8011BAE4 00118A24  48 00 00 48 */ b lbl_8011BB2C
lbl_8011BAE8:
/* 8011BAE8 00118A28  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 8011BAEC 00118A2C  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 8011BAF0 00118A30  41 82 00 14 */ beq lbl_8011BB04
/* 8011BAF4 00118A34  7F E3 FB 78 */ mr r3, r31
/* 8011BAF8 00118A38  38 80 00 07 */ li r4, 7
/* 8011BAFC 00118A3C  48 00 DB 7D */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 8011BB00 00118A40  48 00 00 20 */ b lbl_8011BB20
lbl_8011BB04:
/* 8011BB04 00118A44  7F E3 FB 78 */ mr r3, r31
/* 8011BB08 00118A48  38 80 00 36 */ li r4, 0x36
/* 8011BB0C 00118A4C  3C A0 80 39 */ lis r5, lbl_8038E210@ha
/* 8011BB10 00118A50  38 A5 E2 10 */ addi r5, r5, lbl_8038E210@l
/* 8011BB14 00118A54  C0 25 00 10 */ lfs f1, 0x10(r5)
/* 8011BB18 00118A58  C0 45 00 14 */ lfs f2, 0x14(r5)
/* 8011BB1C 00118A5C  4B F9 14 C5 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
lbl_8011BB20:
/* 8011BB20 00118A60  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8011BB24 00118A64  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 8011BB28 00118A68  38 60 00 01 */ li r3, 1
lbl_8011BB2C:
/* 8011BB2C 00118A6C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8011BB30 00118A70  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8011BB34 00118A74  7C 08 03 A6 */ mtlr r0
/* 8011BB38 00118A78  38 21 00 10 */ addi r1, r1, 0x10
/* 8011BB3C 00118A7C  4E 80 00 20 */ blr