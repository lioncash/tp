/* 800F6E44 000F3D84  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F6E48 000F3D88  7C 08 02 A6 */ mflr r0
/* 800F6E4C 000F3D8C  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F6E50 000F3D90  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F6E54 000F3D94  7C 7F 1B 78 */ mr r31, r3
/* 800F6E58 000F3D98  38 80 00 12 */ li r4, 0x12
/* 800F6E5C 000F3D9C  4B FB C3 F5 */ bl setDoStatus__9daAlink_cFUc
/* 800F6E60 000F3DA0  7F E3 FB 78 */ mr r3, r31
/* 800F6E64 000F3DA4  4B FF D9 75 */ bl daAlink_c_NS_canoeCommon
/* 800F6E68 000F3DA8  2C 03 00 00 */ cmpwi r3, 0
/* 800F6E6C 000F3DAC  41 82 00 0C */ beq lbl_800F6E78
/* 800F6E70 000F3DB0  38 60 00 01 */ li r3, 1
/* 800F6E74 000F3DB4  48 00 00 28 */ b lbl_800F6E9C
lbl_800F6E78:
/* 800F6E78 000F3DB8  7F E3 FB 78 */ mr r3, r31
/* 800F6E7C 000F3DBC  4B FE 7F A1 */ bl daAlink_c_NS_cancelBowMove
/* 800F6E80 000F3DC0  7F E3 FB 78 */ mr r3, r31
/* 800F6E84 000F3DC4  4B FF DA A1 */ bl daAlink_c_NS_checkNextActionCanoe
/* 800F6E88 000F3DC8  2C 03 00 00 */ cmpwi r3, 0
/* 800F6E8C 000F3DCC  40 82 00 0C */ bne lbl_800F6E98
/* 800F6E90 000F3DD0  7F E3 FB 78 */ mr r3, r31
/* 800F6E94 000F3DD4  4B FF 81 BD */ bl daAlink_c_NS_setBodyAngleRideReadyAnime
lbl_800F6E98:
/* 800F6E98 000F3DD8  38 60 00 01 */ li r3, 1
lbl_800F6E9C:
/* 800F6E9C 000F3DDC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F6EA0 000F3DE0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F6EA4 000F3DE4  7C 08 03 A6 */ mtlr r0
/* 800F6EA8 000F3DE8  38 21 00 10 */ addi r1, r1, 0x10
/* 800F6EAC 000F3DEC  4E 80 00 20 */ blr
