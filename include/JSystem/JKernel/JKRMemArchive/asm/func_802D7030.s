/* getExpandedResSize__13JKRMemArchiveCFPCv __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection::getExpandedResSize( const(void const *)) */
/* missing reference */
/* 802D7030 002D3F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7034 002D3F74  7C 08 02 A6 */	mflr r0
/* 802D7038 002D3F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D703C 002D3F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7040 002D3F80  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7044 002D3F84  7C 7E 1B 78 */	mr r30, r3
/* 802D7048 002D3F88  7C 9F 23 78 */	mr r31, r4
/* 802D704C 002D3F8C  4B FF F6 E9 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D7050 002D3F90  28 03 00 00 */	cmplwi r3, 0
/* 802D7054 002D3F94  40 82 00 0C */	bne lbl_802D7060
/* 802D7058 002D3F98  38 60 FF FF */	li r3, -1
/* 802D705C 002D3F9C  48 00 00 4C */	b lbl_802D70A8
lbl_802D7060:
/* 802D7060 002D3FA0  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7064 002D3FA4  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7068 002D3FA8  40 82 00 20 */	bne lbl_802D7088
/* 802D706C 002D3FAC  7F C3 F3 78 */	mr r3, r30
/* 802D7070 002D3FB0  7F E4 FB 78 */	mr r4, r31
/* 802D7074 002D3FB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802D7078 002D3FB8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D707C 002D3FBC  7D 89 03 A6 */	mtctr r12
/* 802D7080 002D3FC0  4E 80 04 21 */	bctrl
/* 802D7084 002D3FC4  48 00 00 24 */	b lbl_802D70A8
lbl_802D7088:
/* 802D7088 002D3FC8  88 BF 00 07 */	lbz r5, 7(r31)
/* 802D708C 002D3FCC  88 9F 00 06 */	lbz r4, 6(r31)
/* 802D7090 002D3FD0  88 7F 00 04 */	lbz r3, 4(r31)
/* 802D7094 002D3FD4  88 1F 00 05 */	lbz r0, 5(r31)
/* 802D7098 002D3FD8  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D709C 002D3FDC  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D70A0 002D3FE0  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D70A4 002D3FE4  7C A3 03 78 */	or r3, r5, r0
lbl_802D70A8:
/* 802D70A8 002D3FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D70AC 002D3FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D70B0 002D3FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D70B4 002D3FF4  7C 08 03 A6 */	mtlr r0
/* 802D70B8 002D3FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D70BC 002D3FFC  4E 80 00 20 */	blr