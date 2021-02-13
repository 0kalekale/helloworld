build:
	mkdir -p build
	mkdir -p bin
	as src/hello.s -o build/hello_asm.o 
	ld build/hello_asm.o -o bin/hello_asm
	gcc  src/hello.c -o bin/hello_c
	rustc src/hello.rs -o bin/hello_rs
	cp src/hello.py bin/hello.py
clean:
	rm -rf build
	rm -rf bin

.PHONY: build
