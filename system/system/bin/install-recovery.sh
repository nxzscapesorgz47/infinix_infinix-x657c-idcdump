#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:40894464:92a2432bc3a0bd90029d6bd8ea7eead15bf45a49; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:cd7e1726a77ff5309705d70ee84adee289e4ff7a \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:40894464:92a2432bc3a0bd90029d6bd8ea7eead15bf45a49 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
