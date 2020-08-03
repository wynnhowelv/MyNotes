u盘插入dmesg

a35_box:/ # dmesg -c
[166826.606414] usb 4-1: new high-speed USB device number 5 using xhci-hcd
[166826.726803] usb 4-1: New USB device found, idVendor=0781, idProduct=5567
[166826.726843] usb 4-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[166826.726857] usb 4-1: Product: Cruzer Blade
[166826.726870] usb 4-1: Manufacturer: SanDisk
[166826.726888] usb 4-1: SerialNumber: 4C530000100522104105
[166826.731461] usb-storage 4-1:1.0: USB Mass Storage device detected
[166826.736015] scsi host3: usb-storage 4-1:1.0

u盘拔出dmesg
a35_box:/ # dmesg -c
[166815.902284] usb 4-1: USB disconnect, device number 4
[166815.903317] type=1400 audit(1596093948.490:1135): avc: denied { getattr } for pid=2870 comm="df" path="/dev/block/mmcblk1p14" dev="tmpfs" ino=8481 scontext=u:r:su_daemon:s0 tcontext=u:object_r:e2fsck_cache_block_device:s0 tclass=blk_file permissive=1
[166815.903385] type=1400 audit(1596094033.683:1142): avc: denied { read } for pid=860 comm="UEventObserver" scontext=u:r:system_app:s0 tcontext=u:r:system_app:s0 tclass=netlink_kobject_uevent_socket permissive=1