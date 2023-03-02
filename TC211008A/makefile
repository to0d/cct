TC211008: TC211008A.o

TC211008A.o:
	clang --target=wasm32 -emit-llvm -c -S TC211008A.cpp -o TC211008A.ll
	llc -march=wasm32 -filetype=obj TC211008A.ll
	llc -march=wasm32  TC211008A.ll

clean:
	rm -f *.o

