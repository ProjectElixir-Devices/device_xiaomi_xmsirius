# nuke
rm -rf device/xiaomi/sdm710-common
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
rm -rf hardware/xiaomi
# clone
git clone https://github.com/ProjectElixir-Devices/device_xiaomi_sdm710-common device/xiaomi/sdm710-common -b UDC
git clone https://github.com/ProjectElixir-Devices/vendor_xiaomi_xmsirius vendor/xiaomi -b UDC
git clone --depth=1 https://github.com/SakuraKyuo/android_kernel_xiaomi_sdm710-twilight kernel/xiaomi/sdm710 -b 14
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi
