compile:
	cp pidigits.java-2.java pidigits.java
	/usr/lib/graal/bin/javac -d .  pidigits.java
xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/lib/graal/bin/java -Djava.library.path=Include/java  pidigits 10000" Java pidigits

run:
	/usr/lib/graal/bin/java -Djava.library.path=Include/java  pidigits 10000

mem:
	/usr/bin/time -v /usr/lib/graal/bin/java -Djava.library.path=Include/java  pidigits 10000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/lib/graal/bin/java -Djava.library.path=Include/java  pidigits 10000

