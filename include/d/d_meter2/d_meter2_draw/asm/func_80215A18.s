/* 80215A18 00212958  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80215A1C 0021295C  A8 83 07 46 */ lha r4, 0x746(r3)
/* 80215A20 00212960  2C 04 00 00 */ cmpwi r4, 0
/* 80215A24 00212964  41 81 00 10 */ bgt lbl_80215A34
/* 80215A28 00212968  C0 02 AE 80 */ lfs f0, lbl_80454880-_SDA2_BASE_(r2)
/* 80215A2C 0021296C  D0 03 06 04 */ stfs f0, 0x604(r3)
/* 80215A30 00212970  48 00 00 5C */ b lbl_80215A8C
lbl_80215A34:
/* 80215A34 00212974  38 04 FF FF */ addi r0, r4, -1
/* 80215A38 00212978  B0 03 07 46 */ sth r0, 0x746(r3)
/* 80215A3C 0021297C  A8 03 07 46 */ lha r0, 0x746(r3)
/* 80215A40 00212980  2C 00 00 00 */ cmpwi r0, 0
/* 80215A44 00212984  40 80 00 0C */ bge lbl_80215A50
/* 80215A48 00212988  38 00 00 00 */ li r0, 0
/* 80215A4C 0021298C  B0 03 07 46 */ sth r0, 0x746(r3)
lbl_80215A50:
/* 80215A50 00212990  A8 03 07 46 */ lha r0, 0x746(r3)
/* 80215A54 00212994  C8 22 AE A0 */ lfd f1, lbl_804548A0-_SDA2_BASE_(r2)
/* 80215A58 00212998  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80215A5C 0021299C  90 01 00 0C */ stw r0, 0xc(r1)
/* 80215A60 002129A0  3C 00 43 30 */ lis r0, 0x4330
/* 80215A64 002129A4  90 01 00 08 */ stw r0, 8(r1)
/* 80215A68 002129A8  C8 01 00 08 */ lfd f0, 8(r1)
/* 80215A6C 002129AC  EC 20 08 28 */ fsubs f1, f0, f1
/* 80215A70 002129B0  C0 02 AE BC */ lfs f0, lbl_804548BC-_SDA2_BASE_(r2)
/* 80215A74 002129B4  EC 21 00 24 */ fdivs f1, f1, f0
/* 80215A78 002129B8  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 80215A7C 002129BC  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 80215A80 002129C0  C0 04 00 18 */ lfs f0, 0x18(r4)
/* 80215A84 002129C4  EC 01 00 32 */ fmuls f0, f1, f0
/* 80215A88 002129C8  D0 03 06 04 */ stfs f0, 0x604(r3)
lbl_80215A8C:
/* 80215A8C 002129CC  38 21 00 10 */ addi r1, r1, 0x10
/* 80215A90 002129D0  4E 80 00 20 */ blr
