all:
	mkdir lib
	for dir in basesv5.1 chanel kinemlib; do\
		$(MAKE) -C $$dir;\
	done

clean:
	rm -rf lib
	for dir in basesv5.1 chanel kinemlib; do\
		$(MAKE) -C $$dir clean;\
	done

