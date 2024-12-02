compile:
	cp mandelbrot.java-2.java mandelbrot.java
	/usr/lib/graal/bin/javac -d .  mandelbrot.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/lib/graal/bin/java   mandelbrot 16000" Java mandelbrot

run:
	/usr/lib/graal/bin/java   mandelbrot 16000

mem:
	/usr/bin/time -v /usr/lib/graal/bin/java   mandelbrot 16000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/lib/graal/bin/java   mandelbrot 16000
