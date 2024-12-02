compile:
	/usr/lib/graal/bin/javac -d  .  fannkuchredux.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/lib/graal/bin/java   fannkuchredux 12" Java fannkuch-redux

run:
	/usr/lib/graal/bin/java   fannkuchredux 12

mem:
	/usr/bin/time -v  /usr/lib/graal/bin/java   fannkuchredux 12

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/lib/graal/bin/java   fannkuchredux 12
