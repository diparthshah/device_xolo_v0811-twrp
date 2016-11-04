##TWRP BUILD TREE FOR XOLO BLACK-1X [CHIPSET: MEDIATEK MT6753]

KERNEL : PREBUILT KERNEL LINUX 3.10.65

TWRP REPO : https://github.com/diparthshah/TWRP-manifest

BUILD :

$ cd [TWRP REPO]

$ source build/envsetup.sh

$ lunch omni_v0811-userdebug

$ make clean && make -j# recoveryimage [# : no. of cpu core]
