
rtc 验证时间指令
date
https://www.cyberciti.biz/faq/howto-set-date-time-from-linux-command-prompt/
get time
# date


// adb shell 中不生效， -s 是linux系统下的参数
set time
# date +%Y%m%d -s "20081128"



hwclock
https://www.thegeekstuff.com/2013/08/hwclock-examples/get time
# hwclock


// adb shell 中不生效， --set --date 是linux系统下的参数
set time
# hwclock --set --date "8/11/2013 23:10:45"




linux系统时钟与硬件时钟
http://www.linuxso.com/command/hwclock.html