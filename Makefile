
obj-m := hellop.o

KDIR := ~/Kernels/5.10
all:
	$(MAKE) -C $(KDIR) M=$$PWD
