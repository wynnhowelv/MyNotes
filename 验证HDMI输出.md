验证HDMI输出
命令：

强制关闭/打开hdmi输出
查看vop状态
cat /d/dri/0/summary 

查看connector状态
cat /sys/class/drm/card0-HDMI-A-1/status

查看hdmi状态
cat /d/dw-hdmi/status

当前可用显示分辨率列表：
cat /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/modes

不管hdmi接没接， 强行使能hdmi
echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status

关闭hdmi
echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status

监测hdmi插拔，正常情况以就是在这个状态
echo detect > /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status



示例：



a2k_box:/ #
a2k_box:/ # cat /d/dw-hdmi/status
PHY: enabled                    Mode: HDMI
Pixel Clk: 74250000Hz           TMDS Clk: 74250000Hz
Color Format: RGB               Color Depth: 8 bit
Colorimetry: ITU.BT709          EOTF: Off
a2k_box:/ # cat /d/dri/0/summary
VOP [ff370000.vop]: ACTIVE
    Connector: HDMI-A
        overlay_mode[0] bus_format[100a] output_mode[f] color_space[0]
    Display mode: 1280x720p60
        clk[74250] real_clk[74250] type[8] flag[5]
        H: 1280 1390 1430 1650
        V: 720 725 730 750
    win0-0: ACTIVE
        format: AB24 little-endian (0x34324241) SDR[0] color_space[0]
        csc: y2r[0] r2r[0] r2y[0] csc mode[0]
        zpos: 0
        src: pos[0x0] rect[1920x1080]
        dst: pos[0x0] rect[1280x720]
        buf[0]: addr: 0x0000000003ed8000 pitch: 7680 offset: 0
    win1-0: DISABLED
    win2-0: DISABLED
    post: sdr2hdr[0] hdr2sdr[0]
    pre : sdr2hdr[0]
    post CSC: r2y[0] y2r[0] CSC mode[1]
a2k_box:/ # cat /sys/class/drm/card0-HDMI-A-1/status
connected
a2k_box:/ #