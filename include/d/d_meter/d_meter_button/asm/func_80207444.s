/* 80207444 00204384  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80207448 00204388  7C 08 02 A6 */ mflr r0
/* 8020744C 0020438C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80207450 00204390  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80207454 00204394  7C 7F 1B 78 */ mr r31, r3
/* 80207458 00204398  80 63 00 28 */ lwz r3, 0x28(r3)
/* 8020745C 0020439C  48 04 E3 CD */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 80207460 002043A0  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 80207464 002043A4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 80207468 002043A8  41 82 00 58 */ beq lbl_802074C0
/* 8020746C 002043AC  A8 1F 04 8A */ lha r0, 0x48a(r31)
/* 80207470 002043B0  2C 00 00 00 */ cmpwi r0, 0
/* 80207474 002043B4  40 82 00 0C */ bne lbl_80207480
/* 80207478 002043B8  38 00 00 1E */ li r0, 0x1e
/* 8020747C 002043BC  B0 1F 04 8A */ sth r0, 0x48a(r31)
lbl_80207480:
/* 80207480 002043C0  80 7F 00 28 */ lwz r3, 0x28(r31)
/* 80207484 002043C4  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 80207488 002043C8  48 04 E3 49 */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 8020748C 002043CC  38 00 00 00 */ li r0, 0
/* 80207490 002043D0  80 7F 00 28 */ lwz r3, 0x28(r31)
/* 80207494 002043D4  B0 03 00 16 */ sth r0, 0x16(r3)
/* 80207498 002043D8  80 7F 00 28 */ lwz r3, 0x28(r31)
/* 8020749C 002043DC  48 04 E3 8D */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 802074A0 002043E0  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 802074A4 002043E4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802074A8 002043E8  40 82 00 18 */ bne lbl_802074C0
/* 802074AC 002043EC  7F E3 FB 78 */ mr r3, r31
/* 802074B0 002043F0  38 80 00 03 */ li r4, 3
/* 802074B4 002043F4  48 00 34 99 */ bl dMeterButton_c_NS_hide_button
/* 802074B8 002043F8  38 00 00 00 */ li r0, 0
/* 802074BC 002043FC  98 1F 04 C3 */ stb r0, 0x4c3(r31)
lbl_802074C0:
/* 802074C0 00204400  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802074C4 00204404  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802074C8 00204408  7C 08 03 A6 */ mtlr r0
/* 802074CC 0020440C  38 21 00 10 */ addi r1, r1, 0x10
/* 802074D0 00204410  4E 80 00 20 */ blr
