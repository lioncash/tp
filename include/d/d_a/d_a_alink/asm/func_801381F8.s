/* 801381F8 00135138  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801381FC 0013513C  7C 08 02 A6 */ mflr r0
/* 80138200 00135140  90 01 00 24 */ stw r0, 0x24(r1)
/* 80138204 00135144  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80138208 00135148  7C 7F 1B 78 */ mr r31, r3
/* 8013820C 0013514C  4B F7 C7 FD */ bl daAlink_c_NS_setTalkStatus
/* 80138210 00135150  7F E3 FB 78 */ mr r3, r31
/* 80138214 00135154  38 80 00 01 */ li r4, 1
/* 80138218 00135158  4B F7 F9 E1 */ bl daAlink_c_NS_orderTalk
/* 8013821C 0013515C  2C 03 00 00 */ cmpwi r3, 0
/* 80138220 00135160  41 82 00 0C */ beq lbl_8013822C
/* 80138224 00135164  38 60 00 01 */ li r3, 1
/* 80138228 00135168  48 00 01 9C */ b lbl_801383C4
lbl_8013822C:
/* 8013822C 0013516C  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 80138230 00135170  28 03 00 00 */ cmplwi r3, 0
/* 80138234 00135174  41 82 00 44 */ beq lbl_80138278
/* 80138238 00135178  A8 03 00 08 */ lha r0, 8(r3)
/* 8013823C 0013517C  2C 00 02 1F */ cmpwi r0, 0x21f
/* 80138240 00135180  40 82 00 38 */ bne lbl_80138278
/* 80138244 00135184  7F E3 FB 78 */ mr r3, r31
/* 80138248 00135188  38 80 00 39 */ li r4, 0x39
/* 8013824C 0013518C  4B F7 B0 05 */ bl daAlink_c_NS_setDoStatus
/* 80138250 00135190  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 80138254 00135194  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80138258 00135198  41 82 00 E8 */ beq lbl_80138340
/* 8013825C 0013519C  80 7F 27 F4 */ lwz r3, 0x27f4(r31)
/* 80138260 001351A0  38 80 00 00 */ li r4, 0
/* 80138264 001351A4  4B EE 48 E5 */ bl fopAcM_setCarryNow
/* 80138268 001351A8  80 1F 05 80 */ lwz r0, 0x580(r31)
/* 8013826C 001351AC  60 00 80 00 */ ori r0, r0, 0x8000
/* 80138270 001351B0  90 1F 05 80 */ stw r0, 0x580(r31)
/* 80138274 001351B4  48 00 00 CC */ b lbl_80138340
lbl_80138278:
/* 80138278 001351B8  80 1F 05 70 */ lwz r0, 0x570(r31)
/* 8013827C 001351BC  54 00 05 EF */ rlwinm. r0, r0, 0, 0x17, 0x17
/* 80138280 001351C0  41 82 00 C0 */ beq lbl_80138340
/* 80138284 001351C4  A8 1F 30 D2 */ lha r0, 0x30d2(r31)
/* 80138288 001351C8  2C 00 00 00 */ cmpwi r0, 0
/* 8013828C 001351CC  40 82 00 B4 */ bne lbl_80138340
/* 80138290 001351D0  7F E3 FB 78 */ mr r3, r31
/* 80138294 001351D4  38 80 00 39 */ li r4, 0x39
/* 80138298 001351D8  4B FF 05 75 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 8013829C 001351DC  2C 03 00 00 */ cmpwi r3, 0
/* 801382A0 001351E0  40 82 00 A0 */ bne lbl_80138340
/* 801382A4 001351E4  A0 1F 2F E8 */ lhz r0, 0x2fe8(r31)
/* 801382A8 001351E8  28 00 01 29 */ cmplwi r0, 0x129
/* 801382AC 001351EC  40 82 00 94 */ bne lbl_80138340
/* 801382B0 001351F0  7F E3 FB 78 */ mr r3, r31
/* 801382B4 001351F4  38 80 00 09 */ li r4, 9
/* 801382B8 001351F8  4B F7 AF 99 */ bl daAlink_c_NS_setDoStatus
/* 801382BC 001351FC  88 1F 2F 8D */ lbz r0, 0x2f8d(r31)
/* 801382C0 00135200  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 801382C4 00135204  41 82 00 7C */ beq lbl_80138340
/* 801382C8 00135208  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 801382CC 0013520C  64 00 00 40 */ oris r0, r0, 0x40
/* 801382D0 00135210  90 1F 05 74 */ stw r0, 0x574(r31)
/* 801382D4 00135214  88 1F 2F C7 */ lbz r0, 0x2fc7(r31)
/* 801382D8 00135218  28 00 00 01 */ cmplwi r0, 1
/* 801382DC 0013521C  41 82 00 0C */ beq lbl_801382E8
/* 801382E0 00135220  28 00 00 03 */ cmplwi r0, 3
/* 801382E4 00135224  40 82 00 18 */ bne lbl_801382FC
lbl_801382E8:
/* 801382E8 00135228  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 801382EC 0013522C  38 63 EE 28 */ addi r3, r3, lbl_8038EE28@l
/* 801382F0 00135230  A8 03 00 5A */ lha r0, 0x5a(r3)
/* 801382F4 00135234  B0 1F 30 D0 */ sth r0, 0x30d0(r31)
/* 801382F8 00135238  48 00 00 30 */ b lbl_80138328
lbl_801382FC:
/* 801382FC 0013523C  28 00 00 02 */ cmplwi r0, 2
/* 80138300 00135240  40 82 00 18 */ bne lbl_80138318
/* 80138304 00135244  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 80138308 00135248  38 63 EE 28 */ addi r3, r3, lbl_8038EE28@l
/* 8013830C 0013524C  A8 03 00 5E */ lha r0, 0x5e(r3)
/* 80138310 00135250  B0 1F 30 D0 */ sth r0, 0x30d0(r31)
/* 80138314 00135254  48 00 00 14 */ b lbl_80138328
lbl_80138318:
/* 80138318 00135258  3C 60 80 39 */ lis r3, lbl_8038EE28@ha
/* 8013831C 0013525C  38 63 EE 28 */ addi r3, r3, lbl_8038EE28@l
/* 80138320 00135260  A8 03 00 56 */ lha r0, 0x56(r3)
/* 80138324 00135264  B0 1F 30 D0 */ sth r0, 0x30d0(r31)
lbl_80138328:
/* 80138328 00135268  7F E3 FB 78 */ mr r3, r31
/* 8013832C 0013526C  38 80 00 39 */ li r4, 0x39
/* 80138330 00135270  3C A0 80 39 */ lis r5, lbl_8038F8B4@ha
/* 80138334 00135274  38 A5 F8 B4 */ addi r5, r5, lbl_8038F8B4@l
/* 80138338 00135278  38 A5 00 28 */ addi r5, r5, 0x28
/* 8013833C 0013527C  4B FF 15 0D */ bl daAlink_c_NS_setSingleAnimeWolfParam
lbl_80138340:
/* 80138340 00135280  7F E3 FB 78 */ mr r3, r31
/* 80138344 00135284  38 80 00 39 */ li r4, 0x39
/* 80138348 00135288  4B FF 04 C5 */ bl daAlink_c_NS_checkUnderMove0BckNoArcWolf
/* 8013834C 0013528C  2C 03 00 00 */ cmpwi r3, 0
/* 80138350 00135290  41 82 00 70 */ beq lbl_801383C0
/* 80138354 00135294  38 7F 1F D0 */ addi r3, r31, 0x1fd0
/* 80138358 00135298  C0 22 93 74 */ lfs f1, lbl_80452D74-_SDA2_BASE_(r2)
/* 8013835C 0013529C  48 1F 00 D1 */ bl J3DFrameCtrl_NS_checkPass
/* 80138360 001352A0  2C 03 00 00 */ cmpwi r3, 0
/* 80138364 001352A4  41 82 00 5C */ beq lbl_801383C0
/* 80138368 001352A8  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8013836C 001352AC  38 83 9A 20 */ addi r4, r3, lbl_80439A20@l
/* 80138370 001352B0  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80138374 001352B4  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80138378 001352B8  7C 64 02 14 */ add r3, r4, r0
/* 8013837C 001352BC  C0 03 00 04 */ lfs f0, 4(r3)
/* 80138380 001352C0  C0 3F 04 D8 */ lfs f1, 0x4d8(r31)
/* 80138384 001352C4  C0 42 93 B4 */ lfs f2, lbl_80452DB4-_SDA2_BASE_(r2)
/* 80138388 001352C8  EC 02 00 32 */ fmuls f0, f2, f0
/* 8013838C 001352CC  EC 81 00 2A */ fadds f4, f1, f0
/* 80138390 001352D0  C0 7F 04 D4 */ lfs f3, 0x4d4(r31)
/* 80138394 001352D4  7C 04 04 2E */ lfsx f0, r4, r0
/* 80138398 001352D8  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 8013839C 001352DC  EC 02 00 32 */ fmuls f0, f2, f0
/* 801383A0 001352E0  EC 01 00 2A */ fadds f0, f1, f0
/* 801383A4 001352E4  D0 01 00 08 */ stfs f0, 8(r1)
/* 801383A8 001352E8  D0 61 00 0C */ stfs f3, 0xc(r1)
/* 801383AC 001352EC  D0 81 00 10 */ stfs f4, 0x10(r1)
/* 801383B0 001352F0  38 61 00 08 */ addi r3, r1, 8
/* 801383B4 001352F4  C0 22 94 AC */ lfs f1, lbl_80452EAC-_SDA2_BASE_(r2)
/* 801383B8 001352F8  38 80 00 00 */ li r4, 0
/* 801383BC 001352FC  4B EE 74 C1 */ bl fopKyM_createWpillar
lbl_801383C0:
/* 801383C0 00135300  38 60 00 00 */ li r3, 0
lbl_801383C4:
/* 801383C4 00135304  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 801383C8 00135308  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801383CC 0013530C  7C 08 03 A6 */ mtlr r0
/* 801383D0 00135310  38 21 00 20 */ addi r1, r1, 0x20
/* 801383D4 00135314  4E 80 00 20 */ blr