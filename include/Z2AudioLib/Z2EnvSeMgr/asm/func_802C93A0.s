/* 802C93A0 002C62E0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 802C93A4 002C62E4  7C 08 02 A6 */ mflr r0
/* 802C93A8 002C62E8  90 01 00 14 */ stw r0, 0x14(r1)
/* 802C93AC 002C62EC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 802C93B0 002C62F0  7C 7F 1B 78 */ mr r31, r3
/* 802C93B4 002C62F4  C0 42 C3 48 */ lfs f2, lbl_80455D48-_SDA2_BASE_(r2)
/* 802C93B8 002C62F8  C0 62 C3 44 */ lfs f3, lbl_80455D44-_SDA2_BASE_(r2)
/* 802C93BC 002C62FC  FC 80 18 90 */ fmr f4, f3
/* 802C93C0 002C6300  C0 A2 C3 C8 */ lfs f5, lbl_80455DC8-_SDA2_BASE_(r2)
/* 802C93C4 002C6304  38 60 00 01 */ li r3, 1
/* 802C93C8 002C6308  4B FE 02 C5 */ bl linearTransform__6Z2CalcFfffffb
/* 802C93CC 002C630C  D0 3F 03 08 */ stfs f1, 0x308(r31)
/* 802C93D0 002C6310  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 802C93D4 002C6314  80 01 00 14 */ lwz r0, 0x14(r1)
/* 802C93D8 002C6318  7C 08 03 A6 */ mtlr r0
/* 802C93DC 002C631C  38 21 00 10 */ addi r1, r1, 0x10
/* 802C93E0 002C6320  4E 80 00 20 */ blr
