.include "macros.inc"

.section .text, "ax" # 802d3304


.global JKRAramBlock
JKRAramBlock:
/* 802D3304 002D0244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3308 002D0248  7C 08 02 A6 */	mflr r0
/* 802D330C 002D024C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3310 002D0250  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3314 002D0254  48 08 EE BD */	bl func_803621D0
/* 802D3318 002D0258  7C 7A 1B 78 */	mr r26, r3
/* 802D331C 002D025C  7C 9B 23 78 */	mr r27, r4
/* 802D3320 002D0260  7C BC 2B 78 */	mr r28, r5
/* 802D3324 002D0264  7C DD 33 78 */	mr r29, r6
/* 802D3328 002D0268  7C FE 3B 78 */	mr r30, r7
/* 802D332C 002D026C  7D 1F 43 78 */	mr r31, r8
/* 802D3330 002D0270  3C 60 80 3D */	lis r3, lbl_803CC178@ha
/* 802D3334 002D0274  38 03 C1 78 */	addi r0, r3, lbl_803CC178@l
/* 802D3338 002D0278  90 1A 00 00 */	stw r0, 0(r26)
/* 802D333C 002D027C  38 7A 00 04 */	addi r3, r26, 4
/* 802D3340 002D0280  7F 44 D3 78 */	mr r4, r26
/* 802D3344 002D0284  48 00 8A B9 */	bl JSUPtrLink
/* 802D3348 002D0288  93 7A 00 14 */	stw r27, 0x14(r26)
/* 802D334C 002D028C  93 9A 00 18 */	stw r28, 0x18(r26)
/* 802D3350 002D0290  93 BA 00 1C */	stw r29, 0x1c(r26)
/* 802D3354 002D0294  9B DA 00 20 */	stb r30, 0x20(r26)
/* 802D3358 002D0298  9B FA 00 21 */	stb r31, 0x21(r26)
/* 802D335C 002D029C  7F 43 D3 78 */	mr r3, r26
/* 802D3360 002D02A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3364 002D02A4  48 08 EE B9 */	bl func_8036221C
/* 802D3368 002D02A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D336C 002D02AC  7C 08 03 A6 */	mtlr r0
/* 802D3370 002D02B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3374 002D02B4  4E 80 00 20 */	blr 
/* 802D3378 002D02B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D337C 002D02BC  7C 08 02 A6 */	mflr r0
/* 802D3380 002D02C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3384 002D02C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D3388 002D02C8  93 C1 00 08 */	stw r30, 8(r1)
/* 802D338C 002D02CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D3390 002D02D0  7C 9F 23 78 */	mr r31, r4
/* 802D3394 002D02D4  41 82 00 84 */	beq lbl_802D3418
/* 802D3398 002D02D8  3C 60 80 3D */	lis r3, lbl_803CC178@ha
/* 802D339C 002D02DC  38 03 C1 78 */	addi r0, r3, lbl_803CC178@l
/* 802D33A0 002D02E0  90 1E 00 00 */	stw r0, 0(r30)
/* 802D33A4 002D02E4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802D33A8 002D02E8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 802D33AC 002D02EC  28 04 00 00 */	cmplwi r4, 0
/* 802D33B0 002D02F0  41 82 00 2C */	beq lbl_802D33DC
/* 802D33B4 002D02F4  80 C4 00 00 */	lwz r6, 0(r4)
/* 802D33B8 002D02F8  80 A6 00 1C */	lwz r5, 0x1c(r6)
/* 802D33BC 002D02FC  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 802D33C0 002D0300  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802D33C4 002D0304  7C 00 2A 14 */	add r0, r0, r5
/* 802D33C8 002D0308  7C 04 02 14 */	add r0, r4, r0
/* 802D33CC 002D030C  90 06 00 1C */	stw r0, 0x1c(r6)
/* 802D33D0 002D0310  38 9E 00 04 */	addi r4, r30, 4
/* 802D33D4 002D0314  48 00 8D 89 */	bl JSUPtrList_NS_remove
/* 802D33D8 002D0318  48 00 00 1C */	b lbl_802D33F4
lbl_802D33DC:
/* 802D33DC 002D031C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802D33E0 002D0320  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 802D33E4 002D0324  7C 03 02 14 */	add r0, r3, r0
/* 802D33E8 002D0328  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 802D33EC 002D032C  38 00 00 00 */	li r0, 0
/* 802D33F0 002D0330  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_802D33F4:
/* 802D33F4 002D0334  34 1E 00 04 */	addic. r0, r30, 4
/* 802D33F8 002D0338  41 82 00 10 */	beq lbl_802D3408
/* 802D33FC 002D033C  38 7E 00 04 */	addi r3, r30, 4
/* 802D3400 002D0340  38 80 00 00 */	li r4, 0
/* 802D3404 002D0344  48 00 8A 11 */	bl JSUPtrLink_NS_dtor
lbl_802D3408:
/* 802D3408 002D0348  7F E0 07 35 */	extsh. r0, r31
/* 802D340C 002D034C  40 81 00 0C */	ble lbl_802D3418
/* 802D3410 002D0350  7F C3 F3 78 */	mr r3, r30
/* 802D3414 002D0354  4B FF B9 29 */	bl __dl
lbl_802D3418:
/* 802D3418 002D0358  7F C3 F3 78 */	mr r3, r30
/* 802D341C 002D035C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D3420 002D0360  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D3424 002D0364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3428 002D0368  7C 08 03 A6 */	mtlr r0
/* 802D342C 002D036C  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3430 002D0370  4E 80 00 20 */	blr 

.global JKRAramBlock_NS_allocHead
JKRAramBlock_NS_allocHead:
/* 802D3434 002D0374  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D3438 002D0378  7C 08 02 A6 */	mflr r0
/* 802D343C 002D037C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3440 002D0380  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3444 002D0384  48 08 ED 8D */	bl func_803621D0
/* 802D3448 002D0388  7C 7A 1B 78 */	mr r26, r3
/* 802D344C 002D038C  7C 9B 23 78 */	mr r27, r4
/* 802D3450 002D0390  7C BC 2B 78 */	mr r28, r5
/* 802D3454 002D0394  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D3458 002D0398  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 802D345C 002D039C  7F C3 02 14 */	add r30, r3, r0
/* 802D3460 002D03A0  80 1A 00 1C */	lwz r0, 0x1c(r26)
/* 802D3464 002D03A4  7F BB 00 50 */	subf r29, r27, r0
/* 802D3468 002D03A8  38 60 00 24 */	li r3, 0x24
/* 802D346C 002D03AC  80 86 00 30 */	lwz r4, 0x30(r6)
/* 802D3470 002D03B0  38 A0 00 00 */	li r5, 0
/* 802D3474 002D03B4  4B FF B8 25 */	bl __nw_X2_
/* 802D3478 002D03B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D347C 002D03BC  41 82 00 20 */	beq lbl_802D349C
/* 802D3480 002D03C0  7F C4 F3 78 */	mr r4, r30
/* 802D3484 002D03C4  7F 65 DB 78 */	mr r5, r27
/* 802D3488 002D03C8  7F A6 EB 78 */	mr r6, r29
/* 802D348C 002D03CC  7F 87 E3 78 */	mr r7, r28
/* 802D3490 002D03D0  39 00 00 00 */	li r8, 0
/* 802D3494 002D03D4  4B FF FE 71 */	bl JKRAramBlock
/* 802D3498 002D03D8  7C 7F 1B 78 */	mr r31, r3
lbl_802D349C:
/* 802D349C 002D03DC  38 00 00 00 */	li r0, 0
/* 802D34A0 002D03E0  90 1A 00 1C */	stw r0, 0x1c(r26)
/* 802D34A4 002D03E4  80 9A 00 10 */	lwz r4, 0x10(r26)
/* 802D34A8 002D03E8  80 7A 00 08 */	lwz r3, 8(r26)
/* 802D34AC 002D03EC  38 BF 00 04 */	addi r5, r31, 4
/* 802D34B0 002D03F0  48 00 8B E5 */	bl JSUPtrList_NS_insert
/* 802D34B4 002D03F4  7F E3 FB 78 */	mr r3, r31
/* 802D34B8 002D03F8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D34BC 002D03FC  48 08 ED 61 */	bl func_8036221C
/* 802D34C0 002D0400  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D34C4 002D0404  7C 08 03 A6 */	mtlr r0
/* 802D34C8 002D0408  38 21 00 20 */	addi r1, r1, 0x20
/* 802D34CC 002D040C  4E 80 00 20 */	blr 

.global JKRAramBlock_NS_allocTail
JKRAramBlock_NS_allocTail:
/* 802D34D0 002D0410  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D34D4 002D0414  7C 08 02 A6 */	mflr r0
/* 802D34D8 002D0418  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D34DC 002D041C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D34E0 002D0420  48 08 EC F5 */	bl _savegpr_27
/* 802D34E4 002D0424  7C 7B 1B 78 */	mr r27, r3
/* 802D34E8 002D0428  7C 9C 23 78 */	mr r28, r4
/* 802D34EC 002D042C  7C BD 2B 78 */	mr r29, r5
/* 802D34F0 002D0430  80 83 00 1C */	lwz r4, 0x1c(r3)
/* 802D34F4 002D0434  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802D34F8 002D0438  80 1B 00 18 */	lwz r0, 0x18(r27)
/* 802D34FC 002D043C  7C 00 22 14 */	add r0, r0, r4
/* 802D3500 002D0440  7C 03 02 14 */	add r0, r3, r0
/* 802D3504 002D0444  7F DC 00 50 */	subf r30, r28, r0
/* 802D3508 002D0448  38 60 00 24 */	li r3, 0x24
/* 802D350C 002D044C  80 86 00 30 */	lwz r4, 0x30(r6)
/* 802D3510 002D0450  38 A0 00 00 */	li r5, 0
/* 802D3514 002D0454  4B FF B7 85 */	bl __nw_X2_
/* 802D3518 002D0458  7C 7F 1B 79 */	or. r31, r3, r3
/* 802D351C 002D045C  41 82 00 20 */	beq lbl_802D353C
/* 802D3520 002D0460  7F C4 F3 78 */	mr r4, r30
/* 802D3524 002D0464  7F 85 E3 78 */	mr r5, r28
/* 802D3528 002D0468  38 C0 00 00 */	li r6, 0
/* 802D352C 002D046C  7F A7 EB 78 */	mr r7, r29
/* 802D3530 002D0470  39 00 00 01 */	li r8, 1
/* 802D3534 002D0474  4B FF FD D1 */	bl JKRAramBlock
/* 802D3538 002D0478  7C 7F 1B 78 */	mr r31, r3
lbl_802D353C:
/* 802D353C 002D047C  80 1B 00 1C */	lwz r0, 0x1c(r27)
/* 802D3540 002D0480  7C 1C 00 50 */	subf r0, r28, r0
/* 802D3544 002D0484  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 802D3548 002D0488  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 802D354C 002D048C  80 7B 00 08 */	lwz r3, 8(r27)
/* 802D3550 002D0490  38 BF 00 04 */	addi r5, r31, 4
/* 802D3554 002D0494  48 00 8B 41 */	bl JSUPtrList_NS_insert
/* 802D3558 002D0498  7F E3 FB 78 */	mr r3, r31
/* 802D355C 002D049C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3560 002D04A0  48 08 EC C1 */	bl _restgpr_27
/* 802D3564 002D04A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D3568 002D04A8  7C 08 03 A6 */	mtlr r0
/* 802D356C 002D04AC  38 21 00 20 */	addi r1, r1, 0x20
/* 802D3570 002D04B0  4E 80 00 20 */	blr 
