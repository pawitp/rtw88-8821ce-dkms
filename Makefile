KVER ?= $(shell uname -r)
KSRC := /lib/modules/$(KVER)/build

all:
	make -C $(KSRC) M=$(PWD) modules

clean:
	make -C $(KSRC) M=$(PWD) clean
