qemu-system-loongarch64 -machine virt -smp 4 -m 4G -nographic \
  -bios firmware/QEMU_EFI_LOONGARCH64.fd \
  -kernel ./BOOTLOONGARCH64.EFI