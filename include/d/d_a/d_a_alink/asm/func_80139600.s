/* 80139600 00136540  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 80139604 00136544  7C 08 02 A6 */ mflr r0
/* 80139608 00136548  90 01 00 24 */ stw r0, 0x24(r1)
/* 8013960C 0013654C  93 E1 00 1C */ stw r31, 0x1c(r1)
/* 80139610 00136550  7C 7F 1B 78 */ mr r31, r3
/* 80139614 00136554  28 04 00 00 */ cmplwi r4, 0
/* 80139618 00136558  41 82 00 C8 */ beq lbl_801396E0
/* 8013961C 0013655C  C0 04 05 68 */ lfs f0, 0x568(r4)
/* 80139620 00136560  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 80139624 00136564  C0 04 05 6C */ lfs f0, 0x56c(r4)
/* 80139628 00136568  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 8013962C 0013656C  C0 04 05 70 */ lfs f0, 0x570(r4)
/* 80139630 00136570  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 80139634 00136574  38 BF 04 D0 */ addi r5, r31, 0x4d0
/* 80139638 00136578  C0 1F 04 D0 */ lfs f0, 0x4d0(r31)
/* 8013963C 0013657C  D0 01 00 08 */ stfs f0, 8(r1)
/* 80139640 00136580  C0 1F 04 D4 */ lfs f0, 0x4d4(r31)
/* 80139644 00136584  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 80139648 00136588  C0 1F 04 D8 */ lfs f0, 0x4d8(r31)
/* 8013964C 0013658C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80139650 00136590  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80139654 00136594  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80139658 00136598  3C 80 80 44 */ lis r4, lbl_80439A20@ha
/* 8013965C 0013659C  38 84 9A 20 */ addi r4, r4, lbl_80439A20@l
/* 80139660 001365A0  7C 04 04 2E */ lfsx f0, r4, r0
/* 80139664 001365A4  C0 3F 04 D0 */ lfs f1, 0x4d0(r31)
/* 80139668 001365A8  C0 42 93 B4 */ lfs f2, lbl_80452DB4-_SDA2_BASE_(r2)
/* 8013966C 001365AC  EC 02 00 32 */ fmuls f0, f2, f0
/* 80139670 001365B0  EC 01 00 28 */ fsubs f0, f1, f0
/* 80139674 001365B4  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 80139678 001365B8  C0 3F 04 D4 */ lfs f1, 0x4d4(r31)
/* 8013967C 001365BC  C0 02 97 AC */ lfs f0, lbl_804531AC-_SDA2_BASE_(r2)
/* 80139680 001365C0  EC 01 00 28 */ fsubs f0, f1, f0
/* 80139684 001365C4  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 80139688 001365C8  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 8013968C 001365CC  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 80139690 001365D0  7C 84 02 14 */ add r4, r4, r0
/* 80139694 001365D4  C0 04 00 04 */ lfs f0, 4(r4)
/* 80139698 001365D8  C0 3F 04 D8 */ lfs f1, 0x4d8(r31)
/* 8013969C 001365DC  EC 02 00 32 */ fmuls f0, f2, f0
/* 801396A0 001365E0  EC 01 00 28 */ fsubs f0, f1, f0
/* 801396A4 001365E4  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 801396A8 001365E8  38 9F 35 40 */ addi r4, r31, 0x3540
/* 801396AC 001365EC  4B F6 8A ED */ bl daAlink_c_NS_commonLineCheck
/* 801396B0 001365F0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 801396B4 001365F4  41 82 00 24 */ beq lbl_801396D8
/* 801396B8 001365F8  C0 01 00 08 */ lfs f0, 8(r1)
/* 801396BC 001365FC  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 801396C0 00136600  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 801396C4 00136604  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 801396C8 00136608  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 801396CC 0013660C  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 801396D0 00136610  38 60 00 00 */ li r3, 0
/* 801396D4 00136614  48 00 00 10 */ b lbl_801396E4
lbl_801396D8:
/* 801396D8 00136618  38 60 00 01 */ li r3, 1
/* 801396DC 0013661C  48 00 00 08 */ b lbl_801396E4
lbl_801396E0:
/* 801396E0 00136620  38 60 00 00 */ li r3, 0
lbl_801396E4:
/* 801396E4 00136624  83 E1 00 1C */ lwz r31, 0x1c(r1)
/* 801396E8 00136628  80 01 00 24 */ lwz r0, 0x24(r1)
/* 801396EC 0013662C  7C 08 03 A6 */ mtlr r0
/* 801396F0 00136630  38 21 00 20 */ addi r1, r1, 0x20
/* 801396F4 00136634  4E 80 00 20 */ blr