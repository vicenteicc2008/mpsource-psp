# Mario Party (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "globals.inc"
.include "macros.inc"

glabel func_800174C0
/* 0180C0 800174C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0180C4 800174C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0180C8 800174C8 AFB00010 */  sw    $s0, 0x10($sp)
/* 0180CC 800174CC 0C00516C */  jal   ReadMainFS
/* 0180D0 800174D0 00A08021 */   addu  $s0, $a1, $zero
/* 0180D4 800174D4 00402021 */  addu  $a0, $v0, $zero
/* 0180D8 800174D8 0C008F05 */  jal   LoadFormBinary
/* 0180DC 800174DC 02002821 */   addu  $a1, $s0, $zero
/* 0180E0 800174E0 3042FFFF */  andi  $v0, $v0, 0xffff
/* 0180E4 800174E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0180E8 800174E8 8FB00010 */  lw    $s0, 0x10($sp)
/* 0180EC 800174EC 03E00008 */  jr    $ra
/* 0180F0 800174F0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800174F4
/* 0180F4 800174F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0180F8 800174F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0180FC 800174FC AFB00010 */  sw    $s0, 0x10($sp)
/* 018100 80017500 0C00516C */  jal   ReadMainFS
/* 018104 80017504 00A08021 */   addu  $s0, $a1, $zero
/* 018108 80017508 00402021 */  addu  $a0, $v0, $zero
/* 01810C 8001750C 0C008F05 */  jal   LoadFormBinary
/* 018110 80017510 02002821 */   addu  $a1, $s0, $zero
/* 018114 80017514 3042FFFF */  andi  $v0, $v0, 0xffff
/* 018118 80017518 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01811C 8001751C 8FB00010 */  lw    $s0, 0x10($sp)
/* 018120 80017520 03E00008 */  jr    $ra
/* 018124 80017524 27BD0018 */   addiu $sp, $sp, 0x18

LoadFormFile:
/* 018128 80017528 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 01812C 8001752C AFBF0014 */  sw    $ra, 0x14($sp)
/* 018130 80017530 AFB00010 */  sw    $s0, 0x10($sp)
/* 018134 80017534 0C00516C */  jal   ReadMainFS
/* 018138 80017538 00A08021 */   addu  $s0, $a1, $zero
/* 01813C 8001753C 00402021 */  addu  $a0, $v0, $zero
/* 018140 80017540 0C008F05 */  jal   LoadFormBinary
/* 018144 80017544 02002821 */   addu  $a1, $s0, $zero
/* 018148 80017548 3042FFFF */  andi  $v0, $v0, 0xffff
/* 01814C 8001754C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 018150 80017550 8FB00010 */  lw    $s0, 0x10($sp)
/* 018154 80017554 03E00008 */  jr    $ra
/* 018158 80017558 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8001755C
/* 01815C 8001755C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 018160 80017560 AFBF0010 */  sw    $ra, 0x10($sp)
/* 018164 80017564 0C00516C */  jal   ReadMainFS
/* 018168 80017568 00000000 */   nop   
/* 01816C 8001756C 00402021 */  addu  $a0, $v0, $zero
/* 018170 80017570 0C008F05 */  jal   LoadFormBinary
/* 018174 80017574 2405001D */   li    $a1, 29
/* 018178 80017578 00021400 */  sll   $v0, $v0, 0x10
/* 01817C 8001757C 8FBF0010 */  lw    $ra, 0x10($sp)
/* 018180 80017580 00021403 */  sra   $v0, $v0, 0x10
/* 018184 80017584 03E00008 */  jr    $ra
/* 018188 80017588 27BD0018 */   addiu $sp, $sp, 0x18

GetRandomByte:
/* 01818C 8001758C 3C02800C */  lui   $v0, %hi(D_800C2FF4) # $v0, 0x800c
/* 018190 80017590 8C422FF4 */  lw    $v0, %lo(D_800C2FF4)($v0)
/* 018194 80017594 3C0341C6 */  lui   $v1, (0x41C64E6D >> 16) # lui $v1, 0x41c6
/* 018198 80017598 34634E6D */  ori   $v1, (0x41C64E6D & 0xFFFF) # ori $v1, $v1, 0x4e6d
/* 01819C 8001759C 00430018 */  mult  $v0, $v1
/* 0181A0 800175A0 00001012 */  mflo  $v0
/* 0181A4 800175A4 24433039 */  addiu $v1, $v0, 0x3039
/* 0181A8 800175A8 3C01800C */  lui   $at, %hi(D_800C2FF4) # $at, 0x800c
/* 0181AC 800175AC AC232FF4 */  sw    $v1, %lo(D_800C2FF4)($at)
/* 0181B0 800175B0 2442303A */  addiu $v0, $v0, 0x303a
/* 0181B4 800175B4 00021402 */  srl   $v0, $v0, 0x10
/* 0181B8 800175B8 03E00008 */  jr    $ra
/* 0181BC 800175BC 304200FF */   andi  $v0, $v0, 0xff

LoadOverlay:
/* 0181C0 800175C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0181C4 800175C4 AFBF0018 */  sw    $ra, 0x18($sp)
/* 0181C8 800175C8 AFB10014 */  sw    $s1, 0x14($sp)
/* 0181CC 800175CC AFB00010 */  sw    $s0, 0x10($sp)
/* 0181D0 800175D0 000410C0 */  sll   $v0, $a0, 3
/* 0181D4 800175D4 00441021 */  addu  $v0, $v0, $a0
/* 0181D8 800175D8 00021080 */  sll   $v0, $v0, 2
/* 0181DC 800175DC 3C06800C */  lui   $a2, 0x800c
/* 0181E0 800175E0 00C23021 */  addu  $a2, $a2, $v0
/* 0181E4 800175E4 8CC61C74 */  lw    $a2, 0x1c74($a2)
/* 0181E8 800175E8 3C03800C */  lui   $v1, 0x800c
/* 0181EC 800175EC 00621821 */  addu  $v1, $v1, $v0
/* 0181F0 800175F0 8C631C78 */  lw    $v1, 0x1c78($v1)
/* 0181F4 800175F4 3C10800C */  lui   $s0, 0x800c
/* 0181F8 800175F8 02028021 */  addu  $s0, $s0, $v0
/* 0181FC 800175FC 8E101C90 */  lw    $s0, 0x1c90($s0)
/* 018200 80017600 3C11800C */  lui   $s1, 0x800c
/* 018204 80017604 02228821 */  addu  $s1, $s1, $v0
/* 018208 80017608 8E311C94 */  lw    $s1, 0x1c94($s1)
/* 01820C 8001760C 00C02021 */  addu  $a0, $a2, $zero
/* 018210 80017610 3C05800C */  lui   $a1, 0x800c
/* 018214 80017614 00A22821 */  addu  $a1, $a1, $v0
/* 018218 80017618 8CA51C7C */  lw    $a1, 0x1c7c($a1)
/* 01821C 8001761C 0C018822 */  jal   ReadFromRom
/* 018220 80017620 00663023 */   subu  $a2, $v1, $a2
/* 018224 80017624 0211102B */  sltu  $v0, $s0, $s1
/* 018228 80017628 10400006 */  beqz  $v0, .L80017644
/* 01822C 8001762C 02001821 */   addu  $v1, $s0, $zero
.L80017630:
/* 018230 80017630 A0600000 */  sb    $zero, ($v1)
/* 018234 80017634 26100001 */  addiu $s0, $s0, 1
/* 018238 80017638 0211102B */  sltu  $v0, $s0, $s1
/* 01823C 8001763C 1440FFFC */  bnez  $v0, .L80017630
/* 018240 80017640 24630001 */   addiu $v1, $v1, 1
.L80017644:
/* 018244 80017644 3C01800C */  lui   $at, %hi(D_800C1C70) # $at, 0x800c
/* 018248 80017648 A0201C70 */  sb    $zero, %lo(D_800C1C70)($at)
/* 01824C 8001764C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 018250 80017650 8FB10014 */  lw    $s1, 0x14($sp)
/* 018254 80017654 8FB00010 */  lw    $s0, 0x10($sp)
/* 018258 80017658 03E00008 */  jr    $ra
/* 01825C 8001765C 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80017660
/* 018260 80017660 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 018264 80017664 AFBF0010 */  sw    $ra, 0x10($sp)
/* 018268 80017668 C7A00028 */  lwc1  $f0, 0x28($sp)
/* 01826C 8001766C 308200FF */  andi  $v0, $a0, 0xff
/* 018270 80017670 00021100 */  sll   $v0, $v0, 4
/* 018274 80017674 3C01800C */  lui   $at, 0x800c
/* 018278 80017678 00220821 */  addu  $at, $at, $v0
/* 01827C 8001767C AC252F94 */  sw    $a1, 0x2f94($at)
/* 018280 80017680 3C01800C */  lui   $at, 0x800c
/* 018284 80017684 00220821 */  addu  $at, $at, $v0
/* 018288 80017688 AC262F98 */  sw    $a2, 0x2f98($at)
/* 01828C 8001768C 3C01800C */  lui   $at, 0x800c
/* 018290 80017690 00220821 */  addu  $at, $at, $v0
/* 018294 80017694 AC272F9C */  sw    $a3, 0x2f9c($at)
/* 018298 80017698 3C01800C */  lui   $at, 0x800c
/* 01829C 8001769C 00220821 */  addu  $at, $at, $v0
/* 0182A0 800176A0 E4202FA0 */  swc1  $f0, 0x2fa0($at)
/* 0182A4 800176A4 3C05800C */  lui   $a1, %hi(D_800C2F94) # $a1, 0x800c
/* 0182A8 800176A8 24A52F94 */  addiu $a1, %lo(D_800C2F94) # addiu $a1, $a1, 0x2f94
/* 0182AC 800176AC 308400FF */  andi  $a0, $a0, 0xff
/* 0182B0 800176B0 0C007535 */  jal   func_8001D4D4
/* 0182B4 800176B4 00452821 */   addu  $a1, $v0, $a1
/* 0182B8 800176B8 8FBF0010 */  lw    $ra, 0x10($sp)
/* 0182BC 800176BC 03E00008 */  jr    $ra
/* 0182C0 800176C0 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800176C4
/* 0182C4 800176C4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0182C8 800176C8 AFBF0010 */  sw    $ra, 0x10($sp)
/* 0182CC 800176CC C7A00028 */  lwc1  $f0, 0x28($sp)
/* 0182D0 800176D0 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 0182D4 800176D4 C7A40030 */  lwc1  $f4, 0x30($sp)
/* 0182D8 800176D8 308300FF */  andi  $v1, $a0, 0xff
/* 0182DC 800176DC 00031040 */  sll   $v0, $v1, 1
/* 0182E0 800176E0 00431021 */  addu  $v0, $v0, $v1
/* 0182E4 800176E4 00021080 */  sll   $v0, $v0, 2
/* 0182E8 800176E8 3C01800C */  lui   $at, 0x800c
/* 0182EC 800176EC 00220821 */  addu  $at, $at, $v0
/* 0182F0 800176F0 AC252F04 */  sw    $a1, 0x2f04($at)
/* 0182F4 800176F4 3C01800C */  lui   $at, 0x800c
/* 0182F8 800176F8 00220821 */  addu  $at, $at, $v0
/* 0182FC 800176FC AC262F08 */  sw    $a2, 0x2f08($at)
/* 018300 80017700 3C01800C */  lui   $at, 0x800c
/* 018304 80017704 00220821 */  addu  $at, $at, $v0
/* 018308 80017708 AC272F0C */  sw    $a3, 0x2f0c($at)
/* 01830C 8001770C 3C01800C */  lui   $at, 0x800c
/* 018310 80017710 00220821 */  addu  $at, $at, $v0
/* 018314 80017714 E4202F4C */  swc1  $f0, 0x2f4c($at)
/* 018318 80017718 3C01800C */  lui   $at, 0x800c
/* 01831C 8001771C 00220821 */  addu  $at, $at, $v0
/* 018320 80017720 E4222F50 */  swc1  $f2, 0x2f50($at)
/* 018324 80017724 3C01800C */  lui   $at, 0x800c
/* 018328 80017728 00220821 */  addu  $at, $at, $v0
/* 01832C 8001772C E4242F54 */  swc1  $f4, 0x2f54($at)
/* 018330 80017730 3C05800C */  lui   $a1, %hi(D_800C2F04) # $a1, 0x800c
/* 018334 80017734 24A52F04 */  addiu $a1, %lo(D_800C2F04) # addiu $a1, $a1, 0x2f04
/* 018338 80017738 3C06800C */  lui   $a2, %hi(D_800C2F4C) # $a2, 0x800c
/* 01833C 8001773C 24C62F4C */  addiu $a2, %lo(D_800C2F4C) # addiu $a2, $a2, 0x2f4c
/* 018340 80017740 308400FF */  andi  $a0, $a0, 0xff
/* 018344 80017744 00452821 */  addu  $a1, $v0, $a1
/* 018348 80017748 0C007548 */  jal   func_8001D520
/* 01834C 8001774C 00463021 */   addu  $a2, $v0, $a2
/* 018350 80017750 8FBF0010 */  lw    $ra, 0x10($sp)
/* 018354 80017754 03E00008 */  jr    $ra
/* 018358 80017758 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8001775C
/* 01835C 8001775C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 018360 80017760 AFBF0018 */  sw    $ra, 0x18($sp)
/* 018364 80017764 AFB10014 */  sw    $s1, 0x14($sp)
/* 018368 80017768 AFB00010 */  sw    $s0, 0x10($sp)
/* 01836C 8001776C 00808821 */  addu  $s1, $a0, $zero
/* 018370 80017770 00A08021 */  addu  $s0, $a1, $zero
/* 018374 80017774 0C005D57 */  jal   func_8001755C
/* 018378 80017778 00C02021 */   addu  $a0, $a2, $zero
/* 01837C 8001777C 00402021 */  addu  $a0, $v0, $zero
/* 018380 80017780 00041400 */  sll   $v0, $a0, 0x10
/* 018384 80017784 04400005 */  bltz  $v0, .L8001779C
/* 018388 80017788 3202FFFF */   andi  $v0, $s0, 0xffff
/* 01838C 8001778C 8E230048 */  lw    $v1, 0x48($s1)
/* 018390 80017790 00021040 */  sll   $v0, $v0, 1
/* 018394 80017794 00431021 */  addu  $v0, $v0, $v1
/* 018398 80017798 A4440000 */  sh    $a0, ($v0)
.L8001779C:
/* 01839C 8001779C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 0183A0 800177A0 8FB10014 */  lw    $s1, 0x14($sp)
/* 0183A4 800177A4 8FB00010 */  lw    $s0, 0x10($sp)
/* 0183A8 800177A8 03E00008 */  jr    $ra
/* 0183AC 800177AC 27BD0020 */   addiu $sp, $sp, 0x20

/* 0183B0 800177B0 3C03800F */  lui   $v1, %hi(D_800F3778) # $v1, 0x800f
/* 0183B4 800177B4 84633778 */  lh    $v1, %lo(D_800F3778)($v1)
/* 0183B8 800177B8 3C02800C */  lui   $v0, %hi(D_800C1C70) # $v0, 0x800c
/* 0183BC 800177BC 90421C70 */  lbu   $v0, %lo(D_800C1C70)($v0)
/* 0183C0 800177C0 0043102A */  slt   $v0, $v0, $v1
/* 0183C4 800177C4 10400008 */  beqz  $v0, .L800177E8
/* 0183C8 800177C8 2403FFFF */   li    $v1, -1
/* 0183CC 800177CC 3C03800C */  lui   $v1, %hi(D_800C1C70) # $v1, 0x800c
/* 0183D0 800177D0 90631C70 */  lbu   $v1, %lo(D_800C1C70)($v1)
/* 0183D4 800177D4 24620001 */  addiu $v0, $v1, 1
/* 0183D8 800177D8 3C01800C */  lui   $at, %hi(D_800C1C70) # $at, 0x800c
/* 0183DC 800177DC A0221C70 */  sb    $v0, %lo(D_800C1C70)($at)
/* 0183E0 800177E0 08005DFB */  j     func_800177EC
/* 0183E4 800177E4 00031600 */   sll   $v0, $v1, 0x18

.L800177E8:
/* 0183E8 800177E8 00031600 */  sll   $v0, $v1, 0x18
glabel func_800177EC
/* 0183EC 800177EC 03E00008 */  jr    $ra
/* 0183F0 800177F0 00021603 */   sra   $v0, $v0, 0x18

ReadImgPackand:
/* 0183F4 800177F4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0183F8 800177F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0183FC 800177FC AFB20018 */  sw    $s2, 0x18($sp)
/* 018400 80017800 AFB10014 */  sw    $s1, 0x14($sp)
/* 018404 80017804 AFB00010 */  sw    $s0, 0x10($sp)
/* 018408 80017808 00A08021 */  addu  $s0, $a1, $zero
/* 01840C 8001780C 0C00516C */  jal   ReadMainFS
/* 018410 80017810 00C09021 */   addu  $s2, $a2, $zero
/* 018414 80017814 00408821 */  addu  $s1, $v0, $zero
/* 018418 80017818 02202021 */  addu  $a0, $s1, $zero
/* 01841C 8001781C 02002821 */  addu  $a1, $s0, $zero
/* 018420 80017820 0C007803 */  jal   ImgPackrelated
/* 018424 80017824 324600FF */   andi  $a2, $s2, 0xff
/* 018428 80017828 00408021 */  addu  $s0, $v0, $zero
/* 01842C 8001782C 0C00EDB2 */  jal   FreePerm
/* 018430 80017830 02202021 */   addu  $a0, $s1, $zero
/* 018434 80017834 3202FFFF */  andi  $v0, $s0, 0xffff
/* 018438 80017838 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01843C 8001783C 8FB20018 */  lw    $s2, 0x18($sp)
/* 018440 80017840 8FB10014 */  lw    $s1, 0x14($sp)
/* 018444 80017844 8FB00010 */  lw    $s0, 0x10($sp)
/* 018448 80017848 03E00008 */  jr    $ra
/* 01844C 8001784C 27BD0020 */   addiu $sp, $sp, 0x20

glabel func_80017850
/* 018450 80017850 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 018454 80017854 AFBF0018 */  sw    $ra, 0x18($sp)
/* 018458 80017858 AFB10014 */  sw    $s1, 0x14($sp)
/* 01845C 8001785C AFB00010 */  sw    $s0, 0x10($sp)
/* 018460 80017860 00808021 */  addu  $s0, $a0, $zero
/* 018464 80017864 00C08821 */  addu  $s1, $a2, $zero
/* 018468 80017868 0C00516C */  jal   ReadMainFS
/* 01846C 8001786C 00A02021 */   addu  $a0, $a1, $zero
/* 018470 80017870 02002021 */  addu  $a0, $s0, $zero
/* 018474 80017874 00402821 */  addu  $a1, $v0, $zero
/* 018478 80017878 00003021 */  addu  $a2, $zero, $zero
/* 01847C 8001787C 0C00E2A7 */  jal   func_80038A9C
/* 018480 80017880 02203821 */   addu  $a3, $s1, $zero
/* 018484 80017884 00021400 */  sll   $v0, $v0, 0x10
/* 018488 80017888 00021403 */  sra   $v0, $v0, 0x10
/* 01848C 8001788C 8FBF0018 */  lw    $ra, 0x18($sp)
/* 018490 80017890 8FB10014 */  lw    $s1, 0x14($sp)
/* 018494 80017894 8FB00010 */  lw    $s0, 0x10($sp)
/* 018498 80017898 03E00008 */  jr    $ra
/* 01849C 8001789C 27BD0020 */   addiu $sp, $sp, 0x20
