/* 8002419C 000210DC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800241A0 000210E0  7C 08 02 A6 */ mflr r0
/* 800241A4 000210E4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800241A8 000210E8  39 61 00 20 */ addi r11, r1, 0x20
/* 800241AC 000210EC  48 33 E0 2D */ bl _savegpr_28
/* 800241B0 000210F0  7C 7C 1B 78 */ mr r28, r3
/* 800241B4 000210F4  7C BD 2B 78 */ mr r29, r5
/* 800241B8 000210F8  7C DE 33 78 */ mr r30, r6
/* 800241BC 000210FC  7C FF 3B 78 */ mr r31, r7
/* 800241C0 00021100  48 34 49 6D */ bl strcpy
/* 800241C4 00021104  9B BC 00 0A */ stb r29, 0xa(r28)
/* 800241C8 00021108  B3 DC 00 08 */ sth r30, 8(r28)
/* 800241CC 0002110C  9B FC 00 0B */ stb r31, 0xb(r28)
/* 800241D0 00021110  39 61 00 20 */ addi r11, r1, 0x20
/* 800241D4 00021114  48 33 E0 51 */ bl _restgpr_28
/* 800241D8 00021118  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800241DC 0002111C  7C 08 03 A6 */ mtlr r0
/* 800241E0 00021120  38 21 00 20 */ addi r1, r1, 0x20
/* 800241E4 00021124  4E 80 00 20 */ blr