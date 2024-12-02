compile:
	cp binarytrees.java-7.java binarytrees.java
	/usr/lib/graal/bin/javac -d .  binarytrees.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/lib/graal/bin/java binarytrees 21" Java binary-trees
run:
	/usr/lib/graal/bin/java binarytrees 21
mem:
	/usr/bin/time -v /usr/lib/graal/bin/java binarytrees 21

valgrind:
	valgrind --tool=massif --stacks=yes /usr/lib/graal/bin/java binarytrees 21

