/* 802C45B0 002C14F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C45B4 002C14F4  7C 08 02 A6 */	mflr r0
/* 802C45B8 002C14F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C45BC 002C14FC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802C45C0 002C1500  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0
/* 802C45C4 002C1504  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C45C8 002C1508  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C45CC 002C150C  88 03 00 C0 */	lbz r0, 0xc0(r3)
/* 802C45D0 002C1510  28 00 00 01 */	cmplwi r0, 1
/* 802C45D4 002C1514  40 82 00 E0 */	bne lbl_802C46B4
/* 802C45D8 002C1518  80 E4 00 00 */	lwz r7, 0(r4)
/* 802C45DC 002C151C  3C C0 00 01 */	lis r6, 0x00010037@ha
/* 802C45E0 002C1520  38 06 00 37 */	addi r0, r6, 0x00010037@l
/* 802C45E4 002C1524  7C 07 00 00 */	cmpw r7, r0
/* 802C45E8 002C1528  41 82 00 08 */	beq lbl_802C45F0
/* 802C45EC 002C152C  48 00 00 C8 */	b lbl_802C46B4
lbl_802C45F0:
/* 802C45F0 002C1530  C3 E2 C2 A0 */	lfs f31, lbl_80455CA0-_SDA2_BASE_(r2)
/* 802C45F4 002C1534  3B E0 00 00 */	li r31, 0
/* 802C45F8 002C1538  88 03 00 C2 */	lbz r0, 0xc2(r3)
/* 802C45FC 002C153C  2C 00 00 02 */	cmpwi r0, 2
/* 802C4600 002C1540  41 82 00 3C */	beq lbl_802C463C
/* 802C4604 002C1544  40 80 00 14 */	bge lbl_802C4618
/* 802C4608 002C1548  2C 00 00 00 */	cmpwi r0, 0
/* 802C460C 002C154C  41 82 00 18 */	beq lbl_802C4624
/* 802C4610 002C1550  40 80 00 20 */	bge lbl_802C4630
/* 802C4614 002C1554  48 00 00 3C */	b lbl_802C4650
lbl_802C4618:
/* 802C4618 002C1558  2C 00 00 04 */	cmpwi r0, 4
/* 802C461C 002C155C  40 80 00 34 */	bge lbl_802C4650
/* 802C4620 002C1560  48 00 00 28 */	b lbl_802C4648
lbl_802C4624:
/* 802C4624 002C1564  C3 E2 C2 98 */	lfs f31, lbl_80455C98-_SDA2_BASE_(r2)
/* 802C4628 002C1568  3B E0 00 02 */	li r31, 2
/* 802C462C 002C156C  48 00 00 24 */	b lbl_802C4650
lbl_802C4630:
/* 802C4630 002C1570  C3 E2 C2 EC */	lfs f31, lbl_80455CEC-_SDA2_BASE_(r2)
/* 802C4634 002C1574  3B E0 00 01 */	li r31, 1
/* 802C4638 002C1578  48 00 00 18 */	b lbl_802C4650
lbl_802C463C:
/* 802C463C 002C157C  C3 E2 C2 D8 */	lfs f31, lbl_80455CD8-_SDA2_BASE_(r2)
/* 802C4640 002C1580  3B E0 00 01 */	li r31, 1
/* 802C4644 002C1584  48 00 00 0C */	b lbl_802C4650
lbl_802C4648:
/* 802C4648 002C1588  C3 E2 C2 F0 */	lfs f31, lbl_80455CF0-_SDA2_BASE_(r2)
/* 802C464C 002C158C  3B E0 00 02 */	li r31, 2
lbl_802C4650:
/* 802C4650 002C1590  3C 80 00 01 */	lis r4, 0x00010037@ha
/* 802C4654 002C1594  38 04 00 37 */	addi r0, r4, 0x00010037@l
/* 802C4658 002C1598  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C465C 002C159C  38 81 00 0C */	addi r4, r1, 0xc
/* 802C4660 002C15A0  81 83 00 00 */	lwz r12, 0(r3)
/* 802C4664 002C15A4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802C4668 002C15A8  7D 89 03 A6 */	mtctr r12
/* 802C466C 002C15AC  4E 80 04 21 */	bctrl 
/* 802C4670 002C15B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C4674 002C15B4  41 82 00 38 */	beq lbl_802C46AC
/* 802C4678 002C15B8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C467C 002C15BC  28 03 00 00 */	cmplwi r3, 0
/* 802C4680 002C15C0  41 82 00 2C */	beq lbl_802C46AC
/* 802C4684 002C15C4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C4688 002C15C8  FC 20 F8 90 */	fmr f1, f31
/* 802C468C 002C15CC  38 80 00 00 */	li r4, 0
/* 802C4690 002C15D0  4B FD E7 25 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C4694 002C15D4  80 6D 85 F4 */	lwz r3, lbl_80450B74-_SDA_BASE_(r13)
/* 802C4698 002C15D8  7F C4 F3 78 */	mr r4, r30
/* 802C469C 002C15DC  38 A0 00 08 */	li r5, 8
/* 802C46A0 002C15E0  57 E6 06 3E */	clrlwi r6, r31, 0x18
/* 802C46A4 002C15E4  38 E0 FF FF */	li r7, -1
/* 802C46A8 002C15E8  4B FE 68 35 */	bl Z2SoundStarter_NS_setPortData
lbl_802C46AC:
/* 802C46AC 002C15EC  7F C3 F3 78 */	mr r3, r30
/* 802C46B0 002C15F0  48 00 00 20 */	b lbl_802C46D0
lbl_802C46B4:
/* 802C46B4 002C15F4  80 04 00 00 */	lwz r0, 0(r4)
/* 802C46B8 002C15F8  90 01 00 08 */	stw r0, 8(r1)
/* 802C46BC 002C15FC  38 81 00 08 */	addi r4, r1, 8
/* 802C46C0 002C1600  81 83 00 00 */	lwz r12, 0(r3)
/* 802C46C4 002C1604  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802C46C8 002C1608  7D 89 03 A6 */	mtctr r12
/* 802C46CC 002C160C  4E 80 04 21 */	bctrl 
lbl_802C46D0:
/* 802C46D0 002C1610  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0
/* 802C46D4 002C1614  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802C46D8 002C1618  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C46DC 002C161C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C46E0 002C1620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C46E4 002C1624  7C 08 03 A6 */	mtlr r0
/* 802C46E8 002C1628  38 21 00 30 */	addi r1, r1, 0x30
/* 802C46EC 002C162C  4E 80 00 20 */	blr 