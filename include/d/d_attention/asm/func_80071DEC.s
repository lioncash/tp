/* 80071DEC 0006ED2C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80071DF0 0006ED30  7C 08 02 A6 */ mflr r0
/* 80071DF4 0006ED34  90 01 00 24 */ stw r0, 0x24(r1)
/* 80071DF8 0006ED38  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80071DFC 0006ED3C  7C 7F 1B 78 */ mr r31, r3
/* 80071E00 0006ED40  38 00 FF FF */ li r0, -1
/* 80071E04 0006ED44  90 03 05 14 */ stw r0, 0x514(r3)
/* 80071E08 0006ED48  C0 02 8C 98 */ lfs f0, lbl_80452698-_SDA2_BASE_(r2)
/* 80071E0C 0006ED4C  D0 03 05 18 */ stfs f0, 0x518(r3)
/* 80071E10 0006ED50  80 03 03 34 */ lwz r0, 0x334(r3)
/* 80071E14 0006ED54  54 00 00 01 */ rlwinm. r0, r0, 0, 0, 0
/* 80071E18 0006ED58  40 82 00 58 */ bne lbl_80071E70
/*.global sound_attention*/
/* 80071E1C 0006ED5C  3C 60 80 07 */ lis r3, sound_attention@ha
/*.global sound_attention*/
/* 80071E20 0006ED60  38 63 1D 6C */ addi r3, r3, sound_attention@l
/* 80071E24 0006ED64  7F E4 FB 78 */ mr r4, r31
/* 80071E28 0006ED68  4B FA 79 95 */ bl fopAcIt_Executor
/* 80071E2C 0006ED6C  80 1F 05 14 */ lwz r0, 0x514(r31)
/* 80071E30 0006ED70  90 01 00 08 */ stw r0, 8(r1)
/*.global fpcSch_JudgeByID*/
/* 80071E34 0006ED74  3C 60 80 02 */ lis r3, fpcSch_JudgeByID@ha
/*.global fpcSch_JudgeByID*/
/* 80071E38 0006ED78  38 63 35 90 */ addi r3, r3, fpcSch_JudgeByID@l
/* 80071E3C 0006ED7C  38 81 00 08 */ addi r4, r1, 8
/* 80071E40 0006ED80  4B FA 79 B9 */ bl fopAcIt_Judge
/* 80071E44 0006ED84  28 03 00 00 */ cmplwi r3, 0
/* 80071E48 0006ED88  41 82 00 28 */ beq lbl_80071E70
/* 80071E4C 0006ED8C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80071E50 0006ED90  38 63 03 D0 */ addi r3, r3, 0x3d0
/* 80071E54 0006ED94  C0 22 8C 9C */ lfs f1, lbl_8045269C-_SDA2_BASE_(r2)
/* 80071E58 0006ED98  C0 1F 05 18 */ lfs f0, 0x518(r31)
/* 80071E5C 0006ED9C  EC 21 00 32 */ fmuls f1, f1, f0
/* 80071E60 0006EDA0  48 24 40 29 */ bl Z2SeqMgr_NS_bgmNowBattle
/* 80071E64 0006EDA4  80 1F 03 34 */ lwz r0, 0x334(r31)
/* 80071E68 0006EDA8  60 00 01 00 */ ori r0, r0, 0x100
/* 80071E6C 0006EDAC  90 1F 03 34 */ stw r0, 0x334(r31)
lbl_80071E70:
/* 80071E70 0006EDB0  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 80071E74 0006EDB4  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80071E78 0006EDB8  7C 08 03 A6 */ mtlr r0
/* 80071E7C 0006EDBC  38 21 00 20 */ addi r1, r1, 0x20
/* 80071E80 0006EDC0  4E 80 00 20 */ blr
