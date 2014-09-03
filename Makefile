
all: build

build:
	ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk

test: build
	adb push libs/armeabi/newroot /data/local/tmp/newroot
	adb shell "cd /data/local/tmp; ./newroot id"

clean:
	rm -rf libs
	rm -rf obj

