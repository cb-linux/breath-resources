# Breath Resources

Distro-specific packages to port the userspace functionality of Breath to other distros. This effort is spearheaded by @runcros.

## breath-base
- `/etc/initramfs-tools/conf.d/resume`: Prevents resuming from swap. Because the support of zram or swap is very bad.
- `/etc/sysctl.d/20-breath.conf`: Options to make chromebook faster.
- `/usr/bin/firmware-util`: Integrates directly MrChromebook Firmware Utility.
- `/usr/share/breath`: Storing all stufs that can be copied by Breath Script during installation or configuration by the user.

## breath-kabylake
- `etc/modprobe.d/snd-hda-intel.conf`: `snd_hda_intel` conflicts with `snd_soc_skl`
- `lib/firmware/`: Firmware files - some unnecessary, such as `iwlwifi` files
- `usr/share/alsa/ucm2/kblda7219max/`: UCM Files modified to use standard UCM commands. Differences are minimal but allow for jack switching in Pipewire and Wireplumber.

## breath-skylake
- `etc/modprobe.d/snd-hda-intel.conf`: `snd_hda_intel` conflicts with `snd_soc_skl`
- `lib/firmware/`: Firmware files - some unnecessary, such as `iwlwifi` files
- `usr/share/alsa/ucm2/sklnau8825[max|adi]/`: UCM Files modified to use standard UCM commands. Differences are minimal but allow for jack switching in Pipewire and Wireplumber.
- `usr/share/wireplumber/main.lua.d/50-breath-config.lua`: Make Wireplumber use automatically Alsa Card Profile and make audio format S16_LE to prevent bad select by Pipewire.
