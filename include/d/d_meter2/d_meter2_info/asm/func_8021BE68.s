/* 8021BE68 00218DA8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8021BE6C 00218DAC  7C 08 02 A6 */ mflr r0
/* 8021BE70 00218DB0  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021BE74 00218DB4  39 61 00 30 */ addi r11, r1, 0x30
/* 8021BE78 00218DB8  48 14 63 5D */ bl _savegpr_27
/* 8021BE7C 00218DBC  7C 7F 1B 78 */ mr r31, r3
/* 8021BE80 00218DC0  38 80 00 00 */ li r4, 0
/* 8021BE84 00218DC4  90 83 00 10 */ stw r4, 0x10(r3)
/* 8021BE88 00218DC8  90 83 00 14 */ stw r4, 0x14(r3)
/* 8021BE8C 00218DCC  90 83 00 18 */ stw r4, 0x18(r3)
/* 8021BE90 00218DD0  90 83 00 1C */ stw r4, 0x1c(r3)
/* 8021BE94 00218DD4  90 83 00 20 */ stw r4, 0x20(r3)
/* 8021BE98 00218DD8  90 83 00 24 */ stw r4, 0x24(r3)
/* 8021BE9C 00218DDC  7C 83 23 78 */ mr r3, r4
/* 8021BEA0 00218DE0  38 00 00 04 */ li r0, 4
/* 8021BEA4 00218DE4  7C 09 03 A6 */ mtctr r0
lbl_8021BEA8:
/* 8021BEA8 00218DE8  38 03 00 28 */ addi r0, r3, 0x28
/* 8021BEAC 00218DEC  7C 9F 01 2E */ stwx r4, r31, r0
/* 8021BEB0 00218DF0  38 63 00 04 */ addi r3, r3, 4
/* 8021BEB4 00218DF4  42 00 FF F4 */ bdnz lbl_8021BEA8
/* 8021BEB8 00218DF8  38 80 00 00 */ li r4, 0
/* 8021BEBC 00218DFC  90 9F 00 0C */ stw r4, 0xc(r31)
/* 8021BEC0 00218E00  90 9F 00 08 */ stw r4, 8(r31)
/* 8021BEC4 00218E04  B0 9F 00 A2 */ sth r4, 0xa2(r31)
/* 8021BEC8 00218E08  B0 9F 00 96 */ sth r4, 0x96(r31)
/* 8021BECC 00218E0C  B0 9F 00 94 */ sth r4, 0x94(r31)
/* 8021BED0 00218E10  B0 9F 00 98 */ sth r4, 0x98(r31)
/* 8021BED4 00218E14  98 9F 00 B9 */ stb r4, 0xb9(r31)
/* 8021BED8 00218E18  98 9F 00 BA */ stb r4, 0xba(r31)
/* 8021BEDC 00218E1C  C0 22 AF 98 */ lfs f1, lbl_80454998-_SDA2_BASE_(r2)
/* 8021BEE0 00218E20  D0 3F 00 54 */ stfs f1, 0x54(r31)
/* 8021BEE4 00218E24  D0 3F 00 58 */ stfs f1, 0x58(r31)
/* 8021BEE8 00218E28  D0 3F 00 5C */ stfs f1, 0x5c(r31)
/* 8021BEEC 00218E2C  C0 02 AF 9C */ lfs f0, lbl_8045499C-_SDA2_BASE_(r2)
/* 8021BEF0 00218E30  D0 1F 00 60 */ stfs f0, 0x60(r31)
/* 8021BEF4 00218E34  C0 02 AF A0 */ lfs f0, lbl_804549A0-_SDA2_BASE_(r2)
/* 8021BEF8 00218E38  D0 1F 00 64 */ stfs f0, 0x64(r31)
/* 8021BEFC 00218E3C  C0 02 AF A4 */ lfs f0, lbl_804549A4-_SDA2_BASE_(r2)
/* 8021BF00 00218E40  D0 1F 00 68 */ stfs f0, 0x68(r31)
/* 8021BF04 00218E44  C0 02 AF A8 */ lfs f0, lbl_804549A8-_SDA2_BASE_(r2)
/* 8021BF08 00218E48  D0 1F 00 6C */ stfs f0, 0x6c(r31)
/* 8021BF0C 00218E4C  C0 02 AF AC */ lfs f0, lbl_804549AC-_SDA2_BASE_(r2)
/* 8021BF10 00218E50  D0 1F 00 70 */ stfs f0, 0x70(r31)
/* 8021BF14 00218E54  C0 02 AF B0 */ lfs f0, lbl_804549B0-_SDA2_BASE_(r2)
/* 8021BF18 00218E58  D0 1F 00 74 */ stfs f0, 0x74(r31)
/* 8021BF1C 00218E5C  D0 3F 00 78 */ stfs f1, 0x78(r31)
/* 8021BF20 00218E60  D0 3F 00 7C */ stfs f1, 0x7c(r31)
/* 8021BF24 00218E64  D0 3F 00 80 */ stfs f1, 0x80(r31)
/* 8021BF28 00218E68  90 9F 00 84 */ stw r4, 0x84(r31)
/* 8021BF2C 00218E6C  90 9F 00 88 */ stw r4, 0x88(r31)
/* 8021BF30 00218E70  98 9F 00 BC */ stb r4, 0xbc(r31)
/* 8021BF34 00218E74  98 9F 00 BB */ stb r4, 0xbb(r31)
/* 8021BF38 00218E78  98 9F 00 BD */ stb r4, 0xbd(r31)
/* 8021BF3C 00218E7C  98 9F 00 BF */ stb r4, 0xbf(r31)
/* 8021BF40 00218E80  B0 9F 00 AA */ sth r4, 0xaa(r31)
/* 8021BF44 00218E84  B0 9F 00 AC */ sth r4, 0xac(r31)
/* 8021BF48 00218E88  B0 9F 00 B6 */ sth r4, 0xb6(r31)
/* 8021BF4C 00218E8C  3C 60 00 01 */ lis r3, 0x0000FFFF@ha
/* 8021BF50 00218E90  38 03 FF FF */ addi r0, r3, 0x0000FFFF@l
/* 8021BF54 00218E94  B0 1F 00 AE */ sth r0, 0xae(r31)
/* 8021BF58 00218E98  98 9F 00 B8 */ stb r4, 0xb8(r31)
/* 8021BF5C 00218E9C  B0 9F 00 B0 */ sth r4, 0xb0(r31)
/* 8021BF60 00218EA0  B0 9F 00 B2 */ sth r4, 0xb2(r31)
/* 8021BF64 00218EA4  B0 1F 00 B4 */ sth r0, 0xb4(r31)
/* 8021BF68 00218EA8  90 9F 00 8C */ stw r4, 0x8c(r31)
/* 8021BF6C 00218EAC  B0 1F 00 A4 */ sth r0, 0xa4(r31)
/* 8021BF70 00218EB0  B0 1F 00 A6 */ sth r0, 0xa6(r31)
/* 8021BF74 00218EB4  B0 9F 00 A8 */ sth r4, 0xa8(r31)
/* 8021BF78 00218EB8  98 9F 00 F1 */ stb r4, 0xf1(r31)
/* 8021BF7C 00218EBC  7F E3 FB 78 */ mr r3, r31
/* 8021BF80 00218EC0  48 00 0A 5D */ bl dMeter2Info_c_NS_resetWarpStatus
/* 8021BF84 00218EC4  38 00 00 00 */ li r0, 0
/* 8021BF88 00218EC8  98 1F 00 C1 */ stb r0, 0xc1(r31)
/* 8021BF8C 00218ECC  98 1F 00 C2 */ stb r0, 0xc2(r31)
/* 8021BF90 00218ED0  38 00 00 FF */ li r0, 0xff
/* 8021BF94 00218ED4  98 1F 00 C3 */ stb r0, 0xc3(r31)
/* 8021BF98 00218ED8  C0 02 AF 98 */ lfs f0, lbl_80454998-_SDA2_BASE_(r2)
/* 8021BF9C 00218EDC  D0 01 00 08 */ stfs f0, 8(r1)
/* 8021BFA0 00218EE0  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8021BFA4 00218EE4  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8021BFA8 00218EE8  7F E3 FB 78 */ mr r3, r31
/* 8021BFAC 00218EEC  3C 80 80 3A */ lis r4, lbl_80399168@ha
/* 8021BFB0 00218EF0  38 84 91 68 */ addi r4, r4, lbl_80399168@l
/* 8021BFB4 00218EF4  38 A1 00 08 */ addi r5, r1, 8
/* 8021BFB8 00218EF8  38 C0 00 00 */ li r6, 0
/* 8021BFBC 00218EFC  38 E0 00 00 */ li r7, 0
/* 8021BFC0 00218F00  39 00 00 00 */ li r8, 0
/* 8021BFC4 00218F04  39 20 00 00 */ li r9, 0
/* 8021BFC8 00218F08  48 00 0C 45 */ bl dMeter2Info_c_NS_setWarpInfo
/* 8021BFCC 00218F0C  3B 80 00 00 */ li r28, 0
lbl_8021BFD0:
/* 8021BFD0 00218F10  7F E3 FB 78 */ mr r3, r31
/* 8021BFD4 00218F14  38 1C 00 0B */ addi r0, r28, 0xb
/* 8021BFD8 00218F18  54 04 06 3E */ clrlwi r4, r0, 0x18
/* 8021BFDC 00218F1C  48 00 1D 81 */ bl dMeter2Info_c_NS_changeWater
/* 8021BFE0 00218F20  3B 9C 00 01 */ addi r28, r28, 1
/* 8021BFE4 00218F24  2C 1C 00 04 */ cmpwi r28, 4
/* 8021BFE8 00218F28  41 80 FF E8 */ blt lbl_8021BFD0
/* 8021BFEC 00218F2C  38 A0 00 00 */ li r5, 0
/* 8021BFF0 00218F30  38 60 00 00 */ li r3, 0
/* 8021BFF4 00218F34  38 00 00 04 */ li r0, 4
/* 8021BFF8 00218F38  7C 09 03 A6 */ mtctr r0
lbl_8021BFFC:
/* 8021BFFC 00218F3C  7C 9F 2A 14 */ add r4, r31, r5
/* 8021C000 00218F40  98 64 00 C4 */ stb r3, 0xc4(r4)
/* 8021C004 00218F44  98 64 00 C8 */ stb r3, 0xc8(r4)
/* 8021C008 00218F48  98 64 00 D0 */ stb r3, 0xd0(r4)
/* 8021C00C 00218F4C  98 64 00 D4 */ stb r3, 0xd4(r4)
/* 8021C010 00218F50  38 A5 00 01 */ addi r5, r5, 1
/* 8021C014 00218F54  42 00 FF E8 */ bdnz lbl_8021BFFC
/* 8021C018 00218F58  38 60 00 00 */ li r3, 0
/* 8021C01C 00218F5C  98 7F 00 CC */ stb r3, 0xcc(r31)
/* 8021C020 00218F60  98 7F 00 CD */ stb r3, 0xcd(r31)
/* 8021C024 00218F64  98 7F 00 CE */ stb r3, 0xce(r31)
/* 8021C028 00218F68  98 7F 00 CF */ stb r3, 0xcf(r31)
/* 8021C02C 00218F6C  98 7F 00 D8 */ stb r3, 0xd8(r31)
/* 8021C030 00218F70  98 7F 00 D9 */ stb r3, 0xd9(r31)
/* 8021C034 00218F74  98 7F 00 DA */ stb r3, 0xda(r31)
/* 8021C038 00218F78  98 7F 00 DB */ stb r3, 0xdb(r31)
/* 8021C03C 00218F7C  38 00 00 FF */ li r0, 0xff
/* 8021C040 00218F80  98 1F 00 DC */ stb r0, 0xdc(r31)
/* 8021C044 00218F84  98 7F 00 DD */ stb r3, 0xdd(r31)
/* 8021C048 00218F88  98 7F 00 DE */ stb r3, 0xde(r31)
/* 8021C04C 00218F8C  7F E3 FB 78 */ mr r3, r31
/* 8021C050 00218F90  3C 80 80 3A */ lis r4, lbl_80399168@ha
/* 8021C054 00218F94  38 84 91 68 */ addi r4, r4, lbl_80399168@l
/* 8021C058 00218F98  48 00 22 39 */ bl dMeter2Info_c_NS_setSaveStageName
/* 8021C05C 00218F9C  3B A0 00 00 */ li r29, 0
/* 8021C060 00218FA0  9B BF 00 DF */ stb r29, 0xdf(r31)
/* 8021C064 00218FA4  9B BF 00 E0 */ stb r29, 0xe0(r31)
/* 8021C068 00218FA8  3B C0 00 FF */ li r30, 0xff
/* 8021C06C 00218FAC  9B DF 00 E1 */ stb r30, 0xe1(r31)
/* 8021C070 00218FB0  9B BF 00 E2 */ stb r29, 0xe2(r31)
/* 8021C074 00218FB4  9B BF 00 E7 */ stb r29, 0xe7(r31)
/* 8021C078 00218FB8  9B BF 00 E8 */ stb r29, 0xe8(r31)
/* 8021C07C 00218FBC  9B BF 00 E6 */ stb r29, 0xe6(r31)
/* 8021C080 00218FC0  9B BF 00 F2 */ stb r29, 0xf2(r31)
/* 8021C084 00218FC4  3B 60 00 00 */ li r27, 0
/* 8021C088 00218FC8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021C08C 00218FCC  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021C090 00218FD0  3B 83 01 14 */ addi r28, r3, 0x114
lbl_8021C094:
/* 8021C094 00218FD4  7F 83 E3 78 */ mr r3, r28
/* 8021C098 00218FD8  57 64 06 3E */ clrlwi r4, r27, 0x18
/* 8021C09C 00218FDC  4B E1 83 01 */ bl isLightDropGetFlag__16dSv_light_drop_cCFUc
/* 8021C0A0 00218FE0  2C 03 00 00 */ cmpwi r3, 0
/* 8021C0A4 00218FE4  41 82 00 10 */ beq lbl_8021C0B4
/* 8021C0A8 00218FE8  38 1B 00 E3 */ addi r0, r27, 0xe3
/* 8021C0AC 00218FEC  7F DF 01 AE */ stbx r30, r31, r0
/* 8021C0B0 00218FF0  48 00 00 0C */ b lbl_8021C0BC
lbl_8021C0B4:
/* 8021C0B4 00218FF4  38 1B 00 E3 */ addi r0, r27, 0xe3
/* 8021C0B8 00218FF8  7F BF 01 AE */ stbx r29, r31, r0
lbl_8021C0BC:
/* 8021C0BC 00218FFC  3B 7B 00 01 */ addi r27, r27, 1
/* 8021C0C0 00219000  2C 1B 00 03 */ cmpwi r27, 3
/* 8021C0C4 00219004  41 80 FF D0 */ blt lbl_8021C094
/* 8021C0C8 00219008  39 61 00 30 */ addi r11, r1, 0x30
/* 8021C0CC 0021900C  48 14 61 55 */ bl _restgpr_27
/* 8021C0D0 00219010  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8021C0D4 00219014  7C 08 03 A6 */ mtlr r0
/* 8021C0D8 00219018  38 21 00 30 */ addi r1, r1, 0x30
/* 8021C0DC 0021901C  4E 80 00 20 */ blr
