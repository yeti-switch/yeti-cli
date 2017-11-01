clean:
	make -C debian clean

package:
	 dpkg-buildpackage -us -uc -b

.PHONY: clean package
