/* 80202240 001FF180  94 21 FC A0 */ stwu r1, -0x360(r1)
/* 80202244 001FF184  7C 08 02 A6 */ mflr r0
/* 80202248 001FF188  90 01 03 64 */ stw r0, 0x364(r1)
/* 8020224C 001FF18C  DB E1 03 50 */ stfd f31, 0x350(r1)
/* 80202250 001FF190  F3 E1 03 58 */ psq_st f31, 856(r1), 0, 0
/* 80202254 001FF194  DB C1 03 40 */ stfd f30, 0x340(r1)
/* 80202258 001FF198  F3 C1 03 48 */ psq_st f30, 840(r1), 0, 0
/* 8020225C 001FF19C  DB A1 03 30 */ stfd f29, 0x330(r1)
/* 80202260 001FF1A0  F3 A1 03 38 */ psq_st f29, 824(r1), 0, 0
/* 80202264 001FF1A4  39 61 03 30 */ addi r11, r1, 0x330
/* 80202268 001FF1A8  48 15 FF 55 */ bl func_803621BC
/* 8020226C 001FF1AC  7C 7E 1B 78 */ mr r30, r3
/* 80202270 001FF1B0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80202274 001FF1B4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80202278 001FF1B8  82 A3 5F 50 */ lwz r21, 0x5f50(r3)
/* 8020227C 001FF1BC  7E A3 AB 78 */ mr r3, r21
/* 80202280 001FF1C0  81 95 00 00 */ lwz r12, 0(r21)
/* 80202284 001FF1C4  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 80202288 001FF1C8  7D 89 03 A6 */ mtctr r12
/* 8020228C 001FF1CC  4E 80 04 21 */ bctrl
/* 80202290 001FF1D0  80 7E 00 08 */ lwz r3, 8(r30)
/* 80202294 001FF1D4  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 80202298 001FF1D8  FC 40 08 90 */ fmr f2, f1
/* 8020229C 001FF1DC  7E A4 AB 78 */ mr r4, r21
/* 802022A0 001FF1E0  48 0F 6C 35 */ bl J2DScreen_NS_draw
/* 802022A4 001FF1E4  80 7E 00 0C */ lwz r3, 0xc(r30)
/* 802022A8 001FF1E8  28 03 00 00 */ cmplwi r3, 0
/* 802022AC 001FF1EC  41 82 00 14 */ beq lbl_802022C0
/* 802022B0 001FF1F0  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 802022B4 001FF1F4  FC 40 08 90 */ fmr f2, f1
/* 802022B8 001FF1F8  7E A4 AB 78 */ mr r4, r21
/* 802022BC 001FF1FC  48 0F 6C 19 */ bl J2DScreen_NS_draw
lbl_802022C0:
/* 802022C0 001FF200  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802022C4 001FF204  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 802022C8 001FF208  88 03 00 F1 */ lbz r0, 0xf1(r3)
/* 802022CC 001FF20C  28 00 00 00 */ cmplwi r0, 0
/* 802022D0 001FF210  41 82 00 18 */ beq lbl_802022E8
/* 802022D4 001FF214  80 7E 00 10 */ lwz r3, 0x10(r30)
/* 802022D8 001FF218  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 802022DC 001FF21C  FC 40 08 90 */ fmr f2, f1
/* 802022E0 001FF220  7E A4 AB 78 */ mr r4, r21
/* 802022E4 001FF224  48 0F 6B F1 */ bl J2DScreen_NS_draw
lbl_802022E8:
/* 802022E8 001FF228  A0 1E 04 B2 */ lhz r0, 0x4b2(r30)
/* 802022EC 001FF22C  28 00 FF FF */ cmplwi r0, 0xffff
/* 802022F0 001FF230  41 82 00 94 */ beq lbl_80202384
/* 802022F4 001FF234  80 7E 00 E4 */ lwz r3, 0xe4(r30)
/* 802022F8 001FF238  80 63 00 04 */ lwz r3, 4(r3)
/* 802022FC 001FF23C  48 0F E3 5D */ bl J2DTextBox_NS_getStringPtr
/* 80202300 001FF240  7C 64 1B 78 */ mr r4, r3
/* 80202304 001FF244  38 61 00 E0 */ addi r3, r1, 0xe0
/* 80202308 001FF248  48 16 68 25 */ bl strcpy
/* 8020230C 001FF24C  80 7E 00 14 */ lwz r3, 0x14(r30)
/* 80202310 001FF250  C0 22 AD 48 */ lfs f1, lbl_80454748-_SDA2_BASE_(r2)
/* 80202314 001FF254  FC 40 08 90 */ fmr f2, f1
/* 80202318 001FF258  7E A4 AB 78 */ mr r4, r21
/* 8020231C 001FF25C  48 0F 6B B9 */ bl J2DScreen_NS_draw
/* 80202320 001FF260  80 7E 00 E4 */ lwz r3, 0xe4(r30)
/* 80202324 001FF264  80 A3 00 04 */ lwz r5, 4(r3)
/* 80202328 001FF268  80 7E 00 04 */ lwz r3, 4(r30)
/* 8020232C 001FF26C  A0 9E 04 B2 */ lhz r4, 0x4b2(r30)
/* 80202330 001FF270  38 C0 00 00 */ li r6, 0
/* 80202334 001FF274  38 E0 00 00 */ li r7, 0
/* 80202338 001FF278  39 00 00 00 */ li r8, 0
/* 8020233C 001FF27C  39 20 00 08 */ li r9, 8
/* 80202340 001FF280  81 83 00 00 */ lwz r12, 0(r3)
/* 80202344 001FF284  81 8C 00 08 */ lwz r12, 8(r12)
/* 80202348 001FF288  7D 89 03 A6 */ mtctr r12
/* 8020234C 001FF28C  4E 80 04 21 */ bctrl
/* 80202350 001FF290  80 7E 00 E4 */ lwz r3, 0xe4(r30)
/* 80202354 001FF294  80 83 00 04 */ lwz r4, 4(r3)
/* 80202358 001FF298  80 7E 00 04 */ lwz r3, 4(r30)
/* 8020235C 001FF29C  C0 22 AD 58 */ lfs f1, lbl_80454758-_SDA2_BASE_(r2)
/* 80202360 001FF2A0  81 83 00 00 */ lwz r12, 0(r3)
/* 80202364 001FF2A4  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 80202368 001FF2A8  7D 89 03 A6 */ mtctr r12
/* 8020236C 001FF2AC  4E 80 04 21 */ bctrl
/* 80202370 001FF2B0  80 7E 00 E4 */ lwz r3, 0xe4(r30)
/* 80202374 001FF2B4  80 63 00 04 */ lwz r3, 4(r3)
/* 80202378 001FF2B8  48 0F E2 E1 */ bl J2DTextBox_NS_getStringPtr
/* 8020237C 001FF2BC  38 81 00 E0 */ addi r4, r1, 0xe0
/* 80202380 001FF2C0  48 16 67 AD */ bl strcpy
lbl_80202384:
/* 80202384 001FF2C4  3B 60 00 00 */ li r27, 0
/* 80202388 001FF2C8  3B 40 00 00 */ li r26, 0
/* 8020238C 001FF2CC  3B 00 00 00 */ li r24, 0
/* 80202390 001FF2D0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80202394 001FF2D4  3B 23 61 C0 */ addi r25, r3, g_dComIfG_gameInfo@l
/* 80202398 001FF2D8  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020239C 001FF2DC  3B E3 EB C8 */ addi r31, r3, lbl_8042EBC8@l
/* 802023A0 001FF2E0  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 802023A4 001FF2E4  3B A3 01 88 */ addi r29, r3, lbl_80430188@l
/* 802023A8 001FF2E8  C3 A2 AD 48 */ lfs f29, lbl_80454748-_SDA2_BASE_(r2)
lbl_802023AC:
/* 802023AC 001FF2EC  3A C0 00 00 */ li r22, 0
/* 802023B0 001FF2F0  3A E0 00 00 */ li r23, 0
/* 802023B4 001FF2F4  7E BE DA 14 */ add r21, r30, r27
/* 802023B8 001FF2F8  88 75 04 BE */ lbz r3, 0x4be(r21)
/* 802023BC 001FF2FC  28 03 00 00 */ cmplwi r3, 0
/* 802023C0 001FF300  40 82 01 4C */ bne lbl_8020250C
/* 802023C4 001FF304  88 19 5E 4A */ lbz r0, 0x5e4a(r25)
/* 802023C8 001FF308  54 00 07 7B */ rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802023CC 001FF30C  41 82 01 40 */ beq lbl_8020250C
/* 802023D0 001FF310  3A E0 00 01 */ li r23, 1
/* 802023D4 001FF314  38 B8 04 B8 */ addi r5, r24, 0x4b8
/* 802023D8 001FF318  7C 1E 2A AE */ lhax r0, r30, r5
/* 802023DC 001FF31C  2C 00 00 00 */ cmpwi r0, 0
/* 802023E0 001FF320  40 82 00 24 */ bne lbl_80202404
/* 802023E4 001FF324  88 15 04 BC */ lbz r0, 0x4bc(r21)
/* 802023E8 001FF328  28 00 00 00 */ cmplwi r0, 0
/* 802023EC 001FF32C  40 82 00 18 */ bne lbl_80202404
/* 802023F0 001FF330  C0 22 AD 5C */ lfs f1, lbl_8045475C-_SDA2_BASE_(r2)
/* 802023F4 001FF334  C0 1F 0E 58 */ lfs f0, 0xe58(r31)
/* 802023F8 001FF338  EC 01 00 28 */ fsubs f0, f1, f0
/* 802023FC 001FF33C  38 1A 02 E8 */ addi r0, r26, 0x2e8
/* 80202400 001FF340  7C 1E 05 2E */ stfsx f0, r30, r0
lbl_80202404:
/* 80202404 001FF344  A8 9F 0E 60 */ lha r4, 0xe60(r31)
/* 80202408 001FF348  7C 80 0E 70 */ srawi r0, r4, 1
/* 8020240C 001FF34C  7C 00 01 94 */ addze r0, r0
/* 80202410 001FF350  7C 06 07 34 */ extsh r6, r0
/* 80202414 001FF354  7C 7E 2A AE */ lhax r3, r30, r5
/* 80202418 001FF358  38 03 00 01 */ addi r0, r3, 1
/* 8020241C 001FF35C  7C 1E 2B 2E */ sthx r0, r30, r5
/* 80202420 001FF360  7C 1E 2A AE */ lhax r0, r30, r5
/* 80202424 001FF364  7C 00 20 00 */ cmpw r0, r4
/* 80202428 001FF368  41 80 00 28 */ blt lbl_80202450
/* 8020242C 001FF36C  38 60 00 00 */ li r3, 0
/* 80202430 001FF370  7C 7E 2B 2E */ sthx r3, r30, r5
/* 80202434 001FF374  88 15 04 BC */ lbz r0, 0x4bc(r21)
/* 80202438 001FF378  28 00 00 00 */ cmplwi r0, 0
/* 8020243C 001FF37C  40 82 00 10 */ bne lbl_8020244C
/* 80202440 001FF380  38 00 00 01 */ li r0, 1
/* 80202444 001FF384  98 15 04 BC */ stb r0, 0x4bc(r21)
/* 80202448 001FF388  48 00 00 08 */ b lbl_80202450
lbl_8020244C:
/* 8020244C 001FF38C  98 75 04 BC */ stb r3, 0x4bc(r21)
lbl_80202450:
/* 80202450 001FF390  7C 1E 2A AE */ lhax r0, r30, r5
/* 80202454 001FF394  7C 06 00 00 */ cmpw r6, r0
/* 80202458 001FF398  40 80 00 3C */ bge lbl_80202494
/* 8020245C 001FF39C  C8 42 AD 68 */ lfd f2, lbl_80454768-_SDA2_BASE_(r2)
/* 80202460 001FF3A0  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 80202464 001FF3A4  90 01 02 E4 */ stw r0, 0x2e4(r1)
/* 80202468 001FF3A8  3C 60 43 30 */ lis r3, 0x4330
/* 8020246C 001FF3AC  90 61 02 E0 */ stw r3, 0x2e0(r1)
/* 80202470 001FF3B0  C8 01 02 E0 */ lfd f0, 0x2e0(r1)
/* 80202474 001FF3B4  EC 20 10 28 */ fsubs f1, f0, f2
/* 80202478 001FF3B8  6C C0 80 00 */ xoris r0, r6, 0x8000
/* 8020247C 001FF3BC  90 01 02 EC */ stw r0, 0x2ec(r1)
/* 80202480 001FF3C0  90 61 02 E8 */ stw r3, 0x2e8(r1)
/* 80202484 001FF3C4  C8 01 02 E8 */ lfd f0, 0x2e8(r1)
/* 80202488 001FF3C8  EC 00 10 28 */ fsubs f0, f0, f2
/* 8020248C 001FF3CC  EC 41 00 24 */ fdivs f2, f1, f0
/* 80202490 001FF3D0  48 00 00 3C */ b lbl_802024CC
lbl_80202494:
/* 80202494 001FF3D4  7C 00 20 50 */ subf r0, r0, r4
/* 80202498 001FF3D8  C8 42 AD 68 */ lfd f2, lbl_80454768-_SDA2_BASE_(r2)
/* 8020249C 001FF3DC  6C 00 80 00 */ xoris r0, r0, 0x8000
/* 802024A0 001FF3E0  90 01 02 F4 */ stw r0, 0x2f4(r1)
/* 802024A4 001FF3E4  3C 60 43 30 */ lis r3, 0x4330
/* 802024A8 001FF3E8  90 61 02 F0 */ stw r3, 0x2f0(r1)
/* 802024AC 001FF3EC  C8 01 02 F0 */ lfd f0, 0x2f0(r1)
/* 802024B0 001FF3F0  EC 20 10 28 */ fsubs f1, f0, f2
/* 802024B4 001FF3F4  6C C0 80 00 */ xoris r0, r6, 0x8000
/* 802024B8 001FF3F8  90 01 02 FC */ stw r0, 0x2fc(r1)
/* 802024BC 001FF3FC  90 61 02 F8 */ stw r3, 0x2f8(r1)
/* 802024C0 001FF400  C8 01 02 F8 */ lfd f0, 0x2f8(r1)
/* 802024C4 001FF404  EC 00 10 28 */ fsubs f0, f0, f2
/* 802024C8 001FF408  EC 41 00 24 */ fdivs f2, f1, f0
lbl_802024CC:
/* 802024CC 001FF40C  C0 22 AD 4C */ lfs f1, lbl_8045474C-_SDA2_BASE_(r2)
/* 802024D0 001FF410  C0 1F 0E 5C */ lfs f0, 0xe5c(r31)
/* 802024D4 001FF414  EC 00 08 28 */ fsubs f0, f0, f1
/* 802024D8 001FF418  EC 00 00 B2 */ fmuls f0, f0, f2
/* 802024DC 001FF41C  EC 21 00 2A */ fadds f1, f1, f0
/* 802024E0 001FF420  C0 1E 04 F4 */ lfs f0, 0x4f4(r30)
/* 802024E4 001FF424  EC 00 00 72 */ fmuls f0, f0, f1
/* 802024E8 001FF428  80 7E 00 1C */ lwz r3, 0x1c(r30)
/* 802024EC 001FF42C  80 63 00 04 */ lwz r3, 4(r3)
/* 802024F0 001FF430  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 802024F4 001FF434  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 802024F8 001FF438  81 83 00 00 */ lwz r12, 0(r3)
/* 802024FC 001FF43C  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 80202500 001FF440  7D 89 03 A6 */ mtctr r12
/* 80202504 001FF444  4E 80 04 21 */ bctrl
/* 80202508 001FF448  48 00 00 80 */ b lbl_80202588
lbl_8020250C:
/* 8020250C 001FF44C  28 03 00 00 */ cmplwi r3, 0
/* 80202510 001FF450  40 82 00 2C */ bne lbl_8020253C
/* 80202514 001FF454  88 19 5E 24 */ lbz r0, 0x5e24(r25)
/* 80202518 001FF458  28 00 00 3B */ cmplwi r0, 0x3b
/* 8020251C 001FF45C  41 82 00 14 */ beq lbl_80202530
/* 80202520 001FF460  28 00 00 3F */ cmplwi r0, 0x3f
/* 80202524 001FF464  41 82 00 0C */ beq lbl_80202530
/* 80202528 001FF468  28 00 00 40 */ cmplwi r0, 0x40
/* 8020252C 001FF46C  40 82 00 10 */ bne lbl_8020253C
lbl_80202530:
/* 80202530 001FF470  A0 1D 00 AC */ lhz r0, 0xac(r29)
/* 80202534 001FF474  54 00 07 FF */ clrlwi. r0, r0, 0x1f
/* 80202538 001FF478  40 82 00 24 */ bne lbl_8020255C
lbl_8020253C:
/* 8020253C 001FF47C  28 03 00 01 */ cmplwi r3, 1
/* 80202540 001FF480  40 82 00 48 */ bne lbl_80202588
/* 80202544 001FF484  88 19 5E 1D */ lbz r0, 0x5e1d(r25)
/* 80202548 001FF488  28 00 00 3A */ cmplwi r0, 0x3a
/* 8020254C 001FF48C  40 82 00 3C */ bne lbl_80202588
/* 80202550 001FF490  A0 1D 00 AC */ lhz r0, 0xac(r29)
/* 80202554 001FF494  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80202558 001FF498  41 82 00 30 */ beq lbl_80202588
lbl_8020255C:
/* 8020255C 001FF49C  3A C0 00 01 */ li r22, 1
/* 80202560 001FF4A0  38 1A 02 E8 */ addi r0, r26, 0x2e8
/* 80202564 001FF4A4  7C 3E 04 2E */ lfsx f1, r30, r0
/* 80202568 001FF4A8  C0 02 AD 48 */ lfs f0, lbl_80454748-_SDA2_BASE_(r2)
/* 8020256C 001FF4AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80202570 001FF4B0  4C 40 13 82 */ cror 2, 0, 2
/* 80202574 001FF4B4  40 82 00 14 */ bne lbl_80202588
/* 80202578 001FF4B8  C0 22 AD 5C */ lfs f1, lbl_8045475C-_SDA2_BASE_(r2)
/* 8020257C 001FF4BC  C0 1F 0E 40 */ lfs f0, 0xe40(r31)
/* 80202580 001FF4C0  EC 01 00 28 */ fsubs f0, f1, f0
/* 80202584 001FF4C4  7C 1E 05 2E */ stfsx f0, r30, r0
lbl_80202588:
/* 80202588 001FF4C8  7F 9E D2 14 */ add r28, r30, r26
/* 8020258C 001FF4CC  C0 1C 02 E8 */ lfs f0, 0x2e8(r28)
/* 80202590 001FF4D0  FC 00 E8 40 */ fcmpo cr0, f0, f29
/* 80202594 001FF4D4  40 81 04 BC */ ble lbl_80202A50
/* 80202598 001FF4D8  38 60 00 00 */ li r3, 0
/* 8020259C 001FF4DC  88 15 04 BE */ lbz r0, 0x4be(r21)
/* 802025A0 001FF4E0  28 00 00 00 */ cmplwi r0, 0
/* 802025A4 001FF4E4  40 82 00 2C */ bne lbl_802025D0
/* 802025A8 001FF4E8  80 9E 00 1C */ lwz r4, 0x1c(r30)
/* 802025AC 001FF4EC  38 61 00 D4 */ addi r3, r1, 0xd4
/* 802025B0 001FF4F0  80 A4 00 04 */ lwz r5, 4(r4)
/* 802025B4 001FF4F4  38 C0 00 00 */ li r6, 0
/* 802025B8 001FF4F8  38 E0 00 00 */ li r7, 0
/* 802025BC 001FF4FC  48 05 29 01 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 802025C0 001FF500  C3 E1 00 D4 */ lfs f31, 0xd4(r1)
/* 802025C4 001FF504  C3 C1 00 D8 */ lfs f30, 0xd8(r1)
/* 802025C8 001FF508  38 60 00 01 */ li r3, 1
/* 802025CC 001FF50C  48 00 02 38 */ b lbl_80202804
lbl_802025D0:
/* 802025D0 001FF510  28 00 00 01 */ cmplwi r0, 1
/* 802025D4 001FF514  40 82 00 2C */ bne lbl_80202600
/* 802025D8 001FF518  80 9E 00 24 */ lwz r4, 0x24(r30)
/* 802025DC 001FF51C  38 61 00 C8 */ addi r3, r1, 0xc8
/* 802025E0 001FF520  80 A4 00 04 */ lwz r5, 4(r4)
/* 802025E4 001FF524  38 C0 00 00 */ li r6, 0
/* 802025E8 001FF528  38 E0 00 00 */ li r7, 0
/* 802025EC 001FF52C  48 05 28 D1 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 802025F0 001FF530  C3 E1 00 C8 */ lfs f31, 0xc8(r1)
/* 802025F4 001FF534  C3 C1 00 CC */ lfs f30, 0xcc(r1)
/* 802025F8 001FF538  38 60 00 01 */ li r3, 1
/* 802025FC 001FF53C  48 00 02 08 */ b lbl_80202804
lbl_80202600:
/* 80202600 001FF540  28 00 00 02 */ cmplwi r0, 2
/* 80202604 001FF544  40 82 00 2C */ bne lbl_80202630
/* 80202608 001FF548  80 9E 00 20 */ lwz r4, 0x20(r30)
/* 8020260C 001FF54C  38 61 00 BC */ addi r3, r1, 0xbc
/* 80202610 001FF550  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202614 001FF554  38 C0 00 00 */ li r6, 0
/* 80202618 001FF558  38 E0 00 00 */ li r7, 0
/* 8020261C 001FF55C  48 05 28 A1 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202620 001FF560  C3 E1 00 BC */ lfs f31, 0xbc(r1)
/* 80202624 001FF564  C3 C1 00 C0 */ lfs f30, 0xc0(r1)
/* 80202628 001FF568  38 60 00 01 */ li r3, 1
/* 8020262C 001FF56C  48 00 01 D8 */ b lbl_80202804
lbl_80202630:
/* 80202630 001FF570  28 00 00 03 */ cmplwi r0, 3
/* 80202634 001FF574  40 82 00 2C */ bne lbl_80202660
/* 80202638 001FF578  80 9E 00 28 */ lwz r4, 0x28(r30)
/* 8020263C 001FF57C  38 61 00 B0 */ addi r3, r1, 0xb0
/* 80202640 001FF580  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202644 001FF584  38 C0 00 00 */ li r6, 0
/* 80202648 001FF588  38 E0 00 00 */ li r7, 0
/* 8020264C 001FF58C  48 05 28 71 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202650 001FF590  C3 E1 00 B0 */ lfs f31, 0xb0(r1)
/* 80202654 001FF594  C3 C1 00 B4 */ lfs f30, 0xb4(r1)
/* 80202658 001FF598  38 60 00 01 */ li r3, 1
/* 8020265C 001FF59C  48 00 01 A8 */ b lbl_80202804
lbl_80202660:
/* 80202660 001FF5A0  28 00 00 04 */ cmplwi r0, 4
/* 80202664 001FF5A4  40 82 00 2C */ bne lbl_80202690
/* 80202668 001FF5A8  80 9E 00 2C */ lwz r4, 0x2c(r30)
/* 8020266C 001FF5AC  38 61 00 A4 */ addi r3, r1, 0xa4
/* 80202670 001FF5B0  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202674 001FF5B4  38 C0 00 00 */ li r6, 0
/* 80202678 001FF5B8  38 E0 00 00 */ li r7, 0
/* 8020267C 001FF5BC  48 05 28 41 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202680 001FF5C0  C3 E1 00 A4 */ lfs f31, 0xa4(r1)
/* 80202684 001FF5C4  C3 C1 00 A8 */ lfs f30, 0xa8(r1)
/* 80202688 001FF5C8  38 60 00 01 */ li r3, 1
/* 8020268C 001FF5CC  48 00 01 78 */ b lbl_80202804
lbl_80202690:
/* 80202690 001FF5D0  28 00 00 05 */ cmplwi r0, 5
/* 80202694 001FF5D4  40 82 00 2C */ bne lbl_802026C0
/* 80202698 001FF5D8  80 9E 00 30 */ lwz r4, 0x30(r30)
/* 8020269C 001FF5DC  38 61 00 98 */ addi r3, r1, 0x98
/* 802026A0 001FF5E0  80 A4 00 04 */ lwz r5, 4(r4)
/* 802026A4 001FF5E4  38 C0 00 00 */ li r6, 0
/* 802026A8 001FF5E8  38 E0 00 00 */ li r7, 0
/* 802026AC 001FF5EC  48 05 28 11 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 802026B0 001FF5F0  C3 E1 00 98 */ lfs f31, 0x98(r1)
/* 802026B4 001FF5F4  C3 C1 00 9C */ lfs f30, 0x9c(r1)
/* 802026B8 001FF5F8  38 60 00 01 */ li r3, 1
/* 802026BC 001FF5FC  48 00 01 48 */ b lbl_80202804
lbl_802026C0:
/* 802026C0 001FF600  28 00 00 06 */ cmplwi r0, 6
/* 802026C4 001FF604  40 82 00 2C */ bne lbl_802026F0
/* 802026C8 001FF608  80 9E 00 34 */ lwz r4, 0x34(r30)
/* 802026CC 001FF60C  38 61 00 8C */ addi r3, r1, 0x8c
/* 802026D0 001FF610  80 A4 00 04 */ lwz r5, 4(r4)
/* 802026D4 001FF614  38 C0 00 00 */ li r6, 0
/* 802026D8 001FF618  38 E0 00 00 */ li r7, 0
/* 802026DC 001FF61C  48 05 27 E1 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 802026E0 001FF620  C3 E1 00 8C */ lfs f31, 0x8c(r1)
/* 802026E4 001FF624  C3 C1 00 90 */ lfs f30, 0x90(r1)
/* 802026E8 001FF628  38 60 00 01 */ li r3, 1
/* 802026EC 001FF62C  48 00 01 18 */ b lbl_80202804
lbl_802026F0:
/* 802026F0 001FF630  28 00 00 07 */ cmplwi r0, 7
/* 802026F4 001FF634  40 82 00 2C */ bne lbl_80202720
/* 802026F8 001FF638  80 9E 00 38 */ lwz r4, 0x38(r30)
/* 802026FC 001FF63C  38 61 00 80 */ addi r3, r1, 0x80
/* 80202700 001FF640  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202704 001FF644  38 C0 00 00 */ li r6, 0
/* 80202708 001FF648  38 E0 00 00 */ li r7, 0
/* 8020270C 001FF64C  48 05 27 B1 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202710 001FF650  C3 E1 00 80 */ lfs f31, 0x80(r1)
/* 80202714 001FF654  C3 C1 00 84 */ lfs f30, 0x84(r1)
/* 80202718 001FF658  38 60 00 01 */ li r3, 1
/* 8020271C 001FF65C  48 00 00 E8 */ b lbl_80202804
lbl_80202720:
/* 80202720 001FF660  28 00 00 08 */ cmplwi r0, 8
/* 80202724 001FF664  40 82 00 2C */ bne lbl_80202750
/* 80202728 001FF668  80 9E 00 3C */ lwz r4, 0x3c(r30)
/* 8020272C 001FF66C  38 61 00 74 */ addi r3, r1, 0x74
/* 80202730 001FF670  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202734 001FF674  38 C0 00 00 */ li r6, 0
/* 80202738 001FF678  38 E0 00 00 */ li r7, 0
/* 8020273C 001FF67C  48 05 27 81 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202740 001FF680  C3 E1 00 74 */ lfs f31, 0x74(r1)
/* 80202744 001FF684  C3 C1 00 78 */ lfs f30, 0x78(r1)
/* 80202748 001FF688  38 60 00 01 */ li r3, 1
/* 8020274C 001FF68C  48 00 00 B8 */ b lbl_80202804
lbl_80202750:
/* 80202750 001FF690  28 00 00 09 */ cmplwi r0, 9
/* 80202754 001FF694  41 82 00 B0 */ beq lbl_80202804
/* 80202758 001FF698  28 00 00 0A */ cmplwi r0, 0xa
/* 8020275C 001FF69C  41 82 00 A8 */ beq lbl_80202804
/* 80202760 001FF6A0  28 00 00 0B */ cmplwi r0, 0xb
/* 80202764 001FF6A4  41 82 00 A0 */ beq lbl_80202804
/* 80202768 001FF6A8  28 00 00 0C */ cmplwi r0, 0xc
/* 8020276C 001FF6AC  41 82 00 98 */ beq lbl_80202804
/* 80202770 001FF6B0  28 00 00 0D */ cmplwi r0, 0xd
/* 80202774 001FF6B4  40 82 00 2C */ bne lbl_802027A0
/* 80202778 001FF6B8  80 9E 00 50 */ lwz r4, 0x50(r30)
/* 8020277C 001FF6BC  38 61 00 68 */ addi r3, r1, 0x68
/* 80202780 001FF6C0  80 A4 00 04 */ lwz r5, 4(r4)
/* 80202784 001FF6C4  38 C0 00 00 */ li r6, 0
/* 80202788 001FF6C8  38 E0 00 00 */ li r7, 0
/* 8020278C 001FF6CC  48 05 27 31 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 80202790 001FF6D0  C3 E1 00 68 */ lfs f31, 0x68(r1)
/* 80202794 001FF6D4  C3 C1 00 6C */ lfs f30, 0x6c(r1)
/* 80202798 001FF6D8  38 60 00 01 */ li r3, 1
/* 8020279C 001FF6DC  48 00 00 68 */ b lbl_80202804
lbl_802027A0:
/* 802027A0 001FF6E0  28 00 00 0E */ cmplwi r0, 0xe
/* 802027A4 001FF6E4  41 82 00 60 */ beq lbl_80202804
/* 802027A8 001FF6E8  28 00 00 0F */ cmplwi r0, 0xf
/* 802027AC 001FF6EC  41 82 00 58 */ beq lbl_80202804
/* 802027B0 001FF6F0  28 00 00 10 */ cmplwi r0, 0x10
/* 802027B4 001FF6F4  41 82 00 50 */ beq lbl_80202804
/* 802027B8 001FF6F8  28 00 00 11 */ cmplwi r0, 0x11
/* 802027BC 001FF6FC  41 82 00 48 */ beq lbl_80202804
/* 802027C0 001FF700  28 00 00 12 */ cmplwi r0, 0x12
/* 802027C4 001FF704  41 82 00 40 */ beq lbl_80202804
/* 802027C8 001FF708  28 00 00 13 */ cmplwi r0, 0x13
/* 802027CC 001FF70C  41 82 00 38 */ beq lbl_80202804
/* 802027D0 001FF710  28 00 00 14 */ cmplwi r0, 0x14
/* 802027D4 001FF714  41 82 00 30 */ beq lbl_80202804
/* 802027D8 001FF718  28 00 00 15 */ cmplwi r0, 0x15
/* 802027DC 001FF71C  40 82 00 28 */ bne lbl_80202804
/* 802027E0 001FF720  80 9E 00 70 */ lwz r4, 0x70(r30)
/* 802027E4 001FF724  38 61 00 5C */ addi r3, r1, 0x5c
/* 802027E8 001FF728  80 A4 00 04 */ lwz r5, 4(r4)
/* 802027EC 001FF72C  38 C0 00 00 */ li r6, 0
/* 802027F0 001FF730  38 E0 00 00 */ li r7, 0
/* 802027F4 001FF734  48 05 26 C9 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 802027F8 001FF738  C3 E1 00 5C */ lfs f31, 0x5c(r1)
/* 802027FC 001FF73C  C3 C1 00 60 */ lfs f30, 0x60(r1)
/* 80202800 001FF740  38 60 00 01 */ li r3, 1
lbl_80202804:
/* 80202804 001FF744  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80202808 001FF748  41 82 02 48 */ beq lbl_80202A50
/* 8020280C 001FF74C  56 C0 06 3F */ clrlwi. r0, r22, 0x18
/* 80202810 001FF750  41 82 01 20 */ beq lbl_80202930
/* 80202814 001FF754  C0 22 AD 5C */ lfs f1, lbl_8045475C-_SDA2_BASE_(r2)
/* 80202818 001FF758  C0 1C 02 E8 */ lfs f0, 0x2e8(r28)
/* 8020281C 001FF75C  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 80202820 001FF760  40 82 00 38 */ bne lbl_80202858
/* 80202824 001FF764  38 00 00 77 */ li r0, 0x77
/* 80202828 001FF768  90 01 00 08 */ stw r0, 8(r1)
/* 8020282C 001FF76C  80 6D 8D E8 */ lwz r3, lbl_80451368-_SDA_BASE_(r13)
/* 80202830 001FF770  38 81 00 08 */ addi r4, r1, 8
/* 80202834 001FF774  38 A0 00 00 */ li r5, 0
/* 80202838 001FF778  38 C0 00 00 */ li r6, 0
/* 8020283C 001FF77C  38 E0 00 00 */ li r7, 0
/* 80202840 001FF780  C0 22 AD 4C */ lfs f1, lbl_8045474C-_SDA2_BASE_(r2)
/* 80202844 001FF784  FC 40 08 90 */ fmr f2, f1
/* 80202848 001FF788  C0 62 AD 58 */ lfs f3, lbl_80454758-_SDA2_BASE_(r2)
/* 8020284C 001FF78C  FC 80 18 90 */ fmr f4, f3
/* 80202850 001FF790  39 00 00 00 */ li r8, 0
/* 80202854 001FF794  48 0A 91 31 */ bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80202858:
/* 80202858 001FF798  80 79 5D AC */ lwz r3, 0x5dac(r25)
/* 8020285C 001FF79C  38 00 00 00 */ li r0, 0
/* 80202860 001FF7A0  88 63 05 6A */ lbz r3, 0x56a(r3)
/* 80202864 001FF7A4  28 03 00 00 */ cmplwi r3, 0
/* 80202868 001FF7A8  41 82 00 10 */ beq lbl_80202878
/* 8020286C 001FF7AC  28 03 00 26 */ cmplwi r3, 0x26
/* 80202870 001FF7B0  40 80 00 08 */ bge lbl_80202878
/* 80202874 001FF7B4  38 00 00 01 */ li r0, 1
lbl_80202878:
/* 80202878 001FF7B8  54 00 06 3F */ clrlwi. r0, r0, 0x18
/* 8020287C 001FF7BC  41 82 00 5C */ beq lbl_802028D8
/* 80202880 001FF7C0  80 1F 0E 38 */ lwz r0, 0xe38(r31)
/* 80202884 001FF7C4  90 01 00 4C */ stw r0, 0x4c(r1)
/* 80202888 001FF7C8  80 1F 0E 3C */ lwz r0, 0xe3c(r31)
/* 8020288C 001FF7CC  90 01 00 50 */ stw r0, 0x50(r1)
/* 80202890 001FF7D0  80 1F 0E 30 */ lwz r0, 0xe30(r31)
/* 80202894 001FF7D4  90 01 00 54 */ stw r0, 0x54(r1)
/* 80202898 001FF7D8  80 1F 0E 34 */ lwz r0, 0xe34(r31)
/* 8020289C 001FF7DC  90 01 00 58 */ stw r0, 0x58(r1)
/* 802028A0 001FF7E0  80 7D 00 1C */ lwz r3, 0x1c(r29)
/* 802028A4 001FF7E4  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 802028A8 001FF7E8  FC 20 F8 90 */ fmr f1, f31
/* 802028AC 001FF7EC  FC 40 F0 90 */ fmr f2, f30
/* 802028B0 001FF7F0  38 9C 02 E8 */ addi r4, r28, 0x2e8
/* 802028B4 001FF7F4  C0 62 AD 60 */ lfs f3, lbl_80454760-_SDA2_BASE_(r2)
/* 802028B8 001FF7F8  38 A1 00 58 */ addi r5, r1, 0x58
/* 802028BC 001FF7FC  38 C1 00 54 */ addi r6, r1, 0x54
/* 802028C0 001FF800  38 E1 00 50 */ addi r7, r1, 0x50
/* 802028C4 001FF804  39 01 00 4C */ addi r8, r1, 0x4c
/* 802028C8 001FF808  C0 9F 0E 40 */ lfs f4, 0xe40(r31)
/* 802028CC 001FF80C  39 20 00 03 */ li r9, 3
/* 802028D0 001FF810  48 01 18 0D */ bl dMeter2Draw_c_NS_drawPikari_X1_
/* 802028D4 001FF814  48 00 01 7C */ b lbl_80202A50
lbl_802028D8:
/* 802028D8 001FF818  80 1F 0E 38 */ lwz r0, 0xe38(r31)
/* 802028DC 001FF81C  90 01 00 3C */ stw r0, 0x3c(r1)
/* 802028E0 001FF820  80 1F 0E 3C */ lwz r0, 0xe3c(r31)
/* 802028E4 001FF824  90 01 00 40 */ stw r0, 0x40(r1)
/* 802028E8 001FF828  80 1F 0E 30 */ lwz r0, 0xe30(r31)
/* 802028EC 001FF82C  90 01 00 44 */ stw r0, 0x44(r1)
/* 802028F0 001FF830  80 1F 0E 34 */ lwz r0, 0xe34(r31)
/* 802028F4 001FF834  90 01 00 48 */ stw r0, 0x48(r1)
/* 802028F8 001FF838  80 7D 00 1C */ lwz r3, 0x1c(r29)
/* 802028FC 001FF83C  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 80202900 001FF840  FC 20 F8 90 */ fmr f1, f31
/* 80202904 001FF844  FC 40 F0 90 */ fmr f2, f30
/* 80202908 001FF848  38 9C 02 E8 */ addi r4, r28, 0x2e8
/* 8020290C 001FF84C  C0 7F 0E 2C */ lfs f3, 0xe2c(r31)
/* 80202910 001FF850  38 A1 00 48 */ addi r5, r1, 0x48
/* 80202914 001FF854  38 C1 00 44 */ addi r6, r1, 0x44
/* 80202918 001FF858  38 E1 00 40 */ addi r7, r1, 0x40
/* 8020291C 001FF85C  39 01 00 3C */ addi r8, r1, 0x3c
/* 80202920 001FF860  C0 9F 0E 40 */ lfs f4, 0xe40(r31)
/* 80202924 001FF864  39 20 00 03 */ li r9, 3
/* 80202928 001FF868  48 01 17 B5 */ bl dMeter2Draw_c_NS_drawPikari_X1_
/* 8020292C 001FF86C  48 00 01 24 */ b lbl_80202A50
lbl_80202930:
/* 80202930 001FF870  56 E0 06 3F */ clrlwi. r0, r23, 0x18
/* 80202934 001FF874  41 82 00 5C */ beq lbl_80202990
/* 80202938 001FF878  80 1F 0E 50 */ lwz r0, 0xe50(r31)
/* 8020293C 001FF87C  90 01 00 2C */ stw r0, 0x2c(r1)
/* 80202940 001FF880  80 1F 0E 54 */ lwz r0, 0xe54(r31)
/* 80202944 001FF884  90 01 00 30 */ stw r0, 0x30(r1)
/* 80202948 001FF888  80 1F 0E 48 */ lwz r0, 0xe48(r31)
/* 8020294C 001FF88C  90 01 00 34 */ stw r0, 0x34(r1)
/* 80202950 001FF890  80 1F 0E 4C */ lwz r0, 0xe4c(r31)
/* 80202954 001FF894  90 01 00 38 */ stw r0, 0x38(r1)
/* 80202958 001FF898  80 7D 00 1C */ lwz r3, 0x1c(r29)
/* 8020295C 001FF89C  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 80202960 001FF8A0  FC 20 F8 90 */ fmr f1, f31
/* 80202964 001FF8A4  FC 40 F0 90 */ fmr f2, f30
/* 80202968 001FF8A8  38 9C 02 E8 */ addi r4, r28, 0x2e8
/* 8020296C 001FF8AC  C0 7F 0E 44 */ lfs f3, 0xe44(r31)
/* 80202970 001FF8B0  38 A1 00 38 */ addi r5, r1, 0x38
/* 80202974 001FF8B4  38 C1 00 34 */ addi r6, r1, 0x34
/* 80202978 001FF8B8  38 E1 00 30 */ addi r7, r1, 0x30
/* 8020297C 001FF8BC  39 01 00 2C */ addi r8, r1, 0x2c
/* 80202980 001FF8C0  C0 9F 0E 58 */ lfs f4, 0xe58(r31)
/* 80202984 001FF8C4  39 20 00 00 */ li r9, 0
/* 80202988 001FF8C8  48 01 17 55 */ bl dMeter2Draw_c_NS_drawPikari_X1_
/* 8020298C 001FF8CC  48 00 00 C4 */ b lbl_80202A50
lbl_80202990:
/* 80202990 001FF8D0  7F C3 F3 78 */ mr r3, r30
/* 80202994 001FF8D4  7F 64 DB 78 */ mr r4, r27
/* 80202998 001FF8D8  48 00 43 D9 */ bl dMeterButton_c_NS_isFastSet
/* 8020299C 001FF8DC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 802029A0 001FF8E0  41 82 00 5C */ beq lbl_802029FC
/* 802029A4 001FF8E4  80 1F 0E 20 */ lwz r0, 0xe20(r31)
/* 802029A8 001FF8E8  90 01 00 1C */ stw r0, 0x1c(r1)
/* 802029AC 001FF8EC  80 1F 0E 24 */ lwz r0, 0xe24(r31)
/* 802029B0 001FF8F0  90 01 00 20 */ stw r0, 0x20(r1)
/* 802029B4 001FF8F4  80 1F 0E 18 */ lwz r0, 0xe18(r31)
/* 802029B8 001FF8F8  90 01 00 24 */ stw r0, 0x24(r1)
/* 802029BC 001FF8FC  80 1F 0E 1C */ lwz r0, 0xe1c(r31)
/* 802029C0 001FF900  90 01 00 28 */ stw r0, 0x28(r1)
/* 802029C4 001FF904  80 7D 00 1C */ lwz r3, 0x1c(r29)
/* 802029C8 001FF908  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 802029CC 001FF90C  FC 20 F8 90 */ fmr f1, f31
/* 802029D0 001FF910  FC 40 F0 90 */ fmr f2, f30
/* 802029D4 001FF914  38 9C 02 E8 */ addi r4, r28, 0x2e8
/* 802029D8 001FF918  C0 7F 0E 14 */ lfs f3, 0xe14(r31)
/* 802029DC 001FF91C  38 A1 00 28 */ addi r5, r1, 0x28
/* 802029E0 001FF920  38 C1 00 24 */ addi r6, r1, 0x24
/* 802029E4 001FF924  38 E1 00 20 */ addi r7, r1, 0x20
/* 802029E8 001FF928  39 01 00 1C */ addi r8, r1, 0x1c
/* 802029EC 001FF92C  C0 9F 0E 28 */ lfs f4, 0xe28(r31)
/* 802029F0 001FF930  39 20 00 00 */ li r9, 0
/* 802029F4 001FF934  48 01 16 E9 */ bl dMeter2Draw_c_NS_drawPikari_X1_
/* 802029F8 001FF938  48 00 00 58 */ b lbl_80202A50
lbl_802029FC:
/* 802029FC 001FF93C  80 1F 0E 08 */ lwz r0, 0xe08(r31)
/* 80202A00 001FF940  90 01 00 0C */ stw r0, 0xc(r1)
/* 80202A04 001FF944  80 1F 0E 0C */ lwz r0, 0xe0c(r31)
/* 80202A08 001FF948  90 01 00 10 */ stw r0, 0x10(r1)
/* 80202A0C 001FF94C  80 1F 0E 00 */ lwz r0, 0xe00(r31)
/* 80202A10 001FF950  90 01 00 14 */ stw r0, 0x14(r1)
/* 80202A14 001FF954  80 1F 0E 04 */ lwz r0, 0xe04(r31)
/* 80202A18 001FF958  90 01 00 18 */ stw r0, 0x18(r1)
/* 80202A1C 001FF95C  80 7D 00 1C */ lwz r3, 0x1c(r29)
/* 80202A20 001FF960  80 63 01 0C */ lwz r3, 0x10c(r3)
/* 80202A24 001FF964  FC 20 F8 90 */ fmr f1, f31
/* 80202A28 001FF968  FC 40 F0 90 */ fmr f2, f30
/* 80202A2C 001FF96C  38 9C 02 E8 */ addi r4, r28, 0x2e8
/* 80202A30 001FF970  C0 7F 0D FC */ lfs f3, 0xdfc(r31)
/* 80202A34 001FF974  38 A1 00 18 */ addi r5, r1, 0x18
/* 80202A38 001FF978  38 C1 00 14 */ addi r6, r1, 0x14
/* 80202A3C 001FF97C  38 E1 00 10 */ addi r7, r1, 0x10
/* 80202A40 001FF980  39 01 00 0C */ addi r8, r1, 0xc
/* 80202A44 001FF984  C0 9F 0E 10 */ lfs f4, 0xe10(r31)
/* 80202A48 001FF988  39 20 00 00 */ li r9, 0
/* 80202A4C 001FF98C  48 01 16 91 */ bl dMeter2Draw_c_NS_drawPikari_X1_
lbl_80202A50:
/* 80202A50 001FF990  3B 7B 00 01 */ addi r27, r27, 1
/* 80202A54 001FF994  2C 1B 00 02 */ cmpwi r27, 2
/* 80202A58 001FF998  3B 5A 00 04 */ addi r26, r26, 4
/* 80202A5C 001FF99C  3B 18 00 02 */ addi r24, r24, 2
/* 80202A60 001FF9A0  41 80 F9 4C */ blt lbl_802023AC
/* 80202A64 001FF9A4  38 00 00 00 */ li r0, 0
/* 80202A68 001FF9A8  B0 1D 00 AC */ sth r0, 0xac(r29)
/* 80202A6C 001FF9AC  E3 E1 03 58 */ psq_l f31, 856(r1), 0, 0
/* 80202A70 001FF9B0  CB E1 03 50 */ lfd f31, 0x350(r1)
/* 80202A74 001FF9B4  E3 C1 03 48 */ psq_l f30, 840(r1), 0, 0
/* 80202A78 001FF9B8  CB C1 03 40 */ lfd f30, 0x340(r1)
/* 80202A7C 001FF9BC  E3 A1 03 38 */ psq_l f29, 824(r1), 0, 0
/* 80202A80 001FF9C0  CB A1 03 30 */ lfd f29, 0x330(r1)
/* 80202A84 001FF9C4  39 61 03 30 */ addi r11, r1, 0x330
/* 80202A88 001FF9C8  48 15 F7 81 */ bl func_80362208
/* 80202A8C 001FF9CC  80 01 03 64 */ lwz r0, 0x364(r1)
/* 80202A90 001FF9D0  7C 08 03 A6 */ mtlr r0
/* 80202A94 001FF9D4  38 21 03 60 */ addi r1, r1, 0x360
/* 80202A98 001FF9D8  4E 80 00 20 */ blr
