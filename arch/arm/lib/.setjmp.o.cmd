cmd_arch/arm/lib/setjmp.o := /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc -Wp,-MD,arch/arm/lib/.setjmp.o.d  -nostdinc -isystem /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/../lib/gcc/arm-linux-gnueabihf/7.5.0/include -Iinclude     -I./arch/arm/include -include ./include/linux/kconfig.h -D__KERNEL__ -D__UBOOT__ -D__ASSEMBLY__ -fno-PIE -g -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -fno-pic -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a   -c -o arch/arm/lib/setjmp.o arch/arm/lib/setjmp.S

source_arch/arm/lib/setjmp.o := arch/arm/lib/setjmp.S

deps_arch/arm/lib/setjmp.o := \
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
  include/config.h \
    $(wildcard include/config/imx/config.h) \
    $(wildcard include/config/boarddir.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/dm/spi/flash.h) \
    $(wildcard include/config/dm/usb.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/pico-imx7d.h \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/spl/fs/load/args/name.h) \
    $(wildcard include/config/spl/fs/load/kernel/name.h) \
    $(wildcard include/config/sys/spl/args/addr.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/args/sector.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/args/sectors.h) \
    $(wildcard include/config/cmd/spl/write/size.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/kernel/sector.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/mxc/uart/base.h) \
    $(wildcard include/config/sys/fsl/esdhc/addr.h) \
    $(wildcard include/config/sys/mmc/img/load/part.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/sys/memtest/start.h) \
    $(wildcard include/config/sys/memtest/end.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/loadaddr.h) \
    $(wildcard include/config/sys/hz.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/init/ram/addr.h) \
    $(wildcard include/config/sys/init/ram/size.h) \
    $(wildcard include/config/sys/init/sp/offset.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/sys/i2c.h) \
    $(wildcard include/config/sys/i2c/mxc.h) \
    $(wildcard include/config/sys/i2c/mxc/i2c1.h) \
    $(wildcard include/config/sys/i2c/mxc/i2c2.h) \
    $(wildcard include/config/sys/i2c/mxc/i2c3.h) \
    $(wildcard include/config/sys/i2c/mxc/i2c4.h) \
    $(wildcard include/config/sys/i2c/speed.h) \
    $(wildcard include/config/power.h) \
    $(wildcard include/config/power/i2c.h) \
    $(wildcard include/config/power/pfuze3000.h) \
    $(wildcard include/config/power/pfuze3000/i2c/addr.h) \
    $(wildcard include/config/dm/video.h) \
    $(wildcard include/config/video/mxs.h) \
    $(wildcard include/config/video/logo.h) \
    $(wildcard include/config/splash/screen/align.h) \
    $(wildcard include/config/splash/source.h) \
    $(wildcard include/config/bmp/16bpp.h) \
    $(wildcard include/config/bmp/24bpp.h) \
    $(wildcard include/config/bmp/32bpp.h) \
    $(wildcard include/config/video/bmp/rle8.h) \
    $(wildcard include/config/video/bmp/logo.h) \
    $(wildcard include/config/board/size/limit.h) \
    $(wildcard include/config/env/offset.h) \
    $(wildcard include/config/sys/fsl/usdhc/num.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
    $(wildcard include/config/ehci/hcd/init/after/reset.h) \
    $(wildcard include/config/mxc/usb/portsc.h) \
    $(wildcard include/config/mxc/usb/flags.h) \
    $(wildcard include/config/usb/max/controller/count.h) \
    $(wildcard include/config/imx/thermal.h) \
  include/configs/mx7_common.h \
    $(wildcard include/config/mx7.h) \
    $(wildcard include/config/mxc/gpt/hclk.h) \
    $(wildcard include/config/sc/timer/clk.h) \
    $(wildcard include/config/sys/fsl/clk.h) \
    $(wildcard include/config/sys/bootm/len.h) \
    $(wildcard include/config/iomux/lpsr.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/armv7/secure/base.h) \
    $(wildcard include/config/spl/drivers/misc/support.h) \
    $(wildcard include/config/optee/tzdram/size.h) \
    $(wildcard include/config/optee.h) \
    $(wildcard include/config/skip/lowlevel/init.h) \
    $(wildcard include/config/imx/optee.h) \
  include/linux/sizes.h \
  include/linux/const.h \
  include/linux/stringify.h \
  arch/arm/include/asm/arch/imx-regs.h \
    $(wildcard include/config/sys/fsl/sec/offset.h) \
    $(wildcard include/config/sys/fsl/sec/addr.h) \
    $(wildcard include/config/sys/fsl/jr0/offset.h) \
    $(wildcard include/config/sys/fsl/jr0/addr.h) \
    $(wildcard include/config/sys/fsl/max/num/of/sec.h) \
  arch/arm/include/asm/mach-imx/gpio.h \
  include/configs/imx7_spl.h \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/mmc/support.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/spl/fs/fat.h) \
    $(wildcard include/config/spl/fs/ext4.h) \
    $(wildcard include/config/of/control.h) \
    $(wildcard include/config/spl/fs/load/payload/name.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/sys/spl/malloc/start.h) \
    $(wildcard include/config/sys/spl/malloc/size.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/cmd/kgdb.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/prompt.h) \
  arch/arm/include/asm/assembler.h \
    $(wildcard include/config/sys/thumb/build.h) \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \

arch/arm/lib/setjmp.o: $(deps_arch/arm/lib/setjmp.o)

$(deps_arch/arm/lib/setjmp.o):
