KERNEL_DIR=$(shell pwd)/common

obj-m := snd-microbookii.o
snd-microbookii-objs := audio.o control.o microbookii.o

all:
	make ARCH=arm CROSS_COMPILE=$(shell pwd)/android-ndk-r16b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi- -C $(KERNEL_DIR) SUBDIRS=$(PWD) M=$(shell pwd) modules

clean:
	make ARCH=arm CROSS_COMPILE=$(shell pwd)/android-ndk-r16b/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin/arm-linux-androideabi- -C $(KERNEL_DIR) SUBDIRS=$(PWD) M=$(shell pwd) clean
