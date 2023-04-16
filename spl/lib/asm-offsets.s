	.arch armv7-a
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 2	@ Tag_ABI_PCS_wchar_t
	.file	"asm-offsets.c"
@ GNU C11 (Linaro GCC 7.5-2019.12) version 7.5.0 (arm-linux-gnueabihf)
@	compiled by GNU C version 4.8.4, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version none
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ opções passadas:  -nostdinc -I spl/include -I include
@ -I ./arch/arm/include -imultilib . -imultiarch arm-linux-gnueabihf
@ -iprefix /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/7.5.0/
@ -isysroot /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/../arm-linux-gnueabihf/libc
@ -D __KERNEL__ -D __UBOOT__ -D CONFIG_SPL_BUILD -D __ARM__
@ -D __LINUX_ARM_ARCH__=7 -D DO_DEPS_ONLY -D KBUILD_BASENAME="asm_offsets"
@ -D KBUILD_MODNAME="asm_offsets"
@ -isystem /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/7.5.0/include
@ -include ./include/linux/kconfig.h -MD spl/./lib/.asm-offsets.s.d
@ lib/asm-offsets.c -mthumb -mthumb-interwork -mabi=aapcs-linux
@ -mno-unaligned-access -mfloat-abi=soft -march=armv7-a
@ -mtune=generic-armv7-a -mfpu=vfpv3-d16 -mtls-dialect=gnu
@ -auxbase-strip spl/./lib/asm-offsets.s -g -Os -Wall -Wstrict-prototypes
@ -Wno-format-security -Wno-maybe-uninitialized -Wno-format-nonliteral
@ -Wno-unused-but-set-variable -Werror=date-time -std=gnu11 -fno-builtin
@ -ffreestanding -fshort-wchar -fno-strict-aliasing -fno-PIE
@ -fno-stack-protector -fno-delete-null-pointer-checks -fstack-usage
@ -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -fverbose-asm
@ opções habilitadas:  -faggressive-loop-optimizations -falign-jumps
@ -falign-labels -falign-loops -fauto-inc-dec -fbranch-count-reg
@ -fcaller-saves -fchkp-check-incomplete-type -fchkp-check-read
@ -fchkp-check-write -fchkp-instrument-calls -fchkp-narrow-bounds
@ -fchkp-optimize -fchkp-store-bounds -fchkp-use-static-bounds
@ -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdata-sections -fdefer-pop
@ -fdevirtualize -fdevirtualize-speculatively -fdwarf2-cfi-asm
@ -fearly-inlining -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse
@ -ffunction-sections -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
@ -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
@ -fif-conversion2 -findirect-inlining -finline -finline-atomics
@ -finline-functions -finline-functions-called-once
@ -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
@ -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
@ -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
@ -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
@ -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
@ -freg-struct-return -freorder-blocks -freorder-functions
@ -frerun-cse-after-loop -fsched-critical-path-heuristic
@ -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
@ -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
@ -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
@ -fschedule-insns2 -fsection-anchors -fsemantic-interposition
@ -fshow-column -fshrink-wrap-separate -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
@ -fstdarg-opt -fstore-merging -fstrict-overflow
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -ftree-vrp -funit-at-a-time -fvar-tracking -fvar-tracking-assignments
@ -fverbose-asm -fzero-initialized-in-bss -masm-syntax-unified -mglibc
@ -mlittle-endian -mpic-data-is-text-relative -msched-prolog -mthumb
@ -mvectorize-with-neon-quad

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
.LFB135:
	.file 1 "lib/asm-offsets.c"
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
@ lib/asm-offsets.c:23: 	DEFINE(GENERATED_GBL_DATA_SIZE,
	.loc 1 23 0
	.syntax unified
@ 23 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_GBL_DATA_SIZE #240 (sizeof(struct global_data) + 15) & ~15"	@
@ 0 "" 2
@ lib/asm-offsets.c:26: 	DEFINE(GENERATED_BD_INFO_SIZE,
	.loc 1 26 0
@ 26 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_BD_INFO_SIZE #80 (sizeof(struct bd_info) + 15) & ~15"	@
@ 0 "" 2
@ lib/asm-offsets.c:29: 	DEFINE(GD_SIZE, sizeof(struct global_data));
	.loc 1 29 0
@ 29 "lib/asm-offsets.c" 1
	
.ascii "->GD_SIZE #240 sizeof(struct global_data)"	@
@ 0 "" 2
@ lib/asm-offsets.c:31: 	DEFINE(GD_BD, offsetof(struct global_data, bd));
	.loc 1 31 0
@ 31 "lib/asm-offsets.c" 1
	
.ascii "->GD_BD #0 offsetof(struct global_data, bd)"	@
@ 0 "" 2
@ lib/asm-offsets.c:33: 	DEFINE(GD_MALLOC_BASE, offsetof(struct global_data, malloc_base));
	.loc 1 33 0
@ 33 "lib/asm-offsets.c" 1
	
.ascii "->GD_MALLOC_BASE #172 offsetof(struct global_data, malloc_base)"	@
@ 0 "" 2
@ lib/asm-offsets.c:36: 	DEFINE(GD_RELOCADDR, offsetof(struct global_data, relocaddr));
	.loc 1 36 0
@ 36 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOCADDR #60 offsetof(struct global_data, relocaddr)"	@
@ 0 "" 2
@ lib/asm-offsets.c:38: 	DEFINE(GD_RELOC_OFF, offsetof(struct global_data, reloc_off));
	.loc 1 38 0
@ 38 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOC_OFF #80 offsetof(struct global_data, reloc_off)"	@
@ 0 "" 2
@ lib/asm-offsets.c:40: 	DEFINE(GD_START_ADDR_SP, offsetof(struct global_data, start_addr_sp));
	.loc 1 40 0
@ 40 "lib/asm-offsets.c" 1
	
.ascii "->GD_START_ADDR_SP #76 offsetof(struct global_data, start_addr_sp)"	@
@ 0 "" 2
@ lib/asm-offsets.c:42: 	DEFINE(GD_NEW_GD, offsetof(struct global_data, new_gd));
	.loc 1 42 0
@ 42 "lib/asm-offsets.c" 1
	
.ascii "->GD_NEW_GD #84 offsetof(struct global_data, new_gd)"	@
@ 0 "" 2
@ lib/asm-offsets.c:45: }
	.loc 1 45 0
	.thumb
	.syntax unified
	movs	r0, #0	@,
	bx	lr	@
	.cfi_endproc
.LFE135:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "include/asm-generic/int-ll64.h"
	.file 3 "include/linux/types.h"
	.file 4 "include/errno.h"
	.file 5 "include/linux/string.h"
	.file 6 "./arch/arm/include/asm/u-boot-arm.h"
	.file 7 "include/env_internal.h"
	.file 8 "include/linux/libfdt_env.h"
	.file 9 "include/linux/../../scripts/dtc/libfdt/fdt.h"
	.file 10 "include/linux/libfdt.h"
	.file 11 "include/fdtdec.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x239
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	0x4e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x2
	.byte	0x13
	.4byte	0x73
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	0x73
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF10
	.byte	0x2
	.byte	0x19
	.4byte	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x7
	.ascii	"u8\000"
	.byte	0x2
	.byte	0x24
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x5b
	.4byte	0x2c
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x90
	.4byte	0x86
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xb
	.4byte	0x33
	.uleb128 0x9
	.4byte	0x55
	.4byte	0xda
	.uleb128 0xa
	.4byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0xca
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x4
	.byte	0x19
	.4byte	0xda
	.ascii	"\000"
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xb
	.4byte	0x48
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.byte	0x12
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x13
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.byte	0x14
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0x15
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x17
	.4byte	0xa2
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.byte	0x18
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0x9
	.4byte	0x7a
	.4byte	0x155
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x14a
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x7
	.byte	0x75
	.4byte	0x155
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x8
	.byte	0x12
	.4byte	0xad
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x28
	.byte	0x9
	.byte	0xc
	.4byte	0x1f5
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x9
	.byte	0xd
	.4byte	0x165
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x9
	.byte	0xe
	.4byte	0x165
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF29
	.byte	0x9
	.byte	0xf
	.4byte	0x165
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x9
	.byte	0x10
	.4byte	0x165
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x9
	.byte	0x11
	.4byte	0x165
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x9
	.byte	0x12
	.4byte	0x165
	.byte	0x14
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x9
	.byte	0x13
	.4byte	0x165
	.byte	0x18
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x9
	.byte	0x16
	.4byte	0x165
	.byte	0x1c
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x9
	.byte	0x19
	.4byte	0x165
	.byte	0x20
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x9
	.byte	0x1c
	.4byte	0x165
	.byte	0x24
	.byte	0
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0xa
	.byte	0xb
	.4byte	0x200
	.uleb128 0x4
	.byte	0x4
	.4byte	0x170
	.uleb128 0x9
	.4byte	0x98
	.4byte	0x211
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0xb
	.byte	0x72
	.4byte	0x206
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0xb
	.byte	0x73
	.4byte	0x206
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.byte	0x14
	.4byte	0x33
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"error_message\000"
.LASF10:
	.ascii	"__u32\000"
.LASF39:
	.ascii	"__dtb_dt_spl_begin\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF15:
	.ascii	"errno\000"
.LASF29:
	.ascii	"off_dt_struct\000"
.LASF8:
	.ascii	"short int\000"
.LASF26:
	.ascii	"fdt32_t\000"
.LASF40:
	.ascii	"GNU C11 7.5.0 -mthumb -mthumb-interwork -mabi=aapcs"
	.ascii	"-linux -mno-unaligned-access -mfloat-abi=soft -marc"
	.ascii	"h=armv7-a -mtune=generic-armv7-a -mfpu=vfpv3-d16 -m"
	.ascii	"tls-dialect=gnu -g -Os -std=gnu11 -fno-builtin -ffr"
	.ascii	"eestanding -fshort-wchar -fno-strict-aliasing -fno-"
	.ascii	"PIE -fno-stack-protector -fno-delete-null-pointer-c"
	.ascii	"hecks -fstack-usage -ffunction-sections -fdata-sect"
	.ascii	"ions -fno-common -ffixed-r9\000"
.LASF31:
	.ascii	"off_mem_rsvmap\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"IRQ_STACK_START\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF36:
	.ascii	"size_dt_struct\000"
.LASF1:
	.ascii	"long unsigned int\000"
.LASF16:
	.ascii	"___strtok\000"
.LASF18:
	.ascii	"FIQ_STACK_START\000"
.LASF13:
	.ascii	"__be32\000"
.LASF44:
	.ascii	"fdt_header\000"
.LASF45:
	.ascii	"main\000"
.LASF37:
	.ascii	"working_fdt\000"
.LASF22:
	.ascii	"_datarelro_start_ofs\000"
.LASF32:
	.ascii	"version\000"
.LASF12:
	.ascii	"ulong\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF19:
	.ascii	"_datarel_start_ofs\000"
.LASF27:
	.ascii	"magic\000"
.LASF4:
	.ascii	"char\000"
.LASF38:
	.ascii	"__dtb_dt_begin\000"
.LASF23:
	.ascii	"IRQ_STACK_START_IN\000"
.LASF5:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"__u8\000"
.LASF42:
	.ascii	"/home/neuberfran/projects3/sources/u-boot-tn-imx\000"
.LASF35:
	.ascii	"size_dt_strings\000"
.LASF33:
	.ascii	"last_comp_version\000"
.LASF30:
	.ascii	"off_dt_strings\000"
.LASF21:
	.ascii	"_datarellocal_start_ofs\000"
.LASF3:
	.ascii	"long int\000"
.LASF24:
	.ascii	"long double\000"
.LASF25:
	.ascii	"default_environment\000"
.LASF6:
	.ascii	"signed char\000"
.LASF20:
	.ascii	"_datarelrolocal_start_ofs\000"
.LASF14:
	.ascii	"_Bool\000"
.LASF28:
	.ascii	"totalsize\000"
.LASF41:
	.ascii	"lib/asm-offsets.c\000"
.LASF34:
	.ascii	"boot_cpuid_phys\000"
	.ident	"GCC: (Linaro GCC 7.5-2019.12) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
