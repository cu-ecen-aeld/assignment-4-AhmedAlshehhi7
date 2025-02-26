#!/bin/bash
# This script saves the current Buildroot configuration as the project-specific defconfig.

# Ensure the base_external/configs directory exists
mkdir -p base_external/configs

# Copy the current Buildroot configuration to your external defconfig file.
cp buildroot/configs/qemu_aarch64_virt_defconfig base_external/configs/aesd_qemu_defconfig

echo "Configuration saved to base_external/configs/aesd_qemu_defconfig"
