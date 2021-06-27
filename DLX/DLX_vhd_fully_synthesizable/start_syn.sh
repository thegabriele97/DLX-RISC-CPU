#!/bin/sh

source /software/scripts/init_synopsys_64.11

cp ../.synopsys_dc.setup ./
dc_shell -no_log -f synthesis.script

rm -rf rm -rf ARCH/ BODY/ ENTI/ PACK/
rm -f *.mr
rm -f ./.synopsys_dc.setup 
rm -f default.svf

mv DLX_SYN.vhdl ./synthesis_result
mv dlx_sdf.sdf ./synthesis_result
mv timing_report.txt ./synthesis_result
