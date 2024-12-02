compile:
	RUSTFLAGS="-C target-cpu=core2" cargo build --release
	rm -f binarytrees.rust-2.rust_run
	mv target/release/binary-trees binarytrees.rust-2.rust_run

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./binarytrees.rust-2.rust_run 21" Rust binary-trees

run:
	./binarytrees.rust-2.rust_run 21

mem:
	/usr/bin/time -v ./binarytrees.rust-2.rust_run 21

valgrind:
	valgrind --tool=massif --stacks=yes ./binarytrees.rust-2.rust_run 21 
