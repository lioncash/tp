/* 8013AC44 00137B84  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8013AC48 00137B88  7C 08 02 A6 */ mflr r0
/* 8013AC4C 00137B8C  90 01 00 14 */ stw r0, 0x14(r1)
/* 8013AC50 00137B90  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8013AC54 00137B94  93 C1 00 08 */ stw r30, 8(r1)
/* 8013AC58 00137B98  7C 7E 1B 78 */ mr r30, r3
/* 8013AC5C 00137B9C  7C 9F 23 78 */ mr r31, r4
/* 8013AC60 00137BA0  38 80 01 1F */ li r4, 0x11f
/* 8013AC64 00137BA4  4B F8 73 09 */ bl daAlink_c_NS_commonProcInit
/* 8013AC68 00137BA8  7F C3 F3 78 */ mr r3, r30
/* 8013AC6C 00137BAC  38 80 00 52 */ li r4, 0x52
/* 8013AC70 00137BB0  3C A0 80 39 */ lis r5, lbl_8038F618@ha
/* 8013AC74 00137BB4  38 A5 F6 18 */ addi r5, r5, lbl_8038F618@l
/* 8013AC78 00137BB8  4B FE EB D1 */ bl daAlink_c_NS_setSingleAnimeWolfParam
/* 8013AC7C 00137BBC  7F C3 F3 78 */ mr r3, r30
/* 8013AC80 00137BC0  38 80 00 02 */ li r4, 2
/* 8013AC84 00137BC4  4B FE 65 3D */ bl daAlink_c_NS_setFootEffectProcType
/* 8013AC88 00137BC8  38 00 00 18 */ li r0, 0x18
/* 8013AC8C 00137BCC  98 1E 2F 9D */ stb r0, 0x2f9d(r30)
/* 8013AC90 00137BD0  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013AC94 00137BD4  D0 1E 33 98 */ stfs f0, 0x3398(r30)
/* 8013AC98 00137BD8  38 00 00 00 */ li r0, 0
/* 8013AC9C 00137BDC  B0 1E 30 12 */ sth r0, 0x3012(r30)
/* 8013ACA0 00137BE0  B3 FE 30 0C */ sth r31, 0x300c(r30)
/* 8013ACA4 00137BE4  38 00 00 0C */ li r0, 0xc
/* 8013ACA8 00137BE8  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 8013ACAC 00137BEC  3C 60 80 39 */ lis r3, lbl_8038F7A4@ha
/* 8013ACB0 00137BF0  38 63 F7 A4 */ addi r3, r3, lbl_8038F7A4@l
/* 8013ACB4 00137BF4  A8 03 00 16 */ lha r0, 0x16(r3)
/* 8013ACB8 00137BF8  B0 1E 30 7E */ sth r0, 0x307e(r30)
/* 8013ACBC 00137BFC  2C 1F 00 00 */ cmpwi r31, 0
/* 8013ACC0 00137C00  41 82 00 18 */ beq lbl_8013ACD8
/* 8013ACC4 00137C04  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013ACC8 00137C08  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013ACCC 00137C0C  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8013ACD0 00137C10  64 00 00 20 */ oris r0, r0, 0x20
/* 8013ACD4 00137C14  90 03 5F 1C */ stw r0, 0x5f1c(r3)
lbl_8013ACD8:
/* 8013ACD8 00137C18  38 60 00 01 */ li r3, 1
/* 8013ACDC 00137C1C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8013ACE0 00137C20  83 C1 00 08 */ lwz r30, 8(r1)
/* 8013ACE4 00137C24  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8013ACE8 00137C28  7C 08 03 A6 */ mtlr r0
/* 8013ACEC 00137C2C  38 21 00 10 */ addi r1, r1, 0x10
/* 8013ACF0 00137C30  4E 80 00 20 */ blr