	.text
	.file	"TC211008A.cpp"
	.section	.text._Z4fun1ii,"",@
	.hidden	_Z4fun1ii                       # -- Begin function _Z4fun1ii
	.globl	_Z4fun1ii
	.globaltype	__stack_pointer, i32
	.type	_Z4fun1ii,@function
_Z4fun1ii:                              # @_Z4fun1ii
	.functype	_Z4fun1ii (i32, i32) -> (i32)
	.local  	i32
# %bb.0:                                # %entry
	global.get	__stack_pointer
	i32.const	16
	i32.sub 
	local.tee	2
	local.get	0
	i32.store	12
	local.get	2
	local.get	1
	i32.store	8
	local.get	2
	i32.load	12
	local.get	2
	i32.load	8
	i32.add 
                                        # fallthrough-return
	end_function
.Lfunc_end0:
	.size	_Z4fun1ii, .Lfunc_end0-_Z4fun1ii
                                        # -- End function
	.ident	"clang version 14.0.0 (git@github.ibm.com:iCompiler/llvm-project.git 31d59395e242e1ea6569ca064b53b5d7918768e0)"
	.section	.custom_section.producers,"",@
	.int8	1
	.int8	12
	.ascii	"processed-by"
	.int8	1
	.int8	5
	.ascii	"clang"
	.int8	95
	.ascii	"14.0.0 (git@github.ibm.com:iCompiler/llvm-project.git 31d59395e242e1ea6569ca064b53b5d7918768e0)"
	.section	.text._Z4fun1ii,"",@
