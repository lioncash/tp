.include "macros.inc"

.section .text, "ax" # 80280f18


.global JStudio_NS_ctb_NS_TObject_NS_dtor
JStudio_NS_ctb_NS_TObject_NS_dtor:
/* 80280F18 0027DE58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280F1C 0027DE5C  7C 08 02 A6 */	mflr r0
/* 80280F20 0027DE60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80280F24 0027DE64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80280F28 0027DE68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80280F2C 0027DE6C  41 82 00 1C */	beq lbl_80280F48
/* 80280F30 0027DE70  3C A0 80 3C */	lis r5, lbl_803C48D0@ha
/* 80280F34 0027DE74  38 05 48 D0 */	addi r0, r5, lbl_803C48D0@l
/* 80280F38 0027DE78  90 1F 00 08 */	stw r0, 8(r31)
/* 80280F3C 0027DE7C  7C 80 07 35 */	extsh. r0, r4
/* 80280F40 0027DE80  40 81 00 08 */	ble lbl_80280F48
/* 80280F44 0027DE84  48 04 DD F9 */	bl __dl
lbl_80280F48:
/* 80280F48 0027DE88  7F E3 FB 78 */	mr r3, r31
/* 80280F4C 0027DE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80280F50 0027DE90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80280F54 0027DE94  7C 08 03 A6 */	mtlr r0
/* 80280F58 0027DE98  38 21 00 10 */	addi r1, r1, 0x10
/* 80280F5C 0027DE9C  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TObject_TxyzRy
JStudio_NS_ctb_NS_TObject_TxyzRy:
/* 80280F60 0027DEA0  80 A4 00 00 */	lwz r5, 0(r4)
/* 80280F64 0027DEA4  A0 85 00 06 */	lhz r4, 6(r5)
/* 80280F68 0027DEA8  38 04 00 03 */	addi r0, r4, 3
/* 80280F6C 0027DEAC  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80280F70 0027DEB0  38 C5 00 08 */	addi r6, r5, 8
/* 80280F74 0027DEB4  7C A6 02 14 */	add r5, r6, r0
/* 80280F78 0027DEB8  38 00 00 00 */	li r0, 0
/* 80280F7C 0027DEBC  28 04 00 00 */	cmplwi r4, 0
/* 80280F80 0027DEC0  41 82 00 08 */	beq lbl_80280F88
/* 80280F84 0027DEC4  7C C0 33 78 */	mr r0, r6
lbl_80280F88:
/* 80280F88 0027DEC8  90 03 00 00 */	stw r0, 0(r3)
/* 80280F8C 0027DECC  90 83 00 04 */	stw r4, 4(r3)
/* 80280F90 0027DED0  3C 80 80 3C */	lis r4, lbl_803C48D0@ha
/* 80280F94 0027DED4  38 04 48 D0 */	addi r0, r4, lbl_803C48D0@l
/* 80280F98 0027DED8  90 03 00 08 */	stw r0, 8(r3)
/* 80280F9C 0027DEDC  38 00 00 00 */	li r0, 0
/* 80280FA0 0027DEE0  90 03 00 0C */	stw r0, 0xc(r3)
/* 80280FA4 0027DEE4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80280FA8 0027DEE8  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80280FAC 0027DEEC  3C 80 80 3C */	lis r4, lbl_803C48C0@ha
/* 80280FB0 0027DEF0  38 04 48 C0 */	addi r0, r4, lbl_803C48C0@l
/* 80280FB4 0027DEF4  90 03 00 08 */	stw r0, 8(r3)
/* 80280FB8 0027DEF8  4E 80 00 20 */	blr 
/* 80280FBC 0027DEFC  38 60 00 01 */	li r3, 1
/* 80280FC0 0027DF00  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl
JStudio_NS_ctb_NS_TControl:
/* 80280FC4 0027DF04  3C 80 80 3C */	lis r4, lbl_803C48B4@ha
/* 80280FC8 0027DF08  38 04 48 B4 */	addi r0, r4, lbl_803C48B4@l
/* 80280FCC 0027DF0C  90 03 00 00 */	stw r0, 0(r3)
/* 80280FD0 0027DF10  38 00 00 00 */	li r0, 0
/* 80280FD4 0027DF14  90 03 00 04 */	stw r0, 4(r3)
/* 80280FD8 0027DF18  90 03 00 0C */	stw r0, 0xc(r3)
/* 80280FDC 0027DF1C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80280FE0 0027DF20  90 03 00 08 */	stw r0, 8(r3)
/* 80280FE4 0027DF24  38 03 00 0C */	addi r0, r3, 0xc
/* 80280FE8 0027DF28  90 03 00 0C */	stw r0, 0xc(r3)
/* 80280FEC 0027DF2C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80280FF0 0027DF30  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_dtor
JStudio_NS_ctb_NS_TControl_NS_dtor:
/* 80280FF4 0027DF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80280FF8 0027DF38  7C 08 02 A6 */	mflr r0
/* 80280FFC 0027DF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281000 0027DF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281004 0027DF44  93 C1 00 08 */	stw r30, 8(r1)
/* 80281008 0027DF48  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028100C 0027DF4C  7C 9F 23 78 */	mr r31, r4
/* 80281010 0027DF50  41 82 00 34 */	beq lbl_80281044
/* 80281014 0027DF54  3C 60 80 3C */	lis r3, lbl_803C48B4@ha
/* 80281018 0027DF58  38 03 48 B4 */	addi r0, r3, lbl_803C48B4@l
/* 8028101C 0027DF5C  90 1E 00 00 */	stw r0, 0(r30)
/* 80281020 0027DF60  34 1E 00 08 */	addic. r0, r30, 8
/* 80281024 0027DF64  41 82 00 10 */	beq lbl_80281034
/* 80281028 0027DF68  38 7E 00 08 */	addi r3, r30, 8
/* 8028102C 0027DF6C  38 80 00 00 */	li r4, 0
/* 80281030 0027DF70  48 05 B9 ED */	bl JGadget_NS_TNodeLinkList_NS_dtor
lbl_80281034:
/* 80281034 0027DF74  7F E0 07 35 */	extsh. r0, r31
/* 80281038 0027DF78  40 81 00 0C */	ble lbl_80281044
/* 8028103C 0027DF7C  7F C3 F3 78 */	mr r3, r30
/* 80281040 0027DF80  48 04 DC FD */	bl __dl
lbl_80281044:
/* 80281044 0027DF84  7F C3 F3 78 */	mr r3, r30
/* 80281048 0027DF88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028104C 0027DF8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80281050 0027DF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281054 0027DF94  7C 08 03 A6 */	mtlr r0
/* 80281058 0027DF98  38 21 00 10 */	addi r1, r1, 0x10
/* 8028105C 0027DF9C  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_appendObject
JStudio_NS_ctb_NS_TControl_NS_appendObject:
/* 80281060 0027DFA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281064 0027DFA4  7C 08 02 A6 */	mflr r0
/* 80281068 0027DFA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028106C 0027DFAC  7C 65 1B 78 */	mr r5, r3
/* 80281070 0027DFB0  38 05 00 0C */	addi r0, r5, 0xc
/* 80281074 0027DFB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80281078 0027DFB8  90 01 00 08 */	stw r0, 8(r1)
/* 8028107C 0027DFBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80281080 0027DFC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80281084 0027DFC4  38 C4 00 0C */	addi r6, r4, 0xc
/* 80281088 0027DFC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028108C 0027DFCC  38 61 00 10 */	addi r3, r1, 0x10
/* 80281090 0027DFD0  38 85 00 08 */	addi r4, r5, 8
/* 80281094 0027DFD4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80281098 0027DFD8  48 05 BB 11 */	bl JGadget_NS_TNodeLinkList_NS_Insert
/* 8028109C 0027DFDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802810A0 0027DFE0  7C 08 03 A6 */	mtlr r0
/* 802810A4 0027DFE4  38 21 00 20 */	addi r1, r1, 0x20
/* 802810A8 0027DFE8  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_removeObject
JStudio_NS_ctb_NS_TControl_NS_removeObject:
/* 802810AC 0027DFEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802810B0 0027DFF0  7C 08 02 A6 */	mflr r0
/* 802810B4 0027DFF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802810B8 0027DFF8  7C 66 1B 78 */	mr r6, r3
/* 802810BC 0027DFFC  38 A4 00 0C */	addi r5, r4, 0xc
/* 802810C0 0027E000  38 61 00 08 */	addi r3, r1, 8
/* 802810C4 0027E004  38 86 00 08 */	addi r4, r6, 8
/* 802810C8 0027E008  48 05 BB 0D */	bl JGadget_NS_TNodeLinkList_NS_Erase
/* 802810CC 0027E00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802810D0 0027E010  7C 08 03 A6 */	mtlr r0
/* 802810D4 0027E014  38 21 00 10 */	addi r1, r1, 0x10
/* 802810D8 0027E018  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_destroyObject
JStudio_NS_ctb_NS_TControl_NS_destroyObject:
/* 802810DC 0027E01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802810E0 0027E020  7C 08 02 A6 */	mflr r0
/* 802810E4 0027E024  90 01 00 14 */	stw r0, 0x14(r1)
/* 802810E8 0027E028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802810EC 0027E02C  93 C1 00 08 */	stw r30, 8(r1)
/* 802810F0 0027E030  7C 7E 1B 78 */	mr r30, r3
/* 802810F4 0027E034  7C 9F 23 78 */	mr r31, r4
/* 802810F8 0027E038  4B FF FF B5 */	bl JStudio_NS_ctb_NS_TControl_NS_removeObject
/* 802810FC 0027E03C  80 7E 00 04 */	lwz r3, 4(r30)
/* 80281100 0027E040  7F E4 FB 78 */	mr r4, r31
/* 80281104 0027E044  81 83 00 00 */	lwz r12, 0(r3)
/* 80281108 0027E048  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8028110C 0027E04C  7D 89 03 A6 */	mtctr r12
/* 80281110 0027E050  4E 80 04 21 */	bctrl 
/* 80281114 0027E054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281118 0027E058  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028111C 0027E05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281120 0027E060  7C 08 03 A6 */	mtlr r0
/* 80281124 0027E064  38 21 00 10 */	addi r1, r1, 0x10
/* 80281128 0027E068  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_destroyObject_all
JStudio_NS_ctb_NS_TControl_NS_destroyObject_all:
/* 8028112C 0027E06C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281130 0027E070  7C 08 02 A6 */	mflr r0
/* 80281134 0027E074  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281138 0027E078  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028113C 0027E07C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80281140 0027E080  7C 7E 1B 78 */	mr r30, r3
/* 80281144 0027E084  3B FE 00 0C */	addi r31, r30, 0xc
/* 80281148 0027E088  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8028114C 0027E08C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281150 0027E090  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80281154 0027E094  48 00 00 18 */	b lbl_8028116C
lbl_80281158:
/* 80281158 0027E098  80 7F 00 04 */	lwz r3, 4(r31)
/* 8028115C 0027E09C  90 61 00 08 */	stw r3, 8(r1)
/* 80281160 0027E0A0  38 83 FF F4 */	addi r4, r3, -12
/* 80281164 0027E0A4  7F C3 F3 78 */	mr r3, r30
/* 80281168 0027E0A8  4B FF FF 75 */	bl JStudio_NS_ctb_NS_TControl_NS_destroyObject
lbl_8028116C:
/* 8028116C 0027E0AC  80 1E 00 08 */	lwz r0, 8(r30)
/* 80281170 0027E0B0  28 00 00 00 */	cmplwi r0, 0
/* 80281174 0027E0B4  40 82 FF E4 */	bne lbl_80281158
/* 80281178 0027E0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028117C 0027E0BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80281180 0027E0C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281184 0027E0C4  7C 08 03 A6 */	mtlr r0
/* 80281188 0027E0C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028118C 0027E0CC  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_getObject
JStudio_NS_ctb_NS_TControl_NS_getObject:
/* 80281190 0027E0D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80281194 0027E0D4  7C 08 02 A6 */	mflr r0
/* 80281198 0027E0D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8028119C 0027E0DC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 802811A0 0027E0E0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 802811A4 0027E0E4  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802811A8 0027E0E8  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 802811AC 0027E0EC  38 03 00 0C */	addi r0, r3, 0xc
/* 802811B0 0027E0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802811B4 0027E0F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802811B8 0027E0F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802811BC 0027E0FC  90 81 00 40 */	stw r4, 0x40(r1)
/* 802811C0 0027E100  90 A1 00 44 */	stw r5, 0x44(r1)
/* 802811C4 0027E104  90 01 00 28 */	stw r0, 0x28(r1)
/* 802811C8 0027E108  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 802811CC 0027E10C  38 61 00 30 */	addi r3, r1, 0x30
/* 802811D0 0027E110  38 81 00 2C */	addi r4, r1, 0x2c
/* 802811D4 0027E114  38 A1 00 28 */	addi r5, r1, 0x28
/* 802811D8 0027E118  38 C1 00 40 */	addi r6, r1, 0x40
/* 802811DC 0027E11C  48 00 03 D9 */	bl std_NS_find_if
/* 802811E0 0027E120  80 61 00 30 */	lwz r3, 0x30(r1)
/* 802811E4 0027E124  90 61 00 34 */	stw r3, 0x34(r1)
/* 802811E8 0027E128  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802811EC 0027E12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802811F0 0027E130  90 61 00 20 */	stw r3, 0x20(r1)
/* 802811F4 0027E134  90 01 00 0C */	stw r0, 0xc(r1)
/* 802811F8 0027E138  90 61 00 08 */	stw r3, 8(r1)
/* 802811FC 0027E13C  7C 03 00 50 */	subf r0, r3, r0
/* 80281200 0027E140  7C 00 00 34 */	cntlzw r0, r0
/* 80281204 0027E144  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80281208 0027E148  7C 00 00 34 */	cntlzw r0, r0
/* 8028120C 0027E14C  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80281210 0027E150  41 82 00 0C */	beq lbl_8028121C
/* 80281214 0027E154  38 63 FF F4 */	addi r3, r3, -12
/* 80281218 0027E158  48 00 00 08 */	b lbl_80281220
lbl_8028121C:
/* 8028121C 0027E15C  38 60 00 00 */	li r3, 0
lbl_80281220:
/* 80281220 0027E160  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80281224 0027E164  7C 08 03 A6 */	mtlr r0
/* 80281228 0027E168  38 21 00 50 */	addi r1, r1, 0x50
/* 8028122C 0027E16C  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TControl_NS_getObject_index
JStudio_NS_ctb_NS_TControl_NS_getObject_index:
/* 80281230 0027E170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281234 0027E174  80 03 00 08 */	lwz r0, 8(r3)
/* 80281238 0027E178  7C 04 00 40 */	cmplw r4, r0
/* 8028123C 0027E17C  41 80 00 0C */	blt lbl_80281248
/* 80281240 0027E180  38 60 00 00 */	li r3, 0
/* 80281244 0027E184  48 00 00 28 */	b lbl_8028126C
lbl_80281248:
/* 80281248 0027E188  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8028124C 0027E18C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80281250 0027E190  90 61 00 08 */	stw r3, 8(r1)
/* 80281254 0027E194  7C 89 03 A6 */	mtctr r4
/* 80281258 0027E198  28 04 00 00 */	cmplwi r4, 0
/* 8028125C 0027E19C  41 82 00 0C */	beq lbl_80281268
lbl_80281260:
/* 80281260 0027E1A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80281264 0027E1A4  42 00 FF FC */	bdnz lbl_80281260
lbl_80281268:
/* 80281268 0027E1A8  38 63 FF F4 */	addi r3, r3, -12
lbl_8028126C:
/* 8028126C 0027E1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80281270 0027E1B0  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TFactory_NS_dtor
JStudio_NS_ctb_NS_TFactory_NS_dtor:
/* 80281274 0027E1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281278 0027E1B8  7C 08 02 A6 */	mflr r0
/* 8028127C 0027E1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281280 0027E1C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281284 0027E1C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80281288 0027E1C8  41 82 00 1C */	beq lbl_802812A4
/* 8028128C 0027E1CC  3C A0 80 3C */	lis r5, lbl_803C48A0@ha
/* 80281290 0027E1D0  38 05 48 A0 */	addi r0, r5, lbl_803C48A0@l
/* 80281294 0027E1D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80281298 0027E1D8  7C 80 07 35 */	extsh. r0, r4
/* 8028129C 0027E1DC  40 81 00 08 */	ble lbl_802812A4
/* 802812A0 0027E1E0  48 04 DA 9D */	bl __dl
lbl_802812A4:
/* 802812A4 0027E1E4  7F E3 FB 78 */	mr r3, r31
/* 802812A8 0027E1E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802812AC 0027E1EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802812B0 0027E1F0  7C 08 03 A6 */	mtlr r0
/* 802812B4 0027E1F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802812B8 0027E1F8  4E 80 00 20 */	blr 
/* 802812BC 0027E1FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802812C0 0027E200  7C 08 02 A6 */	mflr r0
/* 802812C4 0027E204  90 01 00 14 */	stw r0, 0x14(r1)
/* 802812C8 0027E208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802812CC 0027E20C  7C 9F 23 78 */	mr r31, r4
/* 802812D0 0027E210  80 64 00 00 */	lwz r3, 0(r4)
/* 802812D4 0027E214  A0 03 00 04 */	lhz r0, 4(r3)
/* 802812D8 0027E218  2C 00 00 01 */	cmpwi r0, 1
/* 802812DC 0027E21C  41 82 00 08 */	beq lbl_802812E4
/* 802812E0 0027E220  48 00 00 28 */	b lbl_80281308
lbl_802812E4:
/* 802812E4 0027E224  38 60 00 18 */	li r3, 0x18
/* 802812E8 0027E228  48 04 D9 65 */	bl __nw
/* 802812EC 0027E22C  7C 60 1B 79 */	or. r0, r3, r3
/* 802812F0 0027E230  41 82 00 10 */	beq lbl_80281300
/* 802812F4 0027E234  7F E4 FB 78 */	mr r4, r31
/* 802812F8 0027E238  4B FF FC 69 */	bl JStudio_NS_ctb_NS_TObject_TxyzRy
/* 802812FC 0027E23C  7C 60 1B 78 */	mr r0, r3
lbl_80281300:
/* 80281300 0027E240  7C 03 03 78 */	mr r3, r0
/* 80281304 0027E244  48 00 00 08 */	b lbl_8028130C
lbl_80281308:
/* 80281308 0027E248  38 60 00 00 */	li r3, 0
lbl_8028130C:
/* 8028130C 0027E24C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281310 0027E250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281314 0027E254  7C 08 03 A6 */	mtlr r0
/* 80281318 0027E258  38 21 00 10 */	addi r1, r1, 0x10
/* 8028131C 0027E25C  4E 80 00 20 */	blr 
/* 80281320 0027E260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281324 0027E264  7C 08 02 A6 */	mflr r0
/* 80281328 0027E268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028132C 0027E26C  28 04 00 00 */	cmplwi r4, 0
/* 80281330 0027E270  41 82 00 1C */	beq lbl_8028134C
/* 80281334 0027E274  7C 83 23 78 */	mr r3, r4
/* 80281338 0027E278  38 80 00 01 */	li r4, 1
/* 8028133C 0027E27C  81 83 00 08 */	lwz r12, 8(r3)
/* 80281340 0027E280  81 8C 00 08 */	lwz r12, 8(r12)
/* 80281344 0027E284  7D 89 03 A6 */	mtctr r12
/* 80281348 0027E288  4E 80 04 21 */	bctrl 
lbl_8028134C:
/* 8028134C 0027E28C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281350 0027E290  7C 08 03 A6 */	mtlr r0
/* 80281354 0027E294  38 21 00 10 */	addi r1, r1, 0x10
/* 80281358 0027E298  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TParse
JStudio_NS_ctb_NS_TParse:
/* 8028135C 0027E29C  3C A0 80 3C */	lis r5, lbl_803C488C@ha
/* 80281360 0027E2A0  38 05 48 8C */	addi r0, r5, lbl_803C488C@l
/* 80281364 0027E2A4  90 03 00 00 */	stw r0, 0(r3)
/* 80281368 0027E2A8  3C A0 80 3C */	lis r5, lbl_803C4878@ha
/* 8028136C 0027E2AC  38 05 48 78 */	addi r0, r5, lbl_803C4878@l
/* 80281370 0027E2B0  90 03 00 00 */	stw r0, 0(r3)
/* 80281374 0027E2B4  90 83 00 04 */	stw r4, 4(r3)
/* 80281378 0027E2B8  4E 80 00 20 */	blr 

.global JStudio_NS_ctb_NS_TParse_NS_dtor
JStudio_NS_ctb_NS_TParse_NS_dtor:
/* 8028137C 0027E2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281380 0027E2C0  7C 08 02 A6 */	mflr r0
/* 80281384 0027E2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281388 0027E2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028138C 0027E2CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80281390 0027E2D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80281394 0027E2D4  7C 9F 23 78 */	mr r31, r4
/* 80281398 0027E2D8  41 82 00 28 */	beq lbl_802813C0
/* 8028139C 0027E2DC  3C 80 80 3C */	lis r4, lbl_803C4878@ha
/* 802813A0 0027E2E0  38 04 48 78 */	addi r0, r4, lbl_803C4878@l
/* 802813A4 0027E2E4  90 1E 00 00 */	stw r0, 0(r30)
/* 802813A8 0027E2E8  38 80 00 00 */	li r4, 0
/* 802813AC 0027E2EC  48 05 B5 1D */	bl JGadget_NS_binary_NS_TParse_header_block_NS_dtor
/* 802813B0 0027E2F0  7F E0 07 35 */	extsh. r0, r31
/* 802813B4 0027E2F4  40 81 00 0C */	ble lbl_802813C0
/* 802813B8 0027E2F8  7F C3 F3 78 */	mr r3, r30
/* 802813BC 0027E2FC  48 04 D9 81 */	bl __dl
lbl_802813C0:
/* 802813C0 0027E300  7F C3 F3 78 */	mr r3, r30
/* 802813C4 0027E304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802813C8 0027E308  83 C1 00 08 */	lwz r30, 8(r1)
/* 802813CC 0027E30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802813D0 0027E310  7C 08 03 A6 */	mtlr r0
/* 802813D4 0027E314  38 21 00 10 */	addi r1, r1, 0x10
/* 802813D8 0027E318  4E 80 00 20 */	blr 
/* 802813DC 0027E31C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802813E0 0027E320  7C 08 02 A6 */	mflr r0
/* 802813E4 0027E324  90 01 00 14 */	stw r0, 0x14(r1)
/* 802813E8 0027E328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802813EC 0027E32C  83 E4 00 00 */	lwz r31, 0(r4)
/* 802813F0 0027E330  38 1F 00 10 */	addi r0, r31, 0x10
/* 802813F4 0027E334  90 04 00 00 */	stw r0, 0(r4)
/* 802813F8 0027E338  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802813FC 0027E33C  90 05 00 00 */	stw r0, 0(r5)
/* 80281400 0027E340  7F E3 FB 78 */	mr r3, r31
/* 80281404 0027E344  38 82 B9 F8 */	addi r4, r2, lbl_804553F8-_SDA2_BASE_
/* 80281408 0027E348  38 A0 00 04 */	li r5, 4
/* 8028140C 0027E34C  48 0E 4C 81 */	bl func_8036608C
/* 80281410 0027E350  2C 03 00 00 */	cmpwi r3, 0
/* 80281414 0027E354  41 82 00 0C */	beq lbl_80281420
/* 80281418 0027E358  38 60 00 00 */	li r3, 0
/* 8028141C 0027E35C  48 00 00 40 */	b lbl_8028145C
lbl_80281420:
/* 80281420 0027E360  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80281424 0027E364  28 00 FE FF */	cmplwi r0, 0xfeff
/* 80281428 0027E368  41 82 00 0C */	beq lbl_80281434
/* 8028142C 0027E36C  38 60 00 00 */	li r3, 0
/* 80281430 0027E370  48 00 00 2C */	b lbl_8028145C
lbl_80281434:
/* 80281434 0027E374  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80281438 0027E378  28 00 00 01 */	cmplwi r0, 1
/* 8028143C 0027E37C  40 80 00 0C */	bge lbl_80281448
/* 80281440 0027E380  38 60 00 00 */	li r3, 0
/* 80281444 0027E384  48 00 00 18 */	b lbl_8028145C
lbl_80281448:
/* 80281448 0027E388  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8028144C 0027E38C  38 00 00 01 */	li r0, 1
/* 80281450 0027E390  38 60 FF FF */	li r3, -1
/* 80281454 0027E394  7C 04 00 10 */	subfc r0, r4, r0
/* 80281458 0027E398  7C 63 01 90 */	subfze r3, r3
lbl_8028145C:
/* 8028145C 0027E39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80281460 0027E3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80281464 0027E3A4  7C 08 03 A6 */	mtlr r0
/* 80281468 0027E3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028146C 0027E3AC  4E 80 00 20 */	blr 
/* 80281470 0027E3B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281474 0027E3B4  7C 08 02 A6 */	mflr r0
/* 80281478 0027E3B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028147C 0027E3BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281480 0027E3C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80281484 0027E3C4  7C DE 33 78 */	mr r30, r6
/* 80281488 0027E3C8  80 C4 00 00 */	lwz r6, 0(r4)
/* 8028148C 0027E3CC  90 C1 00 08 */	stw r6, 8(r1)
/* 80281490 0027E3D0  80 06 00 00 */	lwz r0, 0(r6)
/* 80281494 0027E3D4  7C 06 02 14 */	add r0, r6, r0
/* 80281498 0027E3D8  90 04 00 00 */	stw r0, 0(r4)
/* 8028149C 0027E3DC  80 81 00 08 */	lwz r4, 8(r1)
/* 802814A0 0027E3E0  80 04 00 00 */	lwz r0, 0(r4)
/* 802814A4 0027E3E4  90 05 00 00 */	stw r0, 0(r5)
/* 802814A8 0027E3E8  83 E3 00 04 */	lwz r31, 4(r3)
/* 802814AC 0027E3EC  57 C0 06 F7 */	rlwinm. r0, r30, 0, 0x1b, 0x1b
/* 802814B0 0027E3F0  41 82 00 38 */	beq lbl_802814E8
/* 802814B4 0027E3F4  80 61 00 08 */	lwz r3, 8(r1)
/* 802814B8 0027E3F8  A0 03 00 06 */	lhz r0, 6(r3)
/* 802814BC 0027E3FC  38 80 00 00 */	li r4, 0
/* 802814C0 0027E400  28 00 00 00 */	cmplwi r0, 0
/* 802814C4 0027E404  41 82 00 08 */	beq lbl_802814CC
/* 802814C8 0027E408  38 83 00 08 */	addi r4, r3, 8
lbl_802814CC:
/* 802814CC 0027E40C  7F E3 FB 78 */	mr r3, r31
/* 802814D0 0027E410  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 802814D4 0027E414  4B FF FC BD */	bl JStudio_NS_ctb_NS_TControl_NS_getObject
/* 802814D8 0027E418  28 03 00 00 */	cmplwi r3, 0
/* 802814DC 0027E41C  41 82 00 0C */	beq lbl_802814E8
/* 802814E0 0027E420  38 60 00 01 */	li r3, 1
/* 802814E4 0027E424  48 00 00 58 */	b lbl_8028153C
lbl_802814E8:
/* 802814E8 0027E428  57 C0 06 B5 */	rlwinm. r0, r30, 0, 0x1a, 0x1a
/* 802814EC 0027E42C  41 82 00 0C */	beq lbl_802814F8
/* 802814F0 0027E430  38 60 00 01 */	li r3, 1
/* 802814F4 0027E434  48 00 00 48 */	b lbl_8028153C
lbl_802814F8:
/* 802814F8 0027E438  80 7F 00 04 */	lwz r3, 4(r31)
/* 802814FC 0027E43C  28 03 00 00 */	cmplwi r3, 0
/* 80281500 0027E440  40 82 00 0C */	bne lbl_8028150C
/* 80281504 0027E444  38 60 00 00 */	li r3, 0
/* 80281508 0027E448  48 00 00 34 */	b lbl_8028153C
lbl_8028150C:
/* 8028150C 0027E44C  38 81 00 08 */	addi r4, r1, 8
/* 80281510 0027E450  81 83 00 00 */	lwz r12, 0(r3)
/* 80281514 0027E454  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80281518 0027E458  7D 89 03 A6 */	mtctr r12
/* 8028151C 0027E45C  4E 80 04 21 */	bctrl 
/* 80281520 0027E460  7C 64 1B 79 */	or. r4, r3, r3
/* 80281524 0027E464  40 82 00 0C */	bne lbl_80281530
/* 80281528 0027E468  57 C3 D7 FE */	rlwinm r3, r30, 0x1a, 0x1f, 0x1f
/* 8028152C 0027E46C  48 00 00 10 */	b lbl_8028153C
lbl_80281530:
/* 80281530 0027E470  7F E3 FB 78 */	mr r3, r31
/* 80281534 0027E474  4B FF FB 2D */	bl JStudio_NS_ctb_NS_TControl_NS_appendObject
/* 80281538 0027E478  38 60 00 01 */	li r3, 1
lbl_8028153C:
/* 8028153C 0027E47C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281540 0027E480  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80281544 0027E484  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281548 0027E488  7C 08 03 A6 */	mtlr r0
/* 8028154C 0027E48C  38 21 00 20 */	addi r1, r1, 0x20
/* 80281550 0027E490  4E 80 00 20 */	blr 
/* 80281554 0027E494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80281558 0027E498  7C 08 02 A6 */	mflr r0
/* 8028155C 0027E49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80281560 0027E4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80281564 0027E4A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80281568 0027E4A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028156C 0027E4AC  7C 9F 23 78 */	mr r31, r4
/* 80281570 0027E4B0  41 82 00 28 */	beq lbl_80281598
/* 80281574 0027E4B4  3C 80 80 3C */	lis r4, lbl_803C48C0@ha
/* 80281578 0027E4B8  38 04 48 C0 */	addi r0, r4, lbl_803C48C0@l
/* 8028157C 0027E4BC  90 1E 00 08 */	stw r0, 8(r30)
/* 80281580 0027E4C0  38 80 00 00 */	li r4, 0
/* 80281584 0027E4C4  4B FF F9 95 */	bl JStudio_NS_ctb_NS_TObject_NS_dtor
/* 80281588 0027E4C8  7F E0 07 35 */	extsh. r0, r31
/* 8028158C 0027E4CC  40 81 00 0C */	ble lbl_80281598
/* 80281590 0027E4D0  7F C3 F3 78 */	mr r3, r30
/* 80281594 0027E4D4  48 04 D7 A9 */	bl __dl
lbl_80281598:
/* 80281598 0027E4D8  7F C3 F3 78 */	mr r3, r30
/* 8028159C 0027E4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802815A0 0027E4E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802815A4 0027E4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802815A8 0027E4E8  7C 08 03 A6 */	mtlr r0
/* 802815AC 0027E4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 802815B0 0027E4F0  4E 80 00 20 */	blr 

.global std_NS_find_if
std_NS_find_if:
/* 802815B4 0027E4F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802815B8 0027E4F8  7C 08 02 A6 */	mflr r0
/* 802815BC 0027E4FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 802815C0 0027E500  39 61 00 30 */	addi r11, r1, 0x30
/* 802815C4 0027E504  48 0E 0C 15 */	bl _savegpr_28
/* 802815C8 0027E508  7C 7C 1B 78 */	mr r28, r3
/* 802815CC 0027E50C  7C 9D 23 78 */	mr r29, r4
/* 802815D0 0027E510  7C BE 2B 78 */	mr r30, r5
/* 802815D4 0027E514  7C DF 33 78 */	mr r31, r6
/* 802815D8 0027E518  48 00 00 10 */	b lbl_802815E8
lbl_802815DC:
/* 802815DC 0027E51C  80 7D 00 00 */	lwz r3, 0(r29)
/* 802815E0 0027E520  80 03 00 00 */	lwz r0, 0(r3)
/* 802815E4 0027E524  90 1D 00 00 */	stw r0, 0(r29)
lbl_802815E8:
/* 802815E8 0027E528  80 7E 00 00 */	lwz r3, 0(r30)
/* 802815EC 0027E52C  90 61 00 14 */	stw r3, 0x14(r1)
/* 802815F0 0027E530  80 1D 00 00 */	lwz r0, 0(r29)
/* 802815F4 0027E534  90 01 00 10 */	stw r0, 0x10(r1)
/* 802815F8 0027E538  90 61 00 0C */	stw r3, 0xc(r1)
/* 802815FC 0027E53C  90 01 00 08 */	stw r0, 8(r1)
/* 80281600 0027E540  7C 00 18 50 */	subf r0, r0, r3
/* 80281604 0027E544  7C 00 00 34 */	cntlzw r0, r0
/* 80281608 0027E548  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 8028160C 0027E54C  40 82 00 1C */	bne lbl_80281628
/* 80281610 0027E550  80 7D 00 00 */	lwz r3, 0(r29)
/* 80281614 0027E554  38 63 FF F4 */	addi r3, r3, -12
/* 80281618 0027E558  7F E4 FB 78 */	mr r4, r31
/* 8028161C 0027E55C  48 00 73 6D */	bl JStudio_NS_object_NS_TIDData_NS_isEqual
/* 80281620 0027E560  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80281624 0027E564  41 82 FF B8 */	beq lbl_802815DC
lbl_80281628:
/* 80281628 0027E568  80 1D 00 00 */	lwz r0, 0(r29)
/* 8028162C 0027E56C  90 1C 00 00 */	stw r0, 0(r28)
/* 80281630 0027E570  39 61 00 30 */	addi r11, r1, 0x30
/* 80281634 0027E574  48 0E 0B F1 */	bl _restgpr_28
/* 80281638 0027E578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8028163C 0027E57C  7C 08 03 A6 */	mtlr r0
/* 80281640 0027E580  38 21 00 30 */	addi r1, r1, 0x30
/* 80281644 0027E584  4E 80 00 20 */	blr 
