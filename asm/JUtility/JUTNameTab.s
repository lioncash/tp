.include "macros.inc"

.section .text, "ax" # 802de9a0


.global JUTNameTab
JUTNameTab:
/* 802DE9A0 002DB8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE9A4 002DB8E4  7C 08 02 A6 */	mflr r0
/* 802DE9A8 002DB8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE9AC 002DB8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE9B0 002DB8F0  7C 7F 1B 78 */	mr r31, r3
/* 802DE9B4 002DB8F4  3C 80 80 3C */	lis r4, lbl_803BB3DC@ha
/* 802DE9B8 002DB8F8  38 04 B3 DC */	addi r0, r4, lbl_803BB3DC@l
/* 802DE9BC 002DB8FC  90 03 00 00 */	stw r0, 0(r3)
/* 802DE9C0 002DB900  38 80 00 00 */	li r4, 0
/* 802DE9C4 002DB904  48 00 00 59 */	bl JUTNameTab_NS_setResource
/* 802DE9C8 002DB908  7F E3 FB 78 */	mr r3, r31
/* 802DE9CC 002DB90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE9D0 002DB910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE9D4 002DB914  7C 08 03 A6 */	mtlr r0
/* 802DE9D8 002DB918  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE9DC 002DB91C  4E 80 00 20 */	blr 

.global JUTNameTab_X1_
JUTNameTab_X1_:
/* 802DE9E0 002DB920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE9E4 002DB924  7C 08 02 A6 */	mflr r0
/* 802DE9E8 002DB928  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE9EC 002DB92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE9F0 002DB930  7C 7F 1B 78 */	mr r31, r3
/* 802DE9F4 002DB934  3C A0 80 3C */	lis r5, lbl_803BB3DC@ha
/* 802DE9F8 002DB938  38 05 B3 DC */	addi r0, r5, lbl_803BB3DC@l
/* 802DE9FC 002DB93C  90 03 00 00 */	stw r0, 0(r3)
/* 802DEA00 002DB940  48 00 00 1D */	bl JUTNameTab_NS_setResource
/* 802DEA04 002DB944  7F E3 FB 78 */	mr r3, r31
/* 802DEA08 002DB948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEA0C 002DB94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEA10 002DB950  7C 08 03 A6 */	mtlr r0
/* 802DEA14 002DB954  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEA18 002DB958  4E 80 00 20 */	blr 

.global JUTNameTab_NS_setResource
JUTNameTab_NS_setResource:
/* 802DEA1C 002DB95C  90 83 00 04 */	stw r4, 4(r3)
/* 802DEA20 002DB960  28 04 00 00 */	cmplwi r4, 0
/* 802DEA24 002DB964  41 82 00 24 */	beq lbl_802DEA48
/* 802DEA28 002DB968  A0 04 00 00 */	lhz r0, 0(r4)
/* 802DEA2C 002DB96C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802DEA30 002DB970  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802DEA34 002DB974  54 05 10 3A */	slwi r5, r0, 2
/* 802DEA38 002DB978  38 05 00 04 */	addi r0, r5, 4
/* 802DEA3C 002DB97C  7C 04 02 14 */	add r0, r4, r0
/* 802DEA40 002DB980  90 03 00 08 */	stw r0, 8(r3)
/* 802DEA44 002DB984  4E 80 00 20 */	blr 
lbl_802DEA48:
/* 802DEA48 002DB988  38 00 00 00 */	li r0, 0
/* 802DEA4C 002DB98C  B0 03 00 0C */	sth r0, 0xc(r3)
/* 802DEA50 002DB990  90 03 00 08 */	stw r0, 8(r3)
/* 802DEA54 002DB994  4E 80 00 20 */	blr 

.global JUTNameTab_NS_getIndex
JUTNameTab_NS_getIndex:
/* 802DEA58 002DB998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEA5C 002DB99C  7C 08 02 A6 */	mflr r0
/* 802DEA60 002DB9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEA64 002DB9A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEA68 002DB9A8  48 08 37 69 */	bl func_803621D0
/* 802DEA6C 002DB9AC  7C 7F 1B 78 */	mr r31, r3
/* 802DEA70 002DB9B0  7C 9A 23 78 */	mr r26, r4
/* 802DEA74 002DB9B4  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DEA78 002DB9B8  3B 85 00 04 */	addi r28, r5, 4
/* 802DEA7C 002DB9BC  48 00 00 AD */	bl JUTNameTab_NS_calcKeyCode
/* 802DEA80 002DB9C0  3B 60 00 00 */	li r27, 0
/* 802DEA84 002DB9C4  83 BF 00 04 */	lwz r29, 4(r31)
/* 802DEA88 002DB9C8  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 802DEA8C 002DB9CC  A3 FF 00 0C */	lhz r31, 0xc(r31)
/* 802DEA90 002DB9D0  48 00 00 40 */	b lbl_802DEAD0
lbl_802DEA94:
/* 802DEA94 002DB9D4  A0 1C 00 00 */	lhz r0, 0(r28)
/* 802DEA98 002DB9D8  7C 00 F0 40 */	cmplw r0, r30
/* 802DEA9C 002DB9DC  40 82 00 2C */	bne lbl_802DEAC8
/* 802DEAA0 002DB9E0  57 63 13 BA */	rlwinm r3, r27, 2, 0xe, 0x1d
/* 802DEAA4 002DB9E4  38 03 00 06 */	addi r0, r3, 6
/* 802DEAA8 002DB9E8  7C 1D 02 2E */	lhzx r0, r29, r0
/* 802DEAAC 002DB9EC  7C 7D 02 14 */	add r3, r29, r0
/* 802DEAB0 002DB9F0  7F 44 D3 78 */	mr r4, r26
/* 802DEAB4 002DB9F4  48 08 9E E1 */	bl strcmp
/* 802DEAB8 002DB9F8  2C 03 00 00 */	cmpwi r3, 0
/* 802DEABC 002DB9FC  40 82 00 0C */	bne lbl_802DEAC8
/* 802DEAC0 002DBA00  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 802DEAC4 002DBA04  48 00 00 1C */	b lbl_802DEAE0
lbl_802DEAC8:
/* 802DEAC8 002DBA08  3B 9C 00 04 */	addi r28, r28, 4
/* 802DEACC 002DBA0C  3B 7B 00 01 */	addi r27, r27, 1
lbl_802DEAD0:
/* 802DEAD0 002DBA10  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 802DEAD4 002DBA14  7C 00 F8 40 */	cmplw r0, r31
/* 802DEAD8 002DBA18  41 80 FF BC */	blt lbl_802DEA94
/* 802DEADC 002DBA1C  38 60 FF FF */	li r3, -1
lbl_802DEAE0:
/* 802DEAE0 002DBA20  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEAE4 002DBA24  48 08 37 39 */	bl func_8036221C
/* 802DEAE8 002DBA28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DEAEC 002DBA2C  7C 08 03 A6 */	mtlr r0
/* 802DEAF0 002DBA30  38 21 00 20 */	addi r1, r1, 0x20
/* 802DEAF4 002DBA34  4E 80 00 20 */	blr 

.global JUTNameTab_NS_getName
JUTNameTab_NS_getName:
/* 802DEAF8 002DBA38  54 85 04 3E */	clrlwi r5, r4, 0x10
/* 802DEAFC 002DBA3C  A0 03 00 0C */	lhz r0, 0xc(r3)
/* 802DEB00 002DBA40  7C 05 00 40 */	cmplw r5, r0
/* 802DEB04 002DBA44  40 80 00 1C */	bge lbl_802DEB20
/* 802DEB08 002DBA48  80 A3 00 04 */	lwz r5, 4(r3)
/* 802DEB0C 002DBA4C  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 802DEB10 002DBA50  7C 65 02 14 */	add r3, r5, r0
/* 802DEB14 002DBA54  A0 03 00 06 */	lhz r0, 6(r3)
/* 802DEB18 002DBA58  7C 65 02 14 */	add r3, r5, r0
/* 802DEB1C 002DBA5C  4E 80 00 20 */	blr 
lbl_802DEB20:
/* 802DEB20 002DBA60  38 60 00 00 */	li r3, 0
/* 802DEB24 002DBA64  4E 80 00 20 */	blr 

.global JUTNameTab_NS_calcKeyCode
JUTNameTab_NS_calcKeyCode:
/* 802DEB28 002DBA68  38 A0 00 00 */	li r5, 0
/* 802DEB2C 002DBA6C  48 00 00 18 */	b lbl_802DEB44
lbl_802DEB30:
/* 802DEB30 002DBA70  88 04 00 00 */	lbz r0, 0(r4)
/* 802DEB34 002DBA74  7C 03 07 74 */	extsb r3, r0
/* 802DEB38 002DBA78  1C 05 00 03 */	mulli r0, r5, 3
/* 802DEB3C 002DBA7C  7C A3 02 14 */	add r5, r3, r0
/* 802DEB40 002DBA80  38 84 00 01 */	addi r4, r4, 1
lbl_802DEB44:
/* 802DEB44 002DBA84  88 04 00 00 */	lbz r0, 0(r4)
/* 802DEB48 002DBA88  7C 00 07 75 */	extsb. r0, r0
/* 802DEB4C 002DBA8C  40 82 FF E4 */	bne lbl_802DEB30
/* 802DEB50 002DBA90  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 802DEB54 002DBA94  4E 80 00 20 */	blr 

