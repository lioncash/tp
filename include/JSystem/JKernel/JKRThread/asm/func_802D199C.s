/* 802D199C 002CE8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D19A0 002CE8E0  7C 08 02 A6 */	mflr r0
/* 802D19A4 002CE8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D19A8 002CE8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D19AC 002CE8EC  7C 7F 1B 78 */	mr r31, r3
/* 802D19B0 002CE8F0  3C 60 80 3D */	lis r3, lbl_803CC100@ha
/* 802D19B4 002CE8F4  38 03 C1 00 */	addi r0, r3, lbl_803CC100@l
/* 802D19B8 002CE8F8  90 1F 00 00 */	stw r0, 0(r31)
/* 802D19BC 002CE8FC  90 9F 00 04 */	stw r4, 4(r31)
/* 802D19C0 002CE900  3C 60 80 2D */	lis r3, callback__15JKRThreadSwitchFP8OSThreadP8OSThread@ha
/* 802D19C4 002CE904  38 63 1A E4 */	addi r3, r3, callback__15JKRThreadSwitchFP8OSThreadP8OSThread@l
/* 802D19C8 002CE908  48 06 F0 E1 */	bl OSSetSwitchThreadCallback
/* 802D19CC 002CE90C  38 60 00 00 */	li r3, 0
/* 802D19D0 002CE910  90 7F 00 0C */	stw r3, 0xc(r31)
/* 802D19D4 002CE914  38 00 00 01 */	li r0, 1
/* 802D19D8 002CE918  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802D19DC 002CE91C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 802D19E0 002CE920  90 7F 00 18 */	stw r3, 0x18(r31)
/* 802D19E4 002CE924  90 6D 8E 34 */	stw r3, lbl_804513B4-_SDA_BASE_(r13)
/* 802D19E8 002CE928  90 6D 8E 3C */	stw r3, lbl_804513BC-_SDA_BASE_(r13)
/* 802D19EC 002CE92C  90 6D 8E 38 */	stw r3, lbl_804513B8-_SDA_BASE_(r13)
/* 802D19F0 002CE930  90 7F 00 20 */	stw r3, 0x20(r31)
/* 802D19F4 002CE934  90 7F 00 24 */	stw r3, 0x24(r31)
/* 802D19F8 002CE938  98 1F 00 08 */	stb r0, 8(r31)
/* 802D19FC 002CE93C  7F E3 FB 78 */	mr r3, r31
/* 802D1A00 002CE940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D1A04 002CE944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1A08 002CE948  7C 08 03 A6 */	mtlr r0
/* 802D1A0C 002CE94C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D1A10 002CE950  4E 80 00 20 */	blr 