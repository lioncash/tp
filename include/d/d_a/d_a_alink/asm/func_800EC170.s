/* 800EC170 000E90B0  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800EC174 000E90B4  7C 08 02 A6 */ mflr r0
/* 800EC178 000E90B8  90 01 00 14 */ stw r0, 0x14(r1)
/* 800EC17C 000E90BC  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800EC180 000E90C0  7C 7F 1B 78 */ mr r31, r3
/* 800EC184 000E90C4  38 00 00 04 */ li r0, 4
/* 800EC188 000E90C8  98 03 2F 99 */ stb r0, 0x2f99(r3)
/* 800EC18C 000E90CC  4B FF E6 B9 */ bl daAlink_c_NS_checkSumouVsActor
/* 800EC190 000E90D0  2C 03 00 00 */ cmpwi r3, 0
/* 800EC194 000E90D4  40 82 00 0C */ bne lbl_800EC1A0
/* 800EC198 000E90D8  38 60 00 01 */ li r3, 1
/* 800EC19C 000E90DC  48 00 00 5C */ b lbl_800EC1F8
lbl_800EC1A0:
/* 800EC1A0 000E90E0  A8 7F 30 08 */ lha r3, 0x3008(r31)
/* 800EC1A4 000E90E4  38 03 FF FF */ addi r0, r3, -1
/* 800EC1A8 000E90E8  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 800EC1AC 000E90EC  88 1F 05 6A */ lbz r0, 0x56a(r31)
/* 800EC1B0 000E90F0  28 00 00 1C */ cmplwi r0, 0x1c
/* 800EC1B4 000E90F4  41 82 00 14 */ beq lbl_800EC1C8
/* 800EC1B8 000E90F8  28 00 00 21 */ cmplwi r0, 0x21
/* 800EC1BC 000E90FC  41 82 00 0C */ beq lbl_800EC1C8
/* 800EC1C0 000E9100  28 00 00 1B */ cmplwi r0, 0x1b
/* 800EC1C4 000E9104  40 82 00 1C */ bne lbl_800EC1E0
lbl_800EC1C8:
/* 800EC1C8 000E9108  7F E3 FB 78 */ mr r3, r31
/* 800EC1CC 000E910C  38 80 00 00 */ li r4, 0
/* 800EC1D0 000E9110  38 A0 00 00 */ li r5, 0
/* 800EC1D4 000E9114  38 C0 00 00 */ li r6, 0
/* 800EC1D8 000E9118  4B FF F4 4D */ bl daAlink_c_NS_procSumouActionInit
/* 800EC1DC 000E911C  48 00 00 18 */ b lbl_800EC1F4
lbl_800EC1E0:
/* 800EC1E0 000E9120  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 800EC1E4 000E9124  2C 00 00 00 */ cmpwi r0, 0
/* 800EC1E8 000E9128  40 82 00 0C */ bne lbl_800EC1F4
/* 800EC1EC 000E912C  7F E3 FB 78 */ mr r3, r31
/* 800EC1F0 000E9130  4B FF F0 19 */ bl daAlink_c_NS_procSumouSideMoveInit
lbl_800EC1F4:
/* 800EC1F4 000E9134  38 60 00 01 */ li r3, 1
lbl_800EC1F8:
/* 800EC1F8 000E9138  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800EC1FC 000E913C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800EC200 000E9140  7C 08 03 A6 */ mtlr r0
/* 800EC204 000E9144  38 21 00 10 */ addi r1, r1, 0x10
/* 800EC208 000E9148  4E 80 00 20 */ blr
