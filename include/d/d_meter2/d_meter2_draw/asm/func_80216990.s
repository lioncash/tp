/* 80216990 002138D0  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 80216994 002138D4  7C 08 02 A6 */ mflr r0
/* 80216998 002138D8  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021699C 002138DC  39 61 00 30 */ addi r11, r1, 0x30
/* 802169A0 002138E0  48 14 B8 35 */ bl _savegpr_27
/* 802169A4 002138E4  7C 7B 1B 78 */ mr r27, r3
/* 802169A8 002138E8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 802169AC 002138EC  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 802169B0 002138F0  C0 43 03 58 */ lfs f2, 0x358(r3)
/* 802169B4 002138F4  C0 23 00 18 */ lfs f1, 0x18(r3)
/* 802169B8 002138F8  C0 03 03 48 */ lfs f0, 0x348(r3)
/* 802169BC 002138FC  EC 21 00 32 */ fmuls f1, f1, f0
/* 802169C0 00213900  EC 02 00 72 */ fmuls f0, f2, f1
/* 802169C4 00213904  D0 01 00 08 */ stfs f0, 8(r1)
/* 802169C8 00213908  C0 03 03 78 */ lfs f0, 0x378(r3)
/* 802169CC 0021390C  EC 00 00 72 */ fmuls f0, f0, f1
/* 802169D0 00213910  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 802169D4 00213914  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 802169D8 00213918  3B 80 00 00 */ li r28, 0
/* 802169DC 0021391C  3B E0 00 00 */ li r31, 0
/* 802169E0 00213920  3B C1 00 08 */ addi r30, r1, 8
lbl_802169E4:
/* 802169E4 00213924  3B BF 02 B4 */ addi r29, r31, 0x2b4
/* 802169E8 00213928  7C 7B E8 2E */ lwzx r3, r27, r29
/* 802169EC 0021392C  48 03 EE 3D */ bl CPaneMgrAlpha_NS_getAlphaRate
/* 802169F0 00213930  7C 1E FC 2E */ lfsx f0, r30, r31
/* 802169F4 00213934  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 802169F8 00213938  41 82 00 20 */ beq lbl_80216A18
/* 802169FC 0021393C  7C 7B E8 2E */ lwzx r3, r27, r29
/* 80216A00 00213940  FC 20 00 90 */ fmr f1, f0
/* 80216A04 00213944  48 03 ED CD */ bl CPaneMgrAlpha_NS_setAlphaRate
/* 80216A08 00213948  7F 63 DB 78 */ mr r3, r27
/* 80216A0C 0021394C  7C 9B E8 2E */ lwzx r4, r27, r29
/* 80216A10 00213950  38 A0 00 05 */ li r5, 5
/* 80216A14 00213954  48 00 40 91 */ bl dMeter2Draw_c_NS_setAlphaAnimeMax
lbl_80216A18:
/* 80216A18 00213958  3B 9C 00 01 */ addi r28, r28, 1
/* 80216A1C 0021395C  2C 1C 00 03 */ cmpwi r28, 3
/* 80216A20 00213960  3B FF 00 04 */ addi r31, r31, 4
/* 80216A24 00213964  41 80 FF C0 */ blt lbl_802169E4
/* 80216A28 00213968  39 61 00 30 */ addi r11, r1, 0x30
/* 80216A2C 0021396C  48 14 B7 F5 */ bl _restgpr_27
/* 80216A30 00213970  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80216A34 00213974  7C 08 03 A6 */ mtlr r0
/* 80216A38 00213978  38 21 00 30 */ addi r1, r1, 0x30
/* 80216A3C 0021397C  4E 80 00 20 */ blr
