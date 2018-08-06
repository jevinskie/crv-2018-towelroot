
all: build

build:
	ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk APP_ABI=armeabi-v7a

push: build
	adb push libs/armeabi-v7a/debugexploit /data/local/tmp
	adb push libs/armeabi-v7a/futex_exploit_check /data/local/tmp
	adb shell "chmod 755 /data/local/tmp/debugexploit /data/local/tmp/futex_exploit_check"

run: push
	adb shell "/data/local/tmp/debugexploit 0 4 0 0"

check: push
	adb shell "/data/local/tmp/futex_exploit_check"

clean:
	rm -rf libs
	rm -rf obj

