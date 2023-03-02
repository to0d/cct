#/bin/sh

ir_c=`cat TC220116B.ll | wc -l`
pass1=`cat pass.1.irtranslator_before.mir | wc -l`
pass2=`cat pass.2.irtranslator_after.mir | wc -l`
pass3=`cat pass.3.legalizer_after.mir | wc -l`
pass4=`cat pass.4.instruction_select_after.mir | wc -l`
pass5=`cat pass.5.stackify_after.mir | wc -l`
pass6=`cat pass.6.scope_after.mir | wc -l`
pass7=`cat pass.7.wcode | wc -l`

echo "output: ir="$ir_c", pass1="$pass1", pass2="$pass2", pass3="$pass3", pass4="$pass4", pass5="$pass5", pass6="$pass6", pass7="$pass7