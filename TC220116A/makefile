TC220116: TC220116A.mir

TC220116A.mir: TC220116A.ll
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-after=instruction-select -simplify-mir TC220116A.ll -o TC220116A.mir

TC220116A.ll:
	iClang++ -g -target ppc128-ibm-ibmi-ile -S -emit-llvm TC220116A.cpp -o TC220116A.ll

clean:
	rm -f *.ll
	rm -f *.mir

