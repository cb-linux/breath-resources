# Breath Resources

Distro-specific packages to port the userspace functionality of Breath to other distros. This effort is spearheaded by @runcros.

## breath-kabylake
- `etc/modprobe.d/snd-hda-intel.conf`: `snd_hda_intel` conflicts with `snd_soc_skl`
- `lib/firmware/`: Firmware files - some unnecessary, such as `iwlwifi` files
- `usr/share/alsa/ucm2/kblda7219max/`: UCM Files modified to use standard UCM commands. Differences are minimal but allow for jack switching in PulseAudio/Pipewire.
- `usr/share/wireplumber/main.lua.d/50-breath-config.lua`: Unknown as of now, has to do with Pipewire compat

## breath-skylake
- `etc/modprobe.d/snd-hda-intel.conf`: `snd_hda_intel` conflicts with `snd_soc_skl`
- `lib/firmware/`: Firmware files - some unnecessary, such as `iwlwifi` files
- `usr/share/alsa/ucm2/kblda7219max/`: UCM Files modified to use standard UCM commands. Differences are minimal but allow for jack switching in PulseAudio/Pipewire.
- `usr/share/wireplumber/main.lua.d/50-breath-config.lua`: Unknown as of now, has to do with Pipewire compat

TODO: Document breath-base
