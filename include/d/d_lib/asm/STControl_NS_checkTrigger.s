/* 8003219C 0002F0DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800321A0 0002F0E0  7C 08 02 A6 */	mflr r0
/* 800321A4 0002F0E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800321A8 0002F0E8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 800321AC 0002F0EC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0
/* 800321B0 0002F0F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800321B4 0002F0F4  7C 7F 1B 78 */	mr r31, r3
/* 800321B8 0002F0F8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 800321BC 0002F0FC  98 03 00 0D */	stb r0, 0xd(r3)
/* 800321C0 0002F100  81 83 00 00 */	lwz r12, 0(r3)
/* 800321C4 0002F104  81 8C 00 08 */	lwz r12, 8(r12)
/* 800321C8 0002F108  7D 89 03 A6 */	mtctr r12
/* 800321CC 0002F10C  4E 80 04 21 */	bctrl 
/* 800321D0 0002F110  FF E0 08 90 */	fmr f31, f1
/* 800321D4 0002F114  7F E3 FB 78 */	mr r3, r31
/* 800321D8 0002F118  81 9F 00 00 */	lwz r12, 0(r31)
/* 800321DC 0002F11C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 800321E0 0002F120  7D 89 03 A6 */	mtctr r12
/* 800321E4 0002F124  4E 80 04 21 */	bctrl 
/* 800321E8 0002F128  38 C0 00 00 */	li r6, 0
/* 800321EC 0002F12C  A8 1F 00 26 */	lha r0, 0x26(r31)
/* 800321F0 0002F130  20 00 20 00 */	subfic r0, r0, 0x2000
/* 800321F4 0002F134  7C 00 0E 70 */	srawi r0, r0, 1
/* 800321F8 0002F138  7C 07 07 34 */	extsh r7, r0
/* 800321FC 0002F13C  FC 00 FA 10 */	fabs f0, f31
/* 80032200 0002F140  FC 20 00 18 */	frsp f1, f0
/* 80032204 0002F144  C0 0D 8C 00 */	lfs f0, lbl_80451180-_SDA_BASE_(r13)
/* 80032208 0002F148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8003220C 0002F14C  41 80 01 98 */	blt lbl_800323A4
/* 80032210 0002F150  7C 65 07 34 */	extsh r5, r3
/* 80032214 0002F154  A8 9F 00 22 */	lha r4, 0x22(r31)
/* 80032218 0002F158  7C 64 3A 14 */	add r3, r4, r7
/* 8003221C 0002F15C  38 03 90 00 */	addi r0, r3, -28672
/* 80032220 0002F160  7C 05 00 00 */	cmpw r5, r0
/* 80032224 0002F164  40 80 00 10 */	bge lbl_80032234
/* 80032228 0002F168  60 C0 00 04 */	ori r0, r6, 4
/* 8003222C 0002F16C  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80032230 0002F170  48 00 00 C4 */	b lbl_800322F4
lbl_80032234:
/* 80032234 0002F174  38 04 B0 00 */	addi r0, r4, -20480
/* 80032238 0002F178  7C 07 00 50 */	subf r0, r7, r0
/* 8003223C 0002F17C  7C 05 00 00 */	cmpw r5, r0
/* 80032240 0002F180  40 80 00 10 */	bge lbl_80032250
/* 80032244 0002F184  60 C0 00 05 */	ori r0, r6, 5
/* 80032248 0002F188  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 8003224C 0002F18C  48 00 00 A8 */	b lbl_800322F4
lbl_80032250:
/* 80032250 0002F190  38 03 D0 00 */	addi r0, r3, -12288
/* 80032254 0002F194  7C 05 00 00 */	cmpw r5, r0
/* 80032258 0002F198  40 80 00 10 */	bge lbl_80032268
/* 8003225C 0002F19C  60 C0 00 01 */	ori r0, r6, 1
/* 80032260 0002F1A0  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80032264 0002F1A4  48 00 00 90 */	b lbl_800322F4
lbl_80032268:
/* 80032268 0002F1A8  38 04 F0 00 */	addi r0, r4, -4096
/* 8003226C 0002F1AC  7C 07 00 50 */	subf r0, r7, r0
/* 80032270 0002F1B0  7C 05 00 00 */	cmpw r5, r0
/* 80032274 0002F1B4  40 80 00 10 */	bge lbl_80032284
/* 80032278 0002F1B8  60 C0 00 09 */	ori r0, r6, 9
/* 8003227C 0002F1BC  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80032280 0002F1C0  48 00 00 74 */	b lbl_800322F4
lbl_80032284:
/* 80032284 0002F1C4  38 03 10 00 */	addi r0, r3, 0x1000
/* 80032288 0002F1C8  7C 05 00 00 */	cmpw r5, r0
/* 8003228C 0002F1CC  40 80 00 10 */	bge lbl_8003229C
/* 80032290 0002F1D0  60 C0 00 08 */	ori r0, r6, 8
/* 80032294 0002F1D4  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 80032298 0002F1D8  48 00 00 5C */	b lbl_800322F4
lbl_8003229C:
/* 8003229C 0002F1DC  38 04 30 00 */	addi r0, r4, 0x3000
/* 800322A0 0002F1E0  7C 07 00 50 */	subf r0, r7, r0
/* 800322A4 0002F1E4  7C 05 00 00 */	cmpw r5, r0
/* 800322A8 0002F1E8  40 80 00 10 */	bge lbl_800322B8
/* 800322AC 0002F1EC  60 C0 00 0A */	ori r0, r6, 0xa
/* 800322B0 0002F1F0  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 800322B4 0002F1F4  48 00 00 40 */	b lbl_800322F4
lbl_800322B8:
/* 800322B8 0002F1F8  38 03 50 00 */	addi r0, r3, 0x5000
/* 800322BC 0002F1FC  7C 05 00 00 */	cmpw r5, r0
/* 800322C0 0002F200  40 80 00 10 */	bge lbl_800322D0
/* 800322C4 0002F204  60 C0 00 02 */	ori r0, r6, 2
/* 800322C8 0002F208  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 800322CC 0002F20C  48 00 00 28 */	b lbl_800322F4
lbl_800322D0:
/* 800322D0 0002F210  38 04 70 00 */	addi r0, r4, 0x7000
/* 800322D4 0002F214  7C 07 00 50 */	subf r0, r7, r0
/* 800322D8 0002F218  7C 05 00 00 */	cmpw r5, r0
/* 800322DC 0002F21C  40 80 00 10 */	bge lbl_800322EC
/* 800322E0 0002F220  60 C0 00 06 */	ori r0, r6, 6
/* 800322E4 0002F224  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 800322E8 0002F228  48 00 00 0C */	b lbl_800322F4
lbl_800322EC:
/* 800322EC 0002F22C  60 C0 00 04 */	ori r0, r6, 4
/* 800322F0 0002F230  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_800322F4:
/* 800322F4 0002F234  C0 1F 00 04 */	lfs f0, 4(r31)
/* 800322F8 0002F238  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800322FC 0002F23C  4C 41 13 82 */	cror 2, 1, 2
/* 80032300 0002F240  40 82 00 0C */	bne lbl_8003230C
/* 80032304 0002F244  98 DF 00 0C */	stb r6, 0xc(r31)
/* 80032308 0002F248  48 00 00 28 */	b lbl_80032330
lbl_8003230C:
/* 8003230C 0002F24C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80032310 0002F250  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80032314 0002F254  40 80 00 10 */	bge lbl_80032324
/* 80032318 0002F258  38 00 00 00 */	li r0, 0
/* 8003231C 0002F25C  98 1F 00 0C */	stb r0, 0xc(r31)
/* 80032320 0002F260  48 00 00 10 */	b lbl_80032330
lbl_80032324:
/* 80032324 0002F264  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80032328 0002F268  7C 00 30 78 */	andc r0, r0, r6
/* 8003232C 0002F26C  98 1F 00 0C */	stb r0, 0xc(r31)
lbl_80032330:
/* 80032330 0002F270  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 80032334 0002F274  88 1F 00 0D */	lbz r0, 0xd(r31)
/* 80032338 0002F278  7C 03 00 40 */	cmplw r3, r0
/* 8003233C 0002F27C  41 82 00 3C */	beq lbl_80032378
/* 80032340 0002F280  28 03 00 00 */	cmplwi r3, 0
/* 80032344 0002F284  40 82 00 10 */	bne lbl_80032354
/* 80032348 0002F288  38 00 00 00 */	li r0, 0
/* 8003234C 0002F28C  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 80032350 0002F290  48 00 00 28 */	b lbl_80032378
lbl_80032354:
/* 80032354 0002F294  54 A0 04 FE */	clrlwi r0, r5, 0x13
/* 80032358 0002F298  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8003235C 0002F29C  40 81 00 10 */	ble lbl_8003236C
/* 80032360 0002F2A0  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 80032364 0002F2A4  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 80032368 0002F2A8  48 00 00 10 */	b lbl_80032378
lbl_8003236C:
/* 8003236C 0002F2AC  A8 1F 00 24 */	lha r0, 0x24(r31)
/* 80032370 0002F2B0  7C 00 00 D0 */	neg r0, r0
/* 80032374 0002F2B4  B0 1F 00 22 */	sth r0, 0x22(r31)
lbl_80032378:
/* 80032378 0002F2B8  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8003237C 0002F2BC  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80032380 0002F2C0  40 82 00 0C */	bne lbl_8003238C
/* 80032384 0002F2C4  7F E3 FB 78 */	mr r3, r31
/* 80032388 0002F2C8  4B FF FD 75 */	bl Xinit__9STControlFv
lbl_8003238C:
/* 8003238C 0002F2CC  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 80032390 0002F2D0  54 00 07 3B */	rlwinm. r0, r0, 0, 0x1c, 0x1d
/* 80032394 0002F2D4  40 82 00 28 */	bne lbl_800323BC
/* 80032398 0002F2D8  7F E3 FB 78 */	mr r3, r31
/* 8003239C 0002F2DC  4B FF FD 91 */	bl Yinit__9STControlFv
/* 800323A0 0002F2E0  48 00 00 1C */	b lbl_800323BC
lbl_800323A4:
/* 800323A4 0002F2E4  38 00 00 00 */	li r0, 0
/* 800323A8 0002F2E8  98 1F 00 0C */	stb r0, 0xc(r31)
/* 800323AC 0002F2EC  7F E3 FB 78 */	mr r3, r31
/* 800323B0 0002F2F0  4B FF FD 4D */	bl Xinit__9STControlFv
/* 800323B4 0002F2F4  7F E3 FB 78 */	mr r3, r31
/* 800323B8 0002F2F8  4B FF FD 75 */	bl Yinit__9STControlFv
lbl_800323BC:
/* 800323BC 0002F2FC  88 7F 00 0D */	lbz r3, 0xd(r31)
/* 800323C0 0002F300  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 800323C4 0002F304  7C 60 00 38 */	and r0, r3, r0
/* 800323C8 0002F308  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 800323CC 0002F30C  41 82 00 18 */	beq lbl_800323E4
/* 800323D0 0002F310  A8 7F 00 0E */	lha r3, 0xe(r31)
/* 800323D4 0002F314  2C 03 00 00 */	cmpwi r3, 0
/* 800323D8 0002F318  40 81 00 0C */	ble lbl_800323E4
/* 800323DC 0002F31C  38 03 FF FF */	addi r0, r3, -1
/* 800323E0 0002F320  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_800323E4:
/* 800323E4 0002F324  88 7F 00 0D */	lbz r3, 0xd(r31)
/* 800323E8 0002F328  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 800323EC 0002F32C  7C 60 00 38 */	and r0, r3, r0
/* 800323F0 0002F330  54 00 07 3B */	rlwinm. r0, r0, 0, 0x1c, 0x1d
/* 800323F4 0002F334  41 82 00 18 */	beq lbl_8003240C
/* 800323F8 0002F338  A8 7F 00 10 */	lha r3, 0x10(r31)
/* 800323FC 0002F33C  2C 03 00 00 */	cmpwi r3, 0
/* 80032400 0002F340  40 81 00 0C */	ble lbl_8003240C
/* 80032404 0002F344  38 03 FF FF */	addi r0, r3, -1
/* 80032408 0002F348  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_8003240C:
/* 8003240C 0002F34C  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 80032410 0002F350  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0
/* 80032414 0002F354  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80032418 0002F358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003241C 0002F35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80032420 0002F360  7C 08 03 A6 */	mtlr r0
/* 80032424 0002F364  38 21 00 20 */	addi r1, r1, 0x20
/* 80032428 0002F368  4E 80 00 20 */	blr 
