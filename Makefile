ifneq ($(KERNELRELEASE),)
obj-m := hello.o
else
	KDIR := ~/Kernels/5.10
all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
