/* 8021A71C 0021765C  94 21 FF A0 */ stwu r1, -0x60(r1)
/* 8021A720 00217660  7C 08 02 A6 */ mflr r0
/* 8021A724 00217664  90 01 00 64 */ stw r0, 0x64(r1)
/* 8021A728 00217668  39 61 00 60 */ addi r11, r1, 0x60
/* 8021A72C 0021766C  48 14 7A A1 */ bl func_803621CC
/* 8021A730 00217670  7C 79 1B 78 */ mr r25, r3
/* 8021A734 00217674  7C 9A 23 78 */ mr r26, r4
/* 8021A738 00217678  7C BB 2B 78 */ mr r27, r5
/* 8021A73C 0021767C  54 A0 06 3E */ clrlwi r0, r5, 0x18
/* 8021A740 00217680  28 00 00 53 */ cmplwi r0, 0x53
/* 8021A744 00217684  40 82 00 08 */ bne lbl_8021A74C
/* 8021A748 00217688  3B 60 00 43 */ li r27, 0x43
lbl_8021A74C:
/* 8021A74C 0021768C  7F F9 D2 14 */ add r31, r25, r26
/* 8021A750 00217690  88 1F 07 6C */ lbz r0, 0x76c(r31)
/* 8021A754 00217694  28 00 00 00 */ cmplwi r0, 0
/* 8021A758 00217698  40 82 00 10 */ bne lbl_8021A768
/* 8021A75C 0021769C  38 00 00 01 */ li r0, 1
/* 8021A760 002176A0  98 1F 07 6C */ stb r0, 0x76c(r31)
/* 8021A764 002176A4  48 00 00 0C */ b lbl_8021A770
lbl_8021A768:
/* 8021A768 002176A8  38 00 00 00 */ li r0, 0
/* 8021A76C 002176AC  98 1F 07 6C */ stb r0, 0x76c(r31)
lbl_8021A770:
/* 8021A770 002176B0  57 5E 10 3A */ slwi r30, r26, 2
/* 8021A774 002176B4  7F B9 F2 14 */ add r29, r25, r30
/* 8021A778 002176B8  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A77C 002176BC  80 C3 00 04 */ lwz r6, 4(r3)
/* 8021A780 002176C0  57 48 20 36 */ slwi r8, r26, 4
/* 8021A784 002176C4  7F 99 42 14 */ add r28, r25, r8
/* 8021A788 002176C8  88 1F 07 6C */ lbz r0, 0x76c(r31)
/* 8021A78C 002176CC  54 07 18 38 */ slwi r7, r0, 3
/* 8021A790 002176D0  3B 9C 04 F4 */ addi r28, r28, 0x4f4
/* 8021A794 002176D4  7C BC 38 2E */ lwzx r5, r28, r7
/* 8021A798 002176D8  38 00 00 00 */ li r0, 0
/* 8021A79C 002176DC  90 01 00 08 */ stw r0, 8(r1)
/* 8021A7A0 002176E0  90 01 00 0C */ stw r0, 0xc(r1)
/* 8021A7A4 002176E4  38 00 FF FF */ li r0, -1
/* 8021A7A8 002176E8  90 01 00 10 */ stw r0, 0x10(r1)
/* 8021A7AC 002176EC  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8021A7B0 002176F0  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8021A7B4 002176F4  7F 64 DB 78 */ mr r4, r27
/* 8021A7B8 002176F8  7C 19 42 14 */ add r0, r25, r8
/* 8021A7BC 002176FC  7C E0 3A 14 */ add r7, r0, r7
/* 8021A7C0 00217700  80 E7 04 F8 */ lwz r7, 0x4f8(r7)
/* 8021A7C4 00217704  81 1D 05 18 */ lwz r8, 0x518(r29)
/* 8021A7C8 00217708  39 20 00 00 */ li r9, 0
/* 8021A7CC 0021770C  39 40 00 00 */ li r10, 0
/* 8021A7D0 00217710  48 00 27 39 */ bl dMeter2Info_c_NS_readItemTexture
/* 8021A7D4 00217714  2C 03 00 01 */ cmpwi r3, 1
/* 8021A7D8 00217718  41 81 00 14 */ bgt lbl_8021A7EC
/* 8021A7DC 0021771C  38 00 00 00 */ li r0, 0
/* 8021A7E0 00217720  80 7D 05 18 */ lwz r3, 0x518(r29)
/* 8021A7E4 00217724  98 03 00 B0 */ stb r0, 0xb0(r3)
/* 8021A7E8 00217728  48 00 00 10 */ b lbl_8021A7F8
lbl_8021A7EC:
/* 8021A7EC 0021772C  38 00 00 01 */ li r0, 1
/* 8021A7F0 00217730  80 7D 05 18 */ lwz r3, 0x518(r29)
/* 8021A7F4 00217734  98 03 00 B0 */ stb r0, 0xb0(r3)
lbl_8021A7F8:
/* 8021A7F8 00217738  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8021A7FC 0021773C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8021A800 00217740  88 03 05 68 */ lbz r0, 0x568(r3)
/* 8021A804 00217744  28 00 00 01 */ cmplwi r0, 1
/* 8021A808 00217748  40 82 00 2C */ bne lbl_8021A834
/* 8021A80C 0021774C  88 03 05 69 */ lbz r0, 0x569(r3)
/* 8021A810 00217750  C8 22 AE C0 */ lfd f1, lbl_804548C0-_SDA2_BASE_(r2)
/* 8021A814 00217754  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8021A818 00217758  3C 00 43 30 */ lis r0, 0x4330
/* 8021A81C 0021775C  90 01 00 18 */ stw r0, 0x18(r1)
/* 8021A820 00217760  C8 01 00 18 */ lfd f0, 0x18(r1)
/* 8021A824 00217764  EC 20 08 28 */ fsubs f1, f0, f1
/* 8021A828 00217768  C0 02 AE D8 */ lfs f0, lbl_804548D8-_SDA2_BASE_(r2)
/* 8021A82C 0021776C  EC 81 00 24 */ fdivs f4, f1, f0
/* 8021A830 00217770  48 00 00 3C */ b lbl_8021A86C
lbl_8021A834:
/* 8021A834 00217774  3C 60 80 3B */ lis r3, lbl_803AC5A0@ha
/* 8021A838 00217778  38 63 C5 A0 */ addi r3, r3, lbl_803AC5A0@l
/* 8021A83C 0021777C  57 60 06 3E */ clrlwi r0, r27, 0x18
/* 8021A840 00217780  1C 00 00 18 */ mulli r0, r0, 0x18
/* 8021A844 00217784  7C 63 02 14 */ add r3, r3, r0
/* 8021A848 00217788  88 03 00 12 */ lbz r0, 0x12(r3)
/* 8021A84C 0021778C  C8 22 AE C0 */ lfd f1, lbl_804548C0-_SDA2_BASE_(r2)
/* 8021A850 00217790  90 01 00 24 */ stw r0, 0x24(r1)
/* 8021A854 00217794  3C 00 43 30 */ lis r0, 0x4330
/* 8021A858 00217798  90 01 00 20 */ stw r0, 0x20(r1)
/* 8021A85C 0021779C  C8 01 00 20 */ lfd f0, 0x20(r1)
/* 8021A860 002177A0  EC 20 08 28 */ fsubs f1, f0, f1
/* 8021A864 002177A4  C0 02 AE D8 */ lfs f0, lbl_804548D8-_SDA2_BASE_(r2)
/* 8021A868 002177A8  EC 81 00 24 */ fdivs f4, f1, f0
lbl_8021A86C:
/* 8021A86C 002177AC  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A870 002177B0  C0 23 00 34 */ lfs f1, 0x34(r3)
/* 8021A874 002177B4  88 1F 07 6C */ lbz r0, 0x76c(r31)
/* 8021A878 002177B8  54 00 18 38 */ slwi r0, r0, 3
/* 8021A87C 002177BC  7C 7C 00 2E */ lwzx r3, r28, r0
/* 8021A880 002177C0  A0 03 00 02 */ lhz r0, 2(r3)
/* 8021A884 002177C4  C8 42 AE C0 */ lfd f2, lbl_804548C0-_SDA2_BASE_(r2)
/* 8021A888 002177C8  90 01 00 2C */ stw r0, 0x2c(r1)
/* 8021A88C 002177CC  3C 80 43 30 */ lis r4, 0x4330
/* 8021A890 002177D0  90 81 00 28 */ stw r4, 0x28(r1)
/* 8021A894 002177D4  C8 01 00 28 */ lfd f0, 0x28(r1)
/* 8021A898 002177D8  EC 00 10 28 */ fsubs f0, f0, f2
/* 8021A89C 002177DC  EC 00 00 72 */ fmuls f0, f0, f1
/* 8021A8A0 002177E0  C0 22 AE DC */ lfs f1, lbl_804548DC-_SDA2_BASE_(r2)
/* 8021A8A4 002177E4  EC 00 08 24 */ fdivs f0, f0, f1
/* 8021A8A8 002177E8  EC 04 00 32 */ fmuls f0, f4, f0
/* 8021A8AC 002177EC  7F 79 F2 14 */ add r27, r25, r30
/* 8021A8B0 002177F0  D0 1B 06 C4 */ stfs f0, 0x6c4(r27)
/* 8021A8B4 002177F4  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A8B8 002177F8  C0 63 00 38 */ lfs f3, 0x38(r3)
/* 8021A8BC 002177FC  88 1F 07 6C */ lbz r0, 0x76c(r31)
/* 8021A8C0 00217800  54 00 18 38 */ slwi r0, r0, 3
/* 8021A8C4 00217804  7C 7C 00 2E */ lwzx r3, r28, r0
/* 8021A8C8 00217808  A0 03 00 04 */ lhz r0, 4(r3)
/* 8021A8CC 0021780C  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021A8D0 00217810  90 81 00 30 */ stw r4, 0x30(r1)
/* 8021A8D4 00217814  C8 01 00 30 */ lfd f0, 0x30(r1)
/* 8021A8D8 00217818  EC 00 10 28 */ fsubs f0, f0, f2
/* 8021A8DC 0021781C  EC 00 00 F2 */ fmuls f0, f0, f3
/* 8021A8E0 00217820  EC 00 08 24 */ fdivs f0, f0, f1
/* 8021A8E4 00217824  EC 04 00 32 */ fmuls f0, f4, f0
/* 8021A8E8 00217828  D0 1B 06 D0 */ stfs f0, 0x6d0(r27)
/* 8021A8EC 0021782C  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A8F0 00217830  C0 43 00 34 */ lfs f2, 0x34(r3)
/* 8021A8F4 00217834  C0 22 AE 94 */ lfs f1, lbl_80454894-_SDA2_BASE_(r2)
/* 8021A8F8 00217838  C0 1B 06 C4 */ lfs f0, 0x6c4(r27)
/* 8021A8FC 0021783C  EC 02 00 28 */ fsubs f0, f2, f0
/* 8021A900 00217840  EC 01 00 32 */ fmuls f0, f1, f0
/* 8021A904 00217844  D0 1B 06 AC */ stfs f0, 0x6ac(r27)
/* 8021A908 00217848  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A90C 0021784C  C0 43 00 38 */ lfs f2, 0x38(r3)
/* 8021A910 00217850  C0 1B 06 D0 */ lfs f0, 0x6d0(r27)
/* 8021A914 00217854  EC 02 00 28 */ fsubs f0, f2, f0
/* 8021A918 00217858  EC 01 00 32 */ fmuls f0, f1, f0
/* 8021A91C 0021785C  D0 1B 06 B8 */ stfs f0, 0x6b8(r27)
/* 8021A920 00217860  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A924 00217864  80 63 00 04 */ lwz r3, 4(r3)
/* 8021A928 00217868  C0 3B 06 C4 */ lfs f1, 0x6c4(r27)
/* 8021A92C 0021786C  C0 5B 06 D0 */ lfs f2, 0x6d0(r27)
/* 8021A930 00217870  81 83 00 00 */ lwz r12, 0(r3)
/* 8021A934 00217874  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 8021A938 00217878  7D 89 03 A6 */ mtctr r12
/* 8021A93C 0021787C  3B DB 06 AC */ addi r30, r27, 0x6ac
/* 8021A940 00217880  3B 9B 06 B8 */ addi r28, r27, 0x6b8
/* 8021A944 00217884  4E 80 04 21 */ bctrl
/* 8021A948 00217888  2C 1A 00 00 */ cmpwi r26, 0
/* 8021A94C 0021788C  40 82 00 28 */ bne lbl_8021A974
/* 8021A950 00217890  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A954 00217894  C0 39 00 04 */ lfs f1, 4(r25)
/* 8021A958 00217898  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8021A95C 0021789C  EC 21 00 2A */ fadds f1, f1, f0
/* 8021A960 002178A0  C0 59 00 08 */ lfs f2, 8(r25)
/* 8021A964 002178A4  C0 1C 00 00 */ lfs f0, 0(r28)
/* 8021A968 002178A8  EC 42 00 2A */ fadds f2, f2, f0
/* 8021A96C 002178AC  48 03 9C 45 */ bl CPaneMgr_NS_paneTrans
/* 8021A970 002178B0  48 00 00 24 */ b lbl_8021A994
lbl_8021A974:
/* 8021A974 002178B4  80 7D 03 2C */ lwz r3, 0x32c(r29)
/* 8021A978 002178B8  C0 39 00 20 */ lfs f1, 0x20(r25)
/* 8021A97C 002178BC  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8021A980 002178C0  EC 21 00 2A */ fadds f1, f1, f0
/* 8021A984 002178C4  C0 59 00 24 */ lfs f2, 0x24(r25)
/* 8021A988 002178C8  C0 1C 00 00 */ lfs f0, 0(r28)
/* 8021A98C 002178CC  EC 42 00 2A */ fadds f2, f2, f0
/* 8021A990 002178D0  48 03 9C 21 */ bl CPaneMgr_NS_paneTrans
lbl_8021A994:
/* 8021A994 002178D4  80 7D 05 18 */ lwz r3, 0x518(r29)
/* 8021A998 002178D8  C0 3B 06 C4 */ lfs f1, 0x6c4(r27)
/* 8021A99C 002178DC  C0 5B 06 D0 */ lfs f2, 0x6d0(r27)
/* 8021A9A0 002178E0  81 83 00 00 */ lwz r12, 0(r3)
/* 8021A9A4 002178E4  81 8C 00 18 */ lwz r12, 0x18(r12)
/* 8021A9A8 002178E8  7D 89 03 A6 */ mtctr r12
/* 8021A9AC 002178EC  4E 80 04 21 */ bctrl
/* 8021A9B0 002178F0  39 61 00 60 */ addi r11, r1, 0x60
/* 8021A9B4 002178F4  48 14 78 65 */ bl func_80362218
/* 8021A9B8 002178F8  80 01 00 64 */ lwz r0, 0x64(r1)
/* 8021A9BC 002178FC  7C 08 03 A6 */ mtlr r0
/* 8021A9C0 00217900  38 21 00 60 */ addi r1, r1, 0x60
/* 8021A9C4 00217904  4E 80 00 20 */ blr
