M := $(CURDIR)/debian/makefiles

all:
	mkdir -p core/build_adb
	$(MAKE) -f $(M)/adb.mk -C core/build_adb
	mkdir -p core/build_adbd
	$(MAKE) -f $(M)/adbd.mk -C core/build_adbd

clean:
	mkdir -p core/build_adb
	$(MAKE) -f $(M)/adb.mk -C core/build_adb clean
	mkdir -p core/build_adbd
	$(MAKE) -f $(M)/adbd.mk -C core/build_adbd clean

install:
	install -d $(DESTDIR)/usr/bin
	install -m 0755 core/build_adb/adb $(DESTDIR)/usr/bin
	install -m 0755 core/build_adbd/adbd $(DESTDIR)/usr/bin
