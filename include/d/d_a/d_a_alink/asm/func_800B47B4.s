/* 800B47B4 000B16F4  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800B47B8 000B16F8  7C 08 02 A6 */ mflr r0
/* 800B47BC 000B16FC  90 01 00 24 */ stw r0, 0x24(r1)
/* 800B47C0 000B1700  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 800B47C4 000B1704  7C 7F 1B 78 */ mr r31, r3
/* 800B47C8 000B1708  48 06 14 59 */ bl daAlink_c_NS_checkEventRun
/* 800B47CC 000B170C  7C 60 00 34 */ cntlzw r0, r3
/* 800B47D0 000B1710  54 03 D9 7E */ srwi r3, r0, 5
/* 800B47D4 000B1714  54 00 DE 3F */ rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 800B47D8 000B1718  41 82 00 14 */ beq lbl_800B47EC
/* 800B47DC 000B171C  80 1F 05 88 */ lwz r0, 0x588(r31)
/* 800B47E0 000B1720  54 00 01 8C */ rlwinm r0, r0, 0, 6, 6
/* 800B47E4 000B1724  7C 00 00 34 */ cntlzw r0, r0
/* 800B47E8 000B1728  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B47EC:
/* 800B47EC 000B172C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B47F0 000B1730  41 82 00 18 */ beq lbl_800B4808
/* 800B47F4 000B1734  7F E3 FB 78 */ mr r3, r31
/* 800B47F8 000B1738  48 00 4A 5D */ bl daAlink_c_NS_checkNoUpperAnime
/* 800B47FC 000B173C  30 03 FF FF */ addic r0, r3, -1
/* 800B4800 000B1740  7C 00 19 10 */ subfe r0, r0, r3
/* 800B4804 000B1744  54 03 06 3E */ clrlwi r3, r0, 0x18
lbl_800B4808:
/* 800B4808 000B1748  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B480C 000B174C  41 82 00 3C */ beq lbl_800B4848
/* 800B4810 000B1750  C0 3F 35 C0 */ lfs f1, 0x35c0(r31)
/* 800B4814 000B1754  C0 1F 35 B8 */ lfs f0, 0x35b8(r31)
/* 800B4818 000B1758  D0 01 00 08 */ stfs f0, 8(r1)
/* 800B481C 000B175C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800B4820 000B1760  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 800B4824 000B1764  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 800B4828 000B1768  38 61 00 08 */ addi r3, r1, 8
/* 800B482C 000B176C  48 29 29 0D */ bl PSVECSquareMag
/* 800B4830 000B1770  C0 02 92 B8 */ lfs f0, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800B4834 000B1774  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B4838 000B1778  7C 00 00 26 */ mfcr r0
/* 800B483C 000B177C  54 00 17 FE */ rlwinm r0, r0, 2, 0x1f, 0x1f
/* 800B4840 000B1780  7C 00 00 34 */ cntlzw r0, r0
/* 800B4844 000B1784  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B4848:
/* 800B4848 000B1788  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B484C 000B178C  41 82 00 10 */ beq lbl_800B485C
/* 800B4850 000B1790  A8 1F 31 26 */ lha r0, 0x3126(r31)
/* 800B4854 000B1794  7C 00 00 34 */ cntlzw r0, r0
/* 800B4858 000B1798  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B485C:
/* 800B485C 000B179C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B4860 000B17A0  41 82 00 10 */ beq lbl_800B4870
/* 800B4864 000B17A4  A8 1F 31 28 */ lha r0, 0x3128(r31)
/* 800B4868 000B17A8  7C 00 00 34 */ cntlzw r0, r0
/* 800B486C 000B17AC  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B4870:
/* 800B4870 000B17B0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B4874 000B17B4  41 82 00 10 */ beq lbl_800B4884
/* 800B4878 000B17B8  A8 1F 31 24 */ lha r0, 0x3124(r31)
/* 800B487C 000B17BC  7C 00 00 34 */ cntlzw r0, r0
/* 800B4880 000B17C0  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B4884:
/* 800B4884 000B17C4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B4888 000B17C8  41 82 00 14 */ beq lbl_800B489C
/* 800B488C 000B17CC  7F E3 FB 78 */ mr r3, r31
/* 800B4890 000B17D0  48 03 F4 C9 */ bl daAlink_c_NS_checkFishingRodAndLureItem
/* 800B4894 000B17D4  7C 60 00 34 */ cntlzw r0, r3
/* 800B4898 000B17D8  54 03 D9 7E */ srwi r3, r0, 5
lbl_800B489C:
/* 800B489C 000B17DC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B48A0 000B17E0  41 82 00 1C */ beq lbl_800B48BC
/* 800B48A4 000B17E4  C0 3F 2B A8 */ lfs f1, 0x2ba8(r31)
/* 800B48A8 000B17E8  C0 02 94 0C */ lfs f0, lbl_80452E0C-_SDA2_BASE_(r2)
/* 800B48AC 000B17EC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800B48B0 000B17F0  4C 41 13 82 */ cror 2, 1, 2
/* 800B48B4 000B17F4  7C 00 00 26 */ mfcr r0
/* 800B48B8 000B17F8  54 03 1F FE */ rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_800B48BC:
/* 800B48BC 000B17FC  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 800B48C0 000B1800  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800B48C4 000B1804  7C 08 03 A6 */ mtlr r0
/* 800B48C8 000B1808  38 21 00 20 */ addi r1, r1, 0x20
/* 800B48CC 000B180C  4E 80 00 20 */ blr