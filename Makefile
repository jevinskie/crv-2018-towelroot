
all:
	ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk

root:
	adb push libs/armeabi/getroot /data/local/tmp/getroot
	adb shell "cd /data/local/tmp; ./getroot id"

