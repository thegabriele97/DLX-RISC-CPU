#!/bin/sh

source /software/scripts/init_synopsys_64.11

cp ../.synopsys_dc.setup ./
cp -r ../alib-52 ./
dc_shell -no_log -f synthesis.script

rm -rf rm -rf ARCH/ BODY/ ENTI/ PACK/
rm -rf alib-52
rm -f *.mr
rm -f ./.synopsys_dc.setup 
rm -f default.svf

mv DLX_SYN.vhdl ./synthesis_result
mv dlx_sdf.sdf ./synthesis_result
mv report_*.txt ./synthesis_result
