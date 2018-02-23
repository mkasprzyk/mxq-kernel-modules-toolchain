wget https://dl.google.com/android/repository/android-ndk-r16b-linux-x86_64.zip
unzip android-ndk-r16b-linux-x86_64.zip

git clone https://android.googlesource.com/kernel/common
cd common
git checkout android-3.10
make ARCH=arm ARCH=arm CROSS_COMPILE=$(pwd)/../android-ndk-r16b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi- headers_install
make ARCH=arm ARCH=arm CROSS_COMPILE=$(pwd)/../android-ndk-r16b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi-
cd -

