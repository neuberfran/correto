/*
 * Copyright (C) 2018 Technexion Ltd.
 *
 * Author: Richard Hu <richard.hu@technexion.com>
 *         Po Cheng <po.cheng@technexion.com>
 *
 * SPDX-License-Identifier:	GPL-2.0+
 */

#include <init.h>
#include <asm/io.h>
#include <asm/gpio.h>
#include <asm/arch/clock.h>
#include <asm/arch/imx-regs.h>
#include <asm/arch/crm_regs.h>
#include <asm/arch/sys_proto.h>
#include <asm/arch/iomux.h>
#include <asm/arch/mx6-ddr.h>
#include <asm/arch/mx6ul_pins.h>
#include <asm/arch/mx6-pins.h>
#include <asm/mach-imx/video.h>
#include <asm/mach-imx/iomux-v3.h>
#include <mxc_epdc_fb.h>
#include <mmc.h>
#include <spl.h>
#include <fsl_esdhc.h>
#include <linux/libfdt.h>

DECLARE_GLOBAL_DATA_PTR;

#define DDR_TYPE_DET			IMX_GPIO_NR(5, 1)

#ifdef CONFIG_SPL_BUILD

#ifdef CONFIG_MX6
#define IMX6UL_DRIVE_STRENGTH		0x30
#endif

static iomux_v3_cfg_t const ddr_type_detection_pads[] = {
	MX6_PAD_SNVS_TAMPER1__GPIO5_IO01 | MUX_PAD_CTRL(NO_PAD_CTRL),
};

static void setup_iomux_ddr_type_detection(void)
{
	SETUP_IOMUX_PADS(ddr_type_detection_pads);
}

/* clock control general registers */
static void ccgr_init(void)
{
	struct mxc_ccm_reg *ccm = (struct mxc_ccm_reg *)CCM_BASE_ADDR;
	/* imx6ul */
	writel(0xFFFFFFFF, &ccm->CCGR0);
	writel(0xFFFFFFFF, &ccm->CCGR1);
	writel(0xFFFFFFFF, &ccm->CCGR2);
	writel(0xFFFFFFFF, &ccm->CCGR3);
	writel(0xFFFFFFFF, &ccm->CCGR4);
	writel(0xFFFFFFFF, &ccm->CCGR5);
	writel(0xFFFFFFFF, &ccm->CCGR6);
	writel(0xFFFFFFFF, &ccm->CCGR7);
}

static void ddr3_512mb_init(void)
{
	writel(0xFFFFFFFF, 0x020C4080);
	writel(0x000C0000, 0x020E04B4);
	writel(0x00000000, 0x020E04AC);
	writel(0x00000030, 0x020E027C);
	writel(0x00000030, 0x020E0250);
	writel(0x00000030, 0x020E024C);
	writel(0x00000030, 0x020E0490);
	writel(0x00000030, 0x020E0288);
	writel(0x00000000, 0x020E0270);
	writel(0x00000030, 0x020E0260);
	writel(0x00000030, 0x020E0264);
	writel(0x00000030, 0x020E04A0);
	writel(0x00020000, 0x020E0494);
	writel(0x00000030, 0x020E0280);
	writel(0x00000030, 0x020E0284);
	writel(0x00020000, 0x020E04B0);
	writel(0x00000030, 0x020E0498);
	writel(0x00000030, 0x020E04A4);
	writel(0x00000030, 0x020E0244);
	writel(0x00000030, 0x020E0248);
	writel(0xA1390003, 0x021B0800);
	writel(0x00000000, 0x021B080C);
//	writel(0x001F001F ,0x021b0810);
	writel(0x41440140, 0x021B083C);
	writel(0x00000000, 0x021b0840);
	writel(0x40404246, 0x021B0848);
	writel(0x40405048, 0x021B0850);
	writel(0x33333333, 0x021B081C);
	writel(0x33333333, 0x021B0820);
	writel(0xf3333333, 0x021B082C);
	writel(0xf3333333, 0x021B0830);
	writel(0x00921012, 0x021B08C0);
	writel(0x00000800, 0x021B08B8);
	writel(0x0002002D, 0x021B0004);
	writel(0x1B333030, 0x021B0008);
	writel(0x676B52F3, 0x021B000C);
	writel(0xB66D0B63, 0x021B0010);
	writel(0x01FF00DB, 0x021B0014);
	writel(0x00201740, 0x021B0018);
	writel(0x000026D2, 0x021B002C);
	writel(0x006B1023, 0x021B0030);
	writel(0x0000004F, 0x021B0040);
	writel(0x84180000, 0x021B0000);

	writel(0x02008032, 0x021B001C);
	writel(0x00008033, 0x021B001C);
	writel(0x00048031, 0x021B001C);
	writel(0x15208030, 0x021B001C);
	writel(0x04008040, 0x021B001C);

	writel(0x00000800, 0x021B0020);
	writel(0x00000227, 0x021B0818);
	writel(0x0002556D, 0x021B0004);
	writel(0x00011006, 0x021B0404);

	writel(0x00000000, 0x021B001C);

}

static void ddr3_256mb_init(void)
{
	writel(0xFFFFFFFF, 0x020C4080);
	writel(0x000C0000, 0x020E04B4);
	writel(0x00000000, 0x020E04AC);
	writel(0x00000030, 0x020E027C);
	writel(0x00000030, 0x020E0250);
	writel(0x00000030, 0x020E024C);
	writel(0x00000030, 0x020E0490);
	writel(0x00000030, 0x020E0288);
	writel(0x00000000, 0x020E0270);
	writel(0x00000030, 0x020E0260);
	writel(0x00000030, 0x020E0264);
	writel(0x00000030, 0x020E04A0);
	writel(0x00020000, 0x020E0494);
	writel(0x00000030, 0x020E0280);
	writel(0x00000030, 0x020E0284);
	writel(0x00020000, 0x020E04B0);
	writel(0x00000030, 0x020E0498);
	writel(0x00000030, 0x020E04A4);
	writel(0x00000030, 0x020E0244);
	writel(0x00000030, 0x020E0248);
	writel(0x00008000, 0x021B001C);
	writel(0xA1390003, 0x021B0800);
	writel(0x00000000, 0x021B080C);
	writel(0x01380134, 0x021B083C);
	writel(0x40404244, 0x021B0848);
	writel(0x40405050, 0x021B0850);
	writel(0x33333333, 0x021B081C);
	writel(0x33333333, 0x021B0820);
	writel(0xf3333333, 0x021B082C);
	writel(0xf3333333, 0x021B0830);
	writel(0x00921012, 0x021B08C0);
	writel(0x00000800, 0x021B08B8);
	writel(0x0002002D, 0x021B0004);
	writel(0x00333030, 0x021B0008);
	writel(0x676B52F3, 0x021B000C);
	writel(0xB66D8B63, 0x021B0010);
	writel(0x01FF00DB, 0x021B0014);
	writel(0x00201740, 0x021B0018);
	writel(0x00008000, 0x021B001C);
	writel(0x000026D2, 0x021B002C);
	writel(0x006B1023, 0x021B0030);
	writel(0x00000047, 0x021B0040);
	writel(0x83180000, 0x021B0000);
	writel(0x02008032, 0x021B001C);
	writel(0x00008033, 0x021B001C);
	writel(0x00048031, 0x021B001C);
	writel(0x15208030, 0x021B001C);
	writel(0x04008040, 0x021B001C);
	writel(0x00000800, 0x021B0020);
	writel(0x00000227, 0x021B0818);
	writel(0x0002552D, 0x021B0004);
	writel(0x00011006, 0x021B0404);
	writel(0x00000000, 0x021B001C);
}

static void spl_dram_init(void)
{
	setup_iomux_ddr_type_detection();
	gpio_direction_input(DDR_TYPE_DET);

	if (!gpio_get_value(DDR_TYPE_DET)) {
		ddr3_512mb_init();
	} else {
		ddr3_256mb_init();
	}
}

#if 0 //the instance where in soc.c
/* General Purpose Registers */
void gpr_init(void)
{
	struct iomuxc_gpr_base_regs *gpr_regs = (struct iomuxc_gpr_base_regs *)IOMUXC_GPR_BASE_ADDR;
	writel(0x4F400005, &gpr_regs->gpr[1]);
}
#endif

void board_init_f(ulong dummy)
{
	/* setup AIPS and disable watchdog */
	arch_cpu_init();

	ccgr_init();

	gpr_init();

	/* iomux and setup of i2c */
	board_early_init_f();

	/* setup GP timer */
	timer_init();

	/* UART clocks enabled and gd valid - init serial console */
	preloader_console_init();

	/* DDR initialization */
	spl_dram_init();

	/* Clear the BSS. */
	memset(__bss_start, 0, __bss_end - __bss_start);

	/* load/boot image from boot device */
	board_init_r(NULL, 0);
}

void reset_cpu(ulong addr)
{
}

#define USDHC_PAD_CTRL (PAD_CTL_PKE | PAD_CTL_PUE |            \
	PAD_CTL_PUS_22K_UP  | PAD_CTL_SPEED_LOW |               \
	PAD_CTL_DSE_80ohm   | PAD_CTL_SRE_FAST  | PAD_CTL_HYS)

static iomux_v3_cfg_t const usdhc1_pads[] = {
	MX6_PAD_SD1_CLK__USDHC1_CLK | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_SD1_CMD__USDHC1_CMD | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_SD1_DATA0__USDHC1_DATA0 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_SD1_DATA1__USDHC1_DATA1 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_SD1_DATA2__USDHC1_DATA2 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_SD1_DATA3__USDHC1_DATA3 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_NAND_READY_B__USDHC1_DATA4 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_NAND_CE0_B__USDHC1_DATA5 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_NAND_CE1_B__USDHC1_DATA6 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
	MX6_PAD_NAND_CLE__USDHC1_DATA7 | MUX_PAD_CTRL(USDHC_PAD_CTRL),
};

static struct fsl_esdhc_cfg usdhc_cfg[1] = {
	{USDHC1_BASE_ADDR},
};

int board_mmc_getcd(struct mmc *mmc)
{
	return 1;
}

int board_mmc_init(struct bd_info *bis)
{
	imx_iomux_v3_setup_multiple_pads(usdhc1_pads, ARRAY_SIZE(usdhc1_pads));
	usdhc_cfg[0].sdhc_clk = mxc_get_clock(MXC_ESDHC_CLK);
	return fsl_esdhc_initialize(bis, &usdhc_cfg[0]);
}
#endif /* CONFIG_SPL_BUILD */
