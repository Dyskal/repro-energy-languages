compile:
	RUSTFLAGS="-C target-cpu=core2" cargo build --release
	rm -f pidigits.rust-2.rust_run
	mv target/release/pidigits pidigits.rust-2.rust_run

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./pidigits.rust-2.rust_run 10000" Rust pidigits

run:
	./pidigits.rust-2.rust_run 10000

mem:
	/usr/bin/time -v ./pidigits.rust-2.rust_run 10000

valgrind:
	valgrind --tool=massif --stacks=yes ./pidigits.rust-2.rust_run 10000
