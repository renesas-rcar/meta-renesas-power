This README file contains information on the contents of the
meta-renesas-power layer.

This layer provides Energy Aware Scheduling(EAS) for R-Car Gen3.
EAS for R-Car Gen3 is sample code for evaluation and not officially
supported by Renesas Electronics. Also some patches in EAS are
ported from the following git repository.

 - URL: git://linux-arm.org/linux-power.git
 - URL: https://github.com/bjackman/linux-power.git

Currently, this evaluates board and the SoCs of the following:
 - Board: Salvator-X, Salvator-XS, H3ULCB, M3ULCB
 - SoC: R8A7795 (R-Car H3), R8A7796 (R-Car M3)

Please see the corresponding sections below for details.

Patches
=======

Please submit any patches for this layer to the maintainer.

Maintainer: KEITA KOBAYASHI <keita.kobayashi.ym@renesas.com>

Dependencies
============

This layer depends on:

  - URI: git://git.yoctoproject.org/meta-renesas
  - layers: meta-rcar-gen3
  - branch: jethro

Adding the meta-renesas-power layer to your build
=================================================

In order to use this layer, you need to make the build system aware of
it.

Assuming the meta-renesas-power layer exists at the top-level of your
yocto build tree, you can add it to the build system by adding the
location of the meta-renesas-power layer to bblayers.conf, along with any
other layers needed. e.g.:

  BBLAYERS ?= " \
    <path to layer>/poky/meta \
    <path to layer>/poky/meta-yocto \
    <path to layer>/poky/meta-yocto-bsp \
    <path to layer>/meta-renesas/meta-rcar-gen3 \
    <path to layer>/meta-linaro/meta-linaro-toolchain \
    <path to layer>/meta-openembedded/meta-oe \
    <path to layer>/meta-renesas-power \
    "
