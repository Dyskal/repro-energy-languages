compile:
	RUSTFLAGS="-C target-cpu=core2" cargo build --release
	rm -f mandelbrot.rust-4.rust_run
	mv target/release/mandelbrot mandelbrot.rust-4.rust_run

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./mandelbrot.rust-4.rust_run 16000" Rust mandelbrot

run:
	./mandelbrot.rust-4.rust_run 16000

mem:
	/usr/bin/time -v  ./mandelbrot.rust-4.rust_run 16000

valgrind:
	valgrind --tool=massif --stacks=yes  ./mandelbrot.rust-4.rust_run 16000
