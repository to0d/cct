#/bin/sh

ir_c=`cat TC220116A.ll | wc -l`
mir_c=`cat TC220116A.mir | wc -l`

echo "output: ir="$ir_c", mir_c="$mir_c