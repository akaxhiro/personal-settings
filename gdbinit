set history save on
set listsize 40
#source ~/arm/armv8/linaro/misc/security/gdbinit-gef.py

#
#add-auto-load-safe-path /home/akashi/arm/armv7/android/linux/.gdbinit
#set tdesc filename ~/src/linaro/tools/gdb-linaro-7.8-2014.08/gdb/features/aarch64.xml

# for U-boot debugging
#target remote localhost:1234
#b env_flash_init_params
#c
#b 80
#set ctx->drv_params[4] = params
#c
