ifneq ($(KERNELRELEASE),)
obj-m := hellop.o
else
	KDIR := ~/Kernels/5.10
all:
	$(MAKE) -C $(KDIR) M=$$PWD
endif
