/* 80035A04 00032944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80035A08 00032948  7C 08 02 A6 */	mflr r0
/* 80035A0C 0003294C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80035A10 00032950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80035A14 00032954  93 C1 00 08 */	stw r30, 8(r1)
/* 80035A18 00032958  1C 05 0A 94 */	mulli r0, r5, 0xa94
/* 80035A1C 0003295C  7C 84 02 14 */	add r4, r4, r0
/* 80035A20 00032960  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A24 00032964  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A28 00032968  38 A0 09 58 */	li r5, 0x958
/* 80035A2C 0003296C  4B FC DB 15 */	bl func_80003540
/* 80035A30 00032970  48 30 AB 61 */	bl OSGetSoundMode
/* 80035A34 00032974  28 03 00 00 */	cmplwi r3, 0
/* 80035A38 00032978  40 82 00 28 */	bne lbl_80035A60
/* 80035A3C 0003297C  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A40 00032980  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A44 00032984  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80035A48 00032988  38 80 00 00 */	li r4, 0
/* 80035A4C 0003298C  4B FF EC 41 */	bl setSound__19dSv_player_config_cFUc
/* 80035A50 00032990  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035A54 00032994  38 80 00 00 */	li r4, 0
/* 80035A58 00032998  48 29 7E 31 */	bl Z2AudioMgr_NS_setOutputMode
/* 80035A5C 0003299C  48 00 00 4C */	b lbl_80035AA8
lbl_80035A60:
/* 80035A60 000329A0  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035A64 000329A4  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035A68 000329A8  3B E3 01 E0 */	addi r31, r3, 0x1e0
/* 80035A6C 000329AC  7F E3 FB 78 */	mr r3, r31
/* 80035A70 000329B0  4B FF EC 15 */	bl getSound__19dSv_player_config_cFv
/* 80035A74 000329B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035A78 000329B8  28 00 00 02 */	cmplwi r0, 2
/* 80035A7C 000329BC  40 82 00 14 */	bne lbl_80035A90
/* 80035A80 000329C0  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035A84 000329C4  38 80 00 02 */	li r4, 2
/* 80035A88 000329C8  48 29 7E 01 */	bl Z2AudioMgr_NS_setOutputMode
/* 80035A8C 000329CC  48 00 00 1C */	b lbl_80035AA8
lbl_80035A90:
/* 80035A90 000329D0  7F E3 FB 78 */	mr r3, r31
/* 80035A94 000329D4  38 80 00 01 */	li r4, 1
/* 80035A98 000329D8  4B FF EB F5 */	bl setSound__19dSv_player_config_cFUc
/* 80035A9C 000329DC  80 6D 8D E8 */	lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80035AA0 000329E0  38 80 00 01 */	li r4, 1
/* 80035AA4 000329E4  48 29 7D E5 */	bl Z2AudioMgr_NS_setOutputMode
lbl_80035AA8:
/* 80035AA8 000329E8  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035AAC 000329EC  3B E3 61 C0 */	addi r31, r3, lbl_804061C0@l
/* 80035AB0 000329F0  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80035AB4 000329F4  28 00 00 0C */	cmplwi r0, 0xc
/* 80035AB8 000329F8  40 80 00 0C */	bge lbl_80035AC4
/* 80035ABC 000329FC  38 00 00 0C */	li r0, 0xc
/* 80035AC0 00032A00  B0 1F 00 02 */	sth r0, 2(r31)
lbl_80035AC4:
/* 80035AC4 00032A04  38 60 00 06 */	li r3, 6
/* 80035AC8 00032A08  38 80 00 00 */	li r4, 0
/* 80035ACC 00032A0C  4B FF 95 75 */	bl dComIfGs_setKeyNum
/* 80035AD0 00032A10  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035AD4 00032A14  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035AD8 00032A18  3B C3 00 9C */	addi r30, r3, 0x9c
/* 80035ADC 00032A1C  7F C3 F3 78 */	mr r3, r30
/* 80035AE0 00032A20  38 80 00 09 */	li r4, 9
/* 80035AE4 00032A24  38 A0 00 01 */	li r5, 1
/* 80035AE8 00032A28  4B FF D5 49 */	bl getItem__17dSv_player_item_cCFib
/* 80035AEC 00032A2C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035AF0 00032A30  28 00 00 47 */	cmplwi r0, 0x47
/* 80035AF4 00032A34  40 82 00 24 */	bne lbl_80035B18
/* 80035AF8 00032A38  7F C3 F3 78 */	mr r3, r30
/* 80035AFC 00032A3C  38 80 00 0A */	li r4, 0xa
/* 80035B00 00032A40  38 A0 00 47 */	li r5, 0x47
/* 80035B04 00032A44  4B FF D4 B5 */	bl setItem__17dSv_player_item_cFiUc
/* 80035B08 00032A48  7F C3 F3 78 */	mr r3, r30
/* 80035B0C 00032A4C  38 80 00 09 */	li r4, 9
/* 80035B10 00032A50  38 A0 00 FF */	li r5, 0xff
/* 80035B14 00032A54  4B FF D4 A5 */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B18:
/* 80035B18 00032A58  7F C3 F3 78 */	mr r3, r30
/* 80035B1C 00032A5C  38 80 00 09 */	li r4, 9
/* 80035B20 00032A60  38 A0 00 01 */	li r5, 1
/* 80035B24 00032A64  4B FF D5 0D */	bl getItem__17dSv_player_item_cCFib
/* 80035B28 00032A68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B2C 00032A6C  28 00 00 44 */	cmplwi r0, 0x44
/* 80035B30 00032A70  40 82 00 30 */	bne lbl_80035B60
/* 80035B34 00032A74  7F C3 F3 78 */	mr r3, r30
/* 80035B38 00032A78  38 80 00 0A */	li r4, 0xa
/* 80035B3C 00032A7C  38 A0 00 01 */	li r5, 1
/* 80035B40 00032A80  4B FF D4 F1 */	bl getItem__17dSv_player_item_cCFib
/* 80035B44 00032A84  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80035B48 00032A88  28 00 00 47 */	cmplwi r0, 0x47
/* 80035B4C 00032A8C  40 82 00 14 */	bne lbl_80035B60
/* 80035B50 00032A90  7F C3 F3 78 */	mr r3, r30
/* 80035B54 00032A94  38 80 00 09 */	li r4, 9
/* 80035B58 00032A98  38 A0 00 FF */	li r5, 0xff
/* 80035B5C 00032A9C  4B FF D4 5D */	bl setItem__17dSv_player_item_cFiUc
lbl_80035B60:
/* 80035B60 00032AA0  7F C3 F3 78 */	mr r3, r30
/* 80035B64 00032AA4  4B FF D7 95 */	bl setLineUpItem__17dSv_player_item_cFv
/* 80035B68 00032AA8  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 80035B6C 00032AAC  4B FF EB 29 */	bl getVibration__19dSv_player_config_cFv
/* 80035B70 00032AB0  7C 64 1B 78 */	mr r4, r3
/* 80035B74 00032AB4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035B78 00032AB8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035B7C 00032ABC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80035B80 00032AC0  4B FF 58 29 */	bl dComIfG_play_c_NS_setNowVibration
/* 80035B84 00032AC4  3C 60 80 40 */	lis r3, lbl_804061C0@ha
/* 80035B88 00032AC8  38 63 61 C0 */	addi r3, r3, lbl_804061C0@l
/* 80035B8C 00032ACC  38 83 00 58 */	addi r4, r3, 0x58
/* 80035B90 00032AD0  3C 60 80 43 */	lis r3, lbl_80430188@ha
/* 80035B94 00032AD4  38 63 01 88 */	addi r3, r3, lbl_80430188@l
/* 80035B98 00032AD8  48 1E 86 F9 */	bl dMeter2Info_c_NS_setSaveStageName
/* 80035B9C 00032ADC  3C 60 80 38 */	lis r3, lbl_80379234@ha
/* 80035BA0 00032AE0  38 63 92 34 */	addi r3, r3, lbl_80379234@l
/* 80035BA4 00032AE4  38 63 00 46 */	addi r3, r3, 0x46
/* 80035BA8 00032AE8  38 80 09 58 */	li r4, 0x958
/* 80035BAC 00032AEC  4C C6 31 82 */	crclr 6
/* 80035BB0 00032AF0  48 33 0C CD */	bl func_8036687C
/* 80035BB4 00032AF4  38 60 00 00 */	li r3, 0
/* 80035BB8 00032AF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80035BBC 00032AFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80035BC0 00032B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035BC4 00032B04  7C 08 03 A6 */	mtlr r0
/* 80035BC8 00032B08  38 21 00 10 */	addi r1, r1, 0x10
/* 80035BCC 00032B0C  4E 80 00 20 */	blr 