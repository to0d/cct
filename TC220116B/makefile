TC220116A: TC220116B.ll pass.1.irtranslator_before.mir pass.2.irtranslator_after.mir pass.3.legalizer_after.mir pass.4.instruction_select_after.mir pass.5.stackify_after.mir pass.6.scope_after.mir pass.7.wcode

TC220116B.ll:
	iClang++ -g -target ppc128-ibm-ibmi-ile -S -emit-llvm TC220116B.cpp -o TC220116B.ll

pass.1.irtranslator_before.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-before=irtranslator       -simplify-mir TC220116B.ll -o pass.1.irtranslator_before.mir

pass.2.irtranslator_after.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-after=irtranslator        -simplify-mir TC220116B.ll -o pass.2.irtranslator_after.mir

pass.3.legalizer_after.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-before=instruction-select -simplify-mir TC220116B.ll -o pass.3.legalizer_after.mir

pass.4.instruction_select_after.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-after=instruction-select  -simplify-mir TC220116B.ll -o pass.4.instruction_select_after.mir

pass.5.stackify_after.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-after=ile-reg-stackify    -simplify-mir TC220116B.ll -o pass.5.stackify_after.mir

pass.6.scope_after.mir:
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -stop-after=ile-scope-instr     -simplify-mir TC220116B.ll -o pass.6.scope_after.mir

pass.7.wcode: 
	llc -mtriple=ppc128-ibm-ibmi-ile -global-isel=true -filetype=asm                                 TC220116B.ll -o pass.7.wcode

clean:
	rm -f *.ll
	rm -f *.mir
	rm -f *.wcode


