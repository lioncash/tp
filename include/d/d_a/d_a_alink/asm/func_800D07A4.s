/* 800D07A4 000CD6E4  38 80 00 00 */ li r4, 0
/* 800D07A8 000CD6E8  A0 03 2F E8 */ lhz r0, 0x2fe8(r3)
/* 800D07AC 000CD6EC  28 00 00 26 */ cmplwi r0, 0x26
/* 800D07B0 000CD6F0  41 82 00 0C */ beq lbl_800D07BC
/* 800D07B4 000CD6F4  28 00 00 27 */ cmplwi r0, 0x27
/* 800D07B8 000CD6F8  40 82 00 14 */ bne lbl_800D07CC
lbl_800D07BC:
/* 800D07BC 000CD6FC  80 03 31 98 */ lwz r0, 0x3198(r3)
/* 800D07C0 000CD700  2C 00 00 02 */ cmpwi r0, 2
/* 800D07C4 000CD704  41 82 00 08 */ beq lbl_800D07CC
/* 800D07C8 000CD708  38 80 00 01 */ li r4, 1
lbl_800D07CC:
/* 800D07CC 000CD70C  54 83 06 3E */ clrlwi r3, r4, 0x18
/* 800D07D0 000CD710  4E 80 00 20 */ blr