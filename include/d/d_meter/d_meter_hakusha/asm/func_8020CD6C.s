/* 8020CD6C 00209CAC  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 8020CD70 00209CB0  7C 08 02 A6 */ mflr r0
/* 8020CD74 00209CB4  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 8020CD78 00209CB8  DB E1 00 90 */ stfd f31, 0x90(r1)
/* 8020CD7C 00209CBC  F3 E1 00 98 */ psq_st f31, 152(r1), 0, 0
/* 8020CD80 00209CC0  DB C1 00 80 */ stfd f30, 0x80(r1)
/* 8020CD84 00209CC4  F3 C1 00 88 */ psq_st f30, 136(r1), 0, 0
/* 8020CD88 00209CC8  DB A1 00 70 */ stfd f29, 0x70(r1)
/* 8020CD8C 00209CCC  F3 A1 00 78 */ psq_st f29, 120(r1), 0, 0
/* 8020CD90 00209CD0  DB 81 00 60 */ stfd f28, 0x60(r1)
/* 8020CD94 00209CD4  F3 81 00 68 */ psq_st f28, 104(r1), 0, 0
/* 8020CD98 00209CD8  39 61 00 60 */ addi r11, r1, 0x60
/* 8020CD9C 00209CDC  48 15 54 35 */ bl _savegpr_26
/* 8020CDA0 00209CE0  7C 7C 1B 78 */ mr r28, r3
/* 8020CDA4 00209CE4  80 83 00 14 */ lwz r4, 0x14(r3)
/* 8020CDA8 00209CE8  38 61 00 14 */ addi r3, r1, 0x14
/* 8020CDAC 00209CEC  80 A4 00 04 */ lwz r5, 4(r4)
/* 8020CDB0 00209CF0  38 C0 00 00 */ li r6, 0
/* 8020CDB4 00209CF4  38 E0 00 00 */ li r7, 0
/* 8020CDB8 00209CF8  48 04 81 05 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 8020CDBC 00209CFC  80 61 00 14 */ lwz r3, 0x14(r1)
/* 8020CDC0 00209D00  80 01 00 18 */ lwz r0, 0x18(r1)
/* 8020CDC4 00209D04  90 61 00 2C */ stw r3, 0x2c(r1)
/* 8020CDC8 00209D08  90 01 00 30 */ stw r0, 0x30(r1)
/* 8020CDCC 00209D0C  80 01 00 1C */ lwz r0, 0x1c(r1)
/* 8020CDD0 00209D10  90 01 00 34 */ stw r0, 0x34(r1)
/* 8020CDD4 00209D14  80 9C 00 28 */ lwz r4, 0x28(r28)
/* 8020CDD8 00209D18  38 61 00 08 */ addi r3, r1, 8
/* 8020CDDC 00209D1C  80 A4 00 04 */ lwz r5, 4(r4)
/* 8020CDE0 00209D20  38 C0 00 00 */ li r6, 0
/* 8020CDE4 00209D24  38 E0 00 00 */ li r7, 0
/* 8020CDE8 00209D28  48 04 80 D5 */ bl CPaneMgr_NS_getGlobalVtxCenter
/* 8020CDEC 00209D2C  80 61 00 08 */ lwz r3, 8(r1)
/* 8020CDF0 00209D30  80 01 00 0C */ lwz r0, 0xc(r1)
/* 8020CDF4 00209D34  90 61 00 20 */ stw r3, 0x20(r1)
/* 8020CDF8 00209D38  90 01 00 24 */ stw r0, 0x24(r1)
/* 8020CDFC 00209D3C  80 01 00 10 */ lwz r0, 0x10(r1)
/* 8020CE00 00209D40  90 01 00 28 */ stw r0, 0x28(r1)
/* 8020CE04 00209D44  C3 C1 00 2C */ lfs f30, 0x2c(r1)
/* 8020CE08 00209D48  C3 A1 00 30 */ lfs f29, 0x30(r1)
/* 8020CE0C 00209D4C  7F 83 E3 78 */ mr r3, r28
/* 8020CE10 00209D50  48 00 06 71 */ bl dMeterHakusha_c_NS_getHakushaNum
/* 8020CE14 00209D54  C8 22 AE 18 */ lfd f1, lbl_80454818-_SDA2_BASE_(r2)
/* 8020CE18 00209D58  6C 60 80 00 */ xoris r0, r3, 0x8000
/* 8020CE1C 00209D5C  90 01 00 3C */ stw r0, 0x3c(r1)
/* 8020CE20 00209D60  3C 00 43 30 */ lis r0, 0x4330
/* 8020CE24 00209D64  90 01 00 38 */ stw r0, 0x38(r1)
/* 8020CE28 00209D68  C8 01 00 38 */ lfd f0, 0x38(r1)
/* 8020CE2C 00209D6C  EC 40 08 28 */ fsubs f2, f0, f1
/* 8020CE30 00209D70  C0 21 00 20 */ lfs f1, 0x20(r1)
/* 8020CE34 00209D74  FC 00 F0 90 */ fmr f0, f30
/* 8020CE38 00209D78  EC 01 00 28 */ fsubs f0, f1, f0
/* 8020CE3C 00209D7C  EF 80 10 24 */ fdivs f28, f0, f2
/* 8020CE40 00209D80  A8 DC 01 08 */ lha r6, 0x108(r28)
/* 8020CE44 00209D84  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8020CE48 00209D88  3B C3 01 88 */ addi r30, r3, lbl_80430188@l
/* 8020CE4C 00209D8C  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020CE50 00209D90  7C 06 00 00 */ cmpw r6, r0
/* 8020CE54 00209D94  41 82 00 8C */ beq lbl_8020CEE0
/* 8020CE58 00209D98  40 81 00 38 */ ble lbl_8020CE90
/* 8020CE5C 00209D9C  C0 22 AE 0C */ lfs f1, lbl_8045480C-_SDA2_BASE_(r2)
/* 8020CE60 00209DA0  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020CE64 00209DA4  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020CE68 00209DA8  C0 03 04 40 */ lfs f0, 0x440(r3)
/* 8020CE6C 00209DAC  EC 01 00 28 */ fsubs f0, f1, f0
/* 8020CE70 00209DB0  54 00 10 3A */ slwi r0, r0, 2
/* 8020CE74 00209DB4  7C 7C 02 14 */ add r3, r28, r0
/* 8020CE78 00209DB8  D0 03 00 C8 */ stfs f0, 0xc8(r3)
/* 8020CE7C 00209DBC  38 80 00 00 */ li r4, 0
/* 8020CE80 00209DC0  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020CE84 00209DC4  7C 7C 02 14 */ add r3, r28, r0
/* 8020CE88 00209DC8  98 83 01 0A */ stb r4, 0x10a(r3)
/* 8020CE8C 00209DCC  48 00 00 4C */ b lbl_8020CED8
lbl_8020CE90:
/* 8020CE90 00209DD0  40 80 00 48 */ bge lbl_8020CED8
/* 8020CE94 00209DD4  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020CE98 00209DD8  38 A3 EB C8 */ addi r5, r3, lbl_8042EBC8@l
/* 8020CE9C 00209DDC  C0 22 AE 0C */ lfs f1, lbl_8045480C-_SDA2_BASE_(r2)
/* 8020CEA0 00209DE0  38 80 00 01 */ li r4, 1
/* 8020CEA4 00209DE4  54 C3 10 3A */ slwi r3, r6, 2
/* 8020CEA8 00209DE8  48 00 00 24 */ b lbl_8020CECC
lbl_8020CEAC:
/* 8020CEAC 00209DEC  C0 05 04 54 */ lfs f0, 0x454(r5)
/* 8020CEB0 00209DF0  EC 01 00 28 */ fsubs f0, f1, f0
/* 8020CEB4 00209DF4  38 03 00 C8 */ addi r0, r3, 0xc8
/* 8020CEB8 00209DF8  7C 1C 05 2E */ stfsx f0, r28, r0
/* 8020CEBC 00209DFC  38 06 01 0A */ addi r0, r6, 0x10a
/* 8020CEC0 00209E00  7C 9C 01 AE */ stbx r4, r28, r0
/* 8020CEC4 00209E04  38 C6 00 01 */ addi r6, r6, 1
/* 8020CEC8 00209E08  38 63 00 04 */ addi r3, r3, 4
lbl_8020CECC:
/* 8020CECC 00209E0C  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020CED0 00209E10  7C 06 00 00 */ cmpw r6, r0
/* 8020CED4 00209E14  41 80 FF D8 */ blt lbl_8020CEAC
lbl_8020CED8:
/* 8020CED8 00209E18  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020CEDC 00209E1C  B0 1C 01 08 */ sth r0, 0x108(r28)
lbl_8020CEE0:
/* 8020CEE0 00209E20  3B A0 00 00 */ li r29, 0
/* 8020CEE4 00209E24  3B 60 00 00 */ li r27, 0
/* 8020CEE8 00209E28  3B 40 00 00 */ li r26, 0
/* 8020CEEC 00209E2C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020CEF0 00209E30  3B E3 EB C8 */ addi r31, r3, lbl_8042EBC8@l
/* 8020CEF4 00209E34  C3 E2 AE 00 */ lfs f31, lbl_80454800-_SDA2_BASE_(r2)
/* 8020CEF8 00209E38  48 00 01 BC */ b lbl_8020D0B4
lbl_8020CEFC:
/* 8020CEFC 00209E3C  38 BA 00 C8 */ addi r5, r26, 0xc8
/* 8020CF00 00209E40  7C 3C 2C 2E */ lfsx f1, r28, r5
/* 8020CF04 00209E44  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 8020CF08 00209E48  40 81 00 48 */ ble lbl_8020CF50
/* 8020CF0C 00209E4C  38 1D 01 0A */ addi r0, r29, 0x10a
/* 8020CF10 00209E50  7C 1C 00 AE */ lbzx r0, r28, r0
/* 8020CF14 00209E54  28 00 00 00 */ cmplwi r0, 0
/* 8020CF18 00209E58  40 82 00 14 */ bne lbl_8020CF2C
/* 8020CF1C 00209E5C  C0 1F 04 40 */ lfs f0, 0x440(r31)
/* 8020CF20 00209E60  EC 01 00 2A */ fadds f0, f1, f0
/* 8020CF24 00209E64  7C 1C 2D 2E */ stfsx f0, r28, r5
/* 8020CF28 00209E68  48 00 00 10 */ b lbl_8020CF38
lbl_8020CF2C:
/* 8020CF2C 00209E6C  C0 1F 04 54 */ lfs f0, 0x454(r31)
/* 8020CF30 00209E70  EC 01 00 2A */ fadds f0, f1, f0
/* 8020CF34 00209E74  7C 1C 2D 2E */ stfsx f0, r28, r5
lbl_8020CF38:
/* 8020CF38 00209E78  7C 3C 2C 2E */ lfsx f1, r28, r5
/* 8020CF3C 00209E7C  C0 02 AE 10 */ lfs f0, lbl_80454810-_SDA2_BASE_(r2)
/* 8020CF40 00209E80  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020CF44 00209E84  40 81 00 0C */ ble lbl_8020CF50
/* 8020CF48 00209E88  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020CF4C 00209E8C  7C 1C 2D 2E */ stfsx f0, r28, r5
lbl_8020CF50:
/* 8020CF50 00209E90  7C 7C DA 14 */ add r3, r28, r27
/* 8020CF54 00209E94  D3 C3 00 38 */ stfs f30, 0x38(r3)
/* 8020CF58 00209E98  D3 A3 00 3C */ stfs f29, 0x3c(r3)
/* 8020CF5C 00209E9C  80 9C 00 2C */ lwz r4, 0x2c(r28)
/* 8020CF60 00209EA0  80 84 00 04 */ lwz r4, 4(r4)
/* 8020CF64 00209EA4  88 04 00 B2 */ lbz r0, 0xb2(r4)
/* 8020CF68 00209EA8  28 00 00 00 */ cmplwi r0, 0
/* 8020CF6C 00209EAC  40 82 00 14 */ bne lbl_8020CF80
/* 8020CF70 00209EB0  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020CF74 00209EB4  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 8020CF78 00209EB8  98 03 00 40 */ stb r0, 0x40(r3)
/* 8020CF7C 00209EBC  48 00 00 84 */ b lbl_8020D000
lbl_8020CF80:
/* 8020CF80 00209EC0  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020CF84 00209EC4  7C 1D 00 00 */ cmpw r29, r0
/* 8020CF88 00209EC8  41 80 00 5C */ blt lbl_8020CFE4
/* 8020CF8C 00209ECC  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020CF90 00209ED0  7C 3C 2C 2E */ lfsx f1, r28, r5
/* 8020CF94 00209ED4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020CF98 00209ED8  41 82 00 24 */ beq lbl_8020CFBC
/* 8020CF9C 00209EDC  C0 02 AE 14 */ lfs f0, lbl_80454814-_SDA2_BASE_(r2)
/* 8020CFA0 00209EE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020CFA4 00209EE4  4C 40 13 82 */ cror 2, 0, 2
/* 8020CFA8 00209EE8  40 82 00 14 */ bne lbl_8020CFBC
/* 8020CFAC 00209EEC  38 1D 01 0A */ addi r0, r29, 0x10a
/* 8020CFB0 00209EF0  7C 1C 00 AE */ lbzx r0, r28, r0
/* 8020CFB4 00209EF4  28 00 00 00 */ cmplwi r0, 0
/* 8020CFB8 00209EF8  41 82 00 2C */ beq lbl_8020CFE4
lbl_8020CFBC:
/* 8020CFBC 00209EFC  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020CFC0 00209F00  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020CFC4 00209F04  41 82 00 30 */ beq lbl_8020CFF4
/* 8020CFC8 00209F08  C0 02 AE 14 */ lfs f0, lbl_80454814-_SDA2_BASE_(r2)
/* 8020CFCC 00209F0C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020CFD0 00209F10  40 81 00 24 */ ble lbl_8020CFF4
/* 8020CFD4 00209F14  38 1D 01 0A */ addi r0, r29, 0x10a
/* 8020CFD8 00209F18  7C 1C 00 AE */ lbzx r0, r28, r0
/* 8020CFDC 00209F1C  28 00 00 01 */ cmplwi r0, 1
/* 8020CFE0 00209F20  40 82 00 14 */ bne lbl_8020CFF4
lbl_8020CFE4:
/* 8020CFE4 00209F24  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020CFE8 00209F28  60 00 00 01 */ ori r0, r0, 1
/* 8020CFEC 00209F2C  98 03 00 40 */ stb r0, 0x40(r3)
/* 8020CFF0 00209F30  48 00 00 10 */ b lbl_8020D000
lbl_8020CFF4:
/* 8020CFF4 00209F34  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020CFF8 00209F38  54 00 06 3C */ rlwinm r0, r0, 0, 0x18, 0x1e
/* 8020CFFC 00209F3C  98 03 00 40 */ stb r0, 0x40(r3)
lbl_8020D000:
/* 8020D000 00209F40  80 9C 00 30 */ lwz r4, 0x30(r28)
/* 8020D004 00209F44  80 84 00 04 */ lwz r4, 4(r4)
/* 8020D008 00209F48  88 04 00 B2 */ lbz r0, 0xb2(r4)
/* 8020D00C 00209F4C  28 00 00 00 */ cmplwi r0, 0
/* 8020D010 00209F50  40 82 00 14 */ bne lbl_8020D024
/* 8020D014 00209F54  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020D018 00209F58  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8020D01C 00209F5C  98 03 00 40 */ stb r0, 0x40(r3)
/* 8020D020 00209F60  48 00 00 84 */ b lbl_8020D0A4
lbl_8020D024:
/* 8020D024 00209F64  A8 1E 00 96 */ lha r0, 0x96(r30)
/* 8020D028 00209F68  7C 1D 00 00 */ cmpw r29, r0
/* 8020D02C 00209F6C  41 80 00 5C */ blt lbl_8020D088
/* 8020D030 00209F70  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020D034 00209F74  7C 3C 2C 2E */ lfsx f1, r28, r5
/* 8020D038 00209F78  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020D03C 00209F7C  41 82 00 24 */ beq lbl_8020D060
/* 8020D040 00209F80  C0 02 AE 14 */ lfs f0, lbl_80454814-_SDA2_BASE_(r2)
/* 8020D044 00209F84  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020D048 00209F88  4C 40 13 82 */ cror 2, 0, 2
/* 8020D04C 00209F8C  40 82 00 14 */ bne lbl_8020D060
/* 8020D050 00209F90  38 1D 01 0A */ addi r0, r29, 0x10a
/* 8020D054 00209F94  7C 1C 00 AE */ lbzx r0, r28, r0
/* 8020D058 00209F98  28 00 00 00 */ cmplwi r0, 0
/* 8020D05C 00209F9C  41 82 00 2C */ beq lbl_8020D088
lbl_8020D060:
/* 8020D060 00209FA0  C0 02 AE 00 */ lfs f0, lbl_80454800-_SDA2_BASE_(r2)
/* 8020D064 00209FA4  FC 00 08 00 */ fcmpu cr0, f0, f1
/* 8020D068 00209FA8  41 82 00 30 */ beq lbl_8020D098
/* 8020D06C 00209FAC  C0 02 AE 14 */ lfs f0, lbl_80454814-_SDA2_BASE_(r2)
/* 8020D070 00209FB0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8020D074 00209FB4  40 81 00 24 */ ble lbl_8020D098
/* 8020D078 00209FB8  38 1D 01 0A */ addi r0, r29, 0x10a
/* 8020D07C 00209FBC  7C 1C 00 AE */ lbzx r0, r28, r0
/* 8020D080 00209FC0  28 00 00 01 */ cmplwi r0, 1
/* 8020D084 00209FC4  40 82 00 14 */ bne lbl_8020D098
lbl_8020D088:
/* 8020D088 00209FC8  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020D08C 00209FCC  54 00 07 FA */ rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8020D090 00209FD0  98 03 00 40 */ stb r0, 0x40(r3)
/* 8020D094 00209FD4  48 00 00 10 */ b lbl_8020D0A4
lbl_8020D098:
/* 8020D098 00209FD8  88 03 00 40 */ lbz r0, 0x40(r3)
/* 8020D09C 00209FDC  60 00 00 02 */ ori r0, r0, 2
/* 8020D0A0 00209FE0  98 03 00 40 */ stb r0, 0x40(r3)
lbl_8020D0A4:
/* 8020D0A4 00209FE4  EF DE E0 2A */ fadds f30, f30, f28
/* 8020D0A8 00209FE8  3B BD 00 01 */ addi r29, r29, 1
/* 8020D0AC 00209FEC  3B 7B 00 0C */ addi r27, r27, 0xc
/* 8020D0B0 00209FF0  3B 5A 00 04 */ addi r26, r26, 4
lbl_8020D0B4:
/* 8020D0B4 00209FF4  7F 83 E3 78 */ mr r3, r28
/* 8020D0B8 00209FF8  48 00 03 C9 */ bl dMeterHakusha_c_NS_getHakushaNum
/* 8020D0BC 00209FFC  7C 1D 18 00 */ cmpw r29, r3
/* 8020D0C0 0020A000  41 80 FE 3C */ blt lbl_8020CEFC
/* 8020D0C4 0020A004  C0 1C 01 00 */ lfs f0, 0x100(r28)
/* 8020D0C8 0020A008  EC 1E 00 2A */ fadds f0, f30, f0
/* 8020D0CC 0020A00C  D0 1C 00 F8 */ stfs f0, 0xf8(r28)
/* 8020D0D0 0020A010  C0 1C 01 04 */ lfs f0, 0x104(r28)
/* 8020D0D4 0020A014  EC 1D 00 2A */ fadds f0, f29, f0
/* 8020D0D8 0020A018  D0 1C 00 FC */ stfs f0, 0xfc(r28)
/* 8020D0DC 0020A01C  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020D0E0 0020A020  3B 43 EB C8 */ addi r26, r3, lbl_8042EBC8@l
/* 8020D0E4 0020A024  88 1A 04 2E */ lbz r0, 0x42e(r26)
/* 8020D0E8 0020A028  28 00 00 00 */ cmplwi r0, 0
/* 8020D0EC 0020A02C  41 82 01 34 */ beq lbl_8020D220
/* 8020D0F0 0020A030  C0 1A 03 B8 */ lfs f0, 0x3b8(r26)
/* 8020D0F4 0020A034  D0 1C 01 00 */ stfs f0, 0x100(r28)
/* 8020D0F8 0020A038  C0 1A 03 BC */ lfs f0, 0x3bc(r26)
/* 8020D0FC 0020A03C  D0 1C 01 04 */ stfs f0, 0x104(r28)
/* 8020D100 0020A040  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8020D104 0020A044  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8020D108 0020A048  38 63 4E 00 */ addi r3, r3, 0x4e00
/* 8020D10C 0020A04C  3C 80 80 3A */ lis r4, lbl_803981B0@ha
/* 8020D110 0020A050  38 84 81 B0 */ addi r4, r4, lbl_803981B0@l
/* 8020D114 0020A054  38 84 00 46 */ addi r4, r4, 0x46
/* 8020D118 0020A058  48 15 B8 7D */ bl strcmp
/* 8020D11C 0020A05C  2C 03 00 00 */ cmpwi r3, 0
/* 8020D120 0020A060  40 82 00 28 */ bne lbl_8020D148
/* 8020D124 0020A064  80 7C 00 10 */ lwz r3, 0x10(r28)
/* 8020D128 0020A068  C0 22 AE 04 */ lfs f1, lbl_80454804-_SDA2_BASE_(r2)
/* 8020D12C 0020A06C  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 8020D130 0020A070  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8020D134 0020A074  C0 04 03 B0 */ lfs f0, 0x3b0(r4)
/* 8020D138 0020A078  EC 21 00 2A */ fadds f1, f1, f0
/* 8020D13C 0020A07C  C0 44 03 B4 */ lfs f2, 0x3b4(r4)
/* 8020D140 0020A080  48 04 74 71 */ bl CPaneMgr_NS_paneTrans
/* 8020D144 0020A084  48 00 00 1C */ b lbl_8020D160
lbl_8020D148:
/* 8020D148 0020A088  80 7C 00 10 */ lwz r3, 0x10(r28)
/* 8020D14C 0020A08C  3C 80 80 43 */ lis r4, lbl_8042EBC8@ha
/* 8020D150 0020A090  38 84 EB C8 */ addi r4, r4, lbl_8042EBC8@l
/* 8020D154 0020A094  C0 24 03 B0 */ lfs f1, 0x3b0(r4)
/* 8020D158 0020A098  C0 44 03 B4 */ lfs f2, 0x3b4(r4)
/* 8020D15C 0020A09C  48 04 74 55 */ bl CPaneMgr_NS_paneTrans
lbl_8020D160:
/* 8020D160 0020A0A0  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020D164 0020A0A4  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020D168 0020A0A8  C0 03 03 AC */ lfs f0, 0x3ac(r3)
/* 8020D16C 0020A0AC  80 7C 00 10 */ lwz r3, 0x10(r28)
/* 8020D170 0020A0B0  80 63 00 04 */ lwz r3, 4(r3)
/* 8020D174 0020A0B4  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8020D178 0020A0B8  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 8020D17C 0020A0BC  81 83 00 00 */ lwz r12, 0(r3)
/* 8020D180 0020A0C0  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8020D184 0020A0C4  7D 89 03 A6 */ mtctr r12
/* 8020D188 0020A0C8  4E 80 04 21 */ bctrl
/* 8020D18C 0020A0CC  80 7C 00 34 */ lwz r3, 0x34(r28)
/* 8020D190 0020A0D0  C0 3A 03 B8 */ lfs f1, 0x3b8(r26)
/* 8020D194 0020A0D4  C0 5A 03 BC */ lfs f2, 0x3bc(r26)
/* 8020D198 0020A0D8  48 04 74 19 */ bl CPaneMgr_NS_paneTrans
/* 8020D19C 0020A0DC  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020D1A0 0020A0E0  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020D1A4 0020A0E4  C0 03 03 C0 */ lfs f0, 0x3c0(r3)
/* 8020D1A8 0020A0E8  80 7C 00 34 */ lwz r3, 0x34(r28)
/* 8020D1AC 0020A0EC  80 63 00 04 */ lwz r3, 4(r3)
/* 8020D1B0 0020A0F0  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8020D1B4 0020A0F4  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 8020D1B8 0020A0F8  81 83 00 00 */ lwz r12, 0(r3)
/* 8020D1BC 0020A0FC  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8020D1C0 0020A100  7D 89 03 A6 */ mtctr r12
/* 8020D1C4 0020A104  4E 80 04 21 */ bctrl
/* 8020D1C8 0020A108  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020D1CC 0020A10C  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020D1D0 0020A110  C0 03 03 9C */ lfs f0, 0x39c(r3)
/* 8020D1D4 0020A114  80 7C 00 2C */ lwz r3, 0x2c(r28)
/* 8020D1D8 0020A118  80 63 00 04 */ lwz r3, 4(r3)
/* 8020D1DC 0020A11C  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8020D1E0 0020A120  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 8020D1E4 0020A124  81 83 00 00 */ lwz r12, 0(r3)
/* 8020D1E8 0020A128  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8020D1EC 0020A12C  7D 89 03 A6 */ mtctr r12
/* 8020D1F0 0020A130  4E 80 04 21 */ bctrl
/* 8020D1F4 0020A134  3C 60 80 43 */ lis r3, lbl_8042EBC8@ha
/* 8020D1F8 0020A138  38 63 EB C8 */ addi r3, r3, lbl_8042EBC8@l
/* 8020D1FC 0020A13C  C0 03 03 A4 */ lfs f0, 0x3a4(r3)
/* 8020D200 0020A140  80 7C 00 30 */ lwz r3, 0x30(r28)
/* 8020D204 0020A144  80 63 00 04 */ lwz r3, 4(r3)
/* 8020D208 0020A148  D0 03 00 CC */ stfs f0, 0xcc(r3)
/* 8020D20C 0020A14C  D0 03 00 D0 */ stfs f0, 0xd0(r3)
/* 8020D210 0020A150  81 83 00 00 */ lwz r12, 0(r3)
/* 8020D214 0020A154  81 8C 00 2C */ lwz r12, 0x2c(r12)
/* 8020D218 0020A158  7D 89 03 A6 */ mtctr r12
/* 8020D21C 0020A15C  4E 80 04 21 */ bctrl
lbl_8020D220:
/* 8020D220 0020A160  E3 E1 00 98 */ psq_l f31, 152(r1), 0, 0
/* 8020D224 0020A164  CB E1 00 90 */ lfd f31, 0x90(r1)
/* 8020D228 0020A168  E3 C1 00 88 */ psq_l f30, 136(r1), 0, 0
/* 8020D22C 0020A16C  CB C1 00 80 */ lfd f30, 0x80(r1)
/* 8020D230 0020A170  E3 A1 00 78 */ psq_l f29, 120(r1), 0, 0
/* 8020D234 0020A174  CB A1 00 70 */ lfd f29, 0x70(r1)
/* 8020D238 0020A178  E3 81 00 68 */ psq_l f28, 104(r1), 0, 0
/* 8020D23C 0020A17C  CB 81 00 60 */ lfd f28, 0x60(r1)
/* 8020D240 0020A180  39 61 00 60 */ addi r11, r1, 0x60
/* 8020D244 0020A184  48 15 4F D9 */ bl _restgpr_26
/* 8020D248 0020A188  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 8020D24C 0020A18C  7C 08 03 A6 */ mtlr r0
/* 8020D250 0020A190  38 21 00 A0 */ addi r1, r1, 0xa0
/* 8020D254 0020A194  4E 80 00 20 */ blr
