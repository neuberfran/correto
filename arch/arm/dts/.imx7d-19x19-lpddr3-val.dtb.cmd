cmd_arch/arm/dts/imx7d-19x19-lpddr3-val.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/imx7d-19x19-lpddr3-val.dts; ) > arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.pre.tmp; /opt/gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc -E -Wp,-MD,arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.dts.tmp arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/imx7d-19x19-lpddr3-val.dtb -b 0 -i arch/arm/dts/  -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num   -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -d arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.d.dtc.tmp arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.dts.tmp || (echo "Check /home/neuberfran/projects3/sources/u-boot-tn-imx/arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.pre.tmp for errors" && false) ; sed "s:arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.pre.tmp:arch/arm/dts/imx7d-19x19-lpddr3-val.dts:" arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.d.pre.tmp arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.d.dtc.tmp > arch/arm/dts/.imx7d-19x19-lpddr3-val.dtb.d

source_arch/arm/dts/imx7d-19x19-lpddr3-val.dtb := arch/arm/dts/imx7d-19x19-lpddr3-val.dts

deps_arch/arm/dts/imx7d-19x19-lpddr3-val.dtb := \
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
  arch/arm/dts/include/dt-bindings/input/input.h \
  arch/arm/dts/include/dt-bindings/input/linux-event-codes.h \
  arch/arm/dts/imx7d.dtsi \
  arch/arm/dts/imx7s.dtsi \
  arch/arm/dts/include/dt-bindings/clock/imx7d-clock.h \
  arch/arm/dts/include/dt-bindings/power/imx7-power.h \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/reset/imx7-reset.h \
  arch/arm/dts/imx7d-pinfunc.h \

arch/arm/dts/imx7d-19x19-lpddr3-val.dtb: $(deps_arch/arm/dts/imx7d-19x19-lpddr3-val.dtb)

$(deps_arch/arm/dts/imx7d-19x19-lpddr3-val.dtb):
