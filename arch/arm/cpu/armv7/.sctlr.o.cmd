cmd_arch/arm/cpu/armv7/sctlr.o := /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/cpu/armv7/.sctlr.o.d  -nostdinc -isystem /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/7.5.0/include -Iinclude     -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a   -c -o arch/arm/cpu/armv7/sctlr.o arch/arm/cpu/armv7/sctlr.S

source_arch/arm/cpu/armv7/sctlr.o := arch/arm/cpu/armv7/sctlr.S

deps_arch/arm/cpu/armv7/sctlr.o := \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \

arch/arm/cpu/armv7/sctlr.o: $(deps_arch/arm/cpu/armv7/sctlr.o)

$(deps_arch/arm/cpu/armv7/sctlr.o):
