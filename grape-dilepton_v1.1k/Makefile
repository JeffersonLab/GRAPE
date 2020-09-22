all:
	mkdir lib
	for dir in basesv5.1 chanel kinemlib; do\
		$(MAKE) -C $$dir;\
	done
	$(MAKE) -C src integ;
	$(MAKE) -C src spring;

clean:
	rm -rf lib
	for dir in basesv5.1 chanel kinemlib src; do\
		$(MAKE) -C $$dir clean;\
	done

