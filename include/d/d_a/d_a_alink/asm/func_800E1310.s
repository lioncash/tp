/* 800E1310 000DE250  3C 60 80 39 */ lis r3, lbl_8038EAFC@ha
/* 800E1314 000DE254  38 63 EA FC */ addi r3, r3, lbl_8038EAFC@l
/* 800E1318 000DE258  C0 23 00 28 */ lfs f1, 0x28(r3)
/* 800E131C 000DE25C  4E 80 00 20 */ blr