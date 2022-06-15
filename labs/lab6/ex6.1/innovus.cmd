#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon May 31 09:44:43 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set init_gnd_net gnd
set init_mmmc_file Default.view
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog sum.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.958493795464 0.598972 5.13 5.04 5.13 5.04
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
gui_select -rect {-11.834 73.501 -35.386 73.813}
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal9 bottom metal9 left metal10 right metal10} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
zoomIn
zoomIn
zoomOut
zoomOut
gui_select -rect {72.551 77.713 89.397 68.198}
zoomIn
zoomOut
zoomIn
pan -25.477 -1.820
pan -5.251 -10.139
pan -4.264 -11.127
pan -2.236 -4.679
zoomIn
pan -0.641 -4.575
pan 0.121 -0.468
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
pan 4.281 1.179
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
pan 0.087 0.658
pan 0.312 -0.191
zoomOut
pan 3.900 3.744
zoomIn
zoomIn
pan -1.542 -1.011
pan -0.774 -0.445
zoomOut
pan -3.328 -2.548
pan -0.746 0.070
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
selectWire 76.6050 2.9200 77.4050 74.3600 10 gnd
deselectAll
selectWire 2.9650 73.5600 77.4050 74.3600 9 gnd
deselectAll
pan 5.893 0.000
pan -0.347 -0.208
zoomOut
zoomOut
pan 10.139 16.846
pan 15.910 18.406
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {gnd vdd} -layer metal10 -direction vertical -width 0.8 -spacing 0.8 -set_to_set_distance 20 -start_from left -start_offset 15 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal10 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal10 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
zoomIn
pan 10.815 -13.675
pan 1.352 -12.947
zoomOut
zoomIn
pan -1.508 -0.260
pan 5.564 0.832
zoomOut
pan -15.415 21.837
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { gnd vdd } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
zoomIn
pan 21.471 -18.535
pan 1.101 -6.423
pan -2.508 0.917
selectWire 1.3650 72.1550 5.1300 72.3250 1 vdd
deselectAll
selectWire 1.3650 72.1550 5.1300 72.3250 1 vdd
deselectAll
selectWire 5.1300 72.1550 75.2400 72.3250 1 vdd
deselectAll
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
zoomOut
pan -7.891 16.883
pan -6.790 11.194
zoomIn
pan 19.880 -18.167
pan 0.551 -4.833
zoomIn
selectInst {S_reg[67]}
deselectAll
pan 8.074 -3.547
selectInst {ATMP_reg[72]}
deselectAll
selectInst {ATMP_reg[72]}
deselectAll
selectInst {ATMP_reg[72]}
deselectAll
selectInst {ATMP_reg[69]}
deselectAll
selectInst {ATMP_reg[69]}
deselectAll
zoomOut
pan -14.497 5.506
pan -21.104 11.684
pan 0.183 12.357
pan 15.537 -15.904
zoomIn
selectInst maprca/FAI_62/U2
deselectAll
selectInst maprca/FAI_62/U2
deselectAll
pan 2.651 -1.142
zoomIn
selectWire 30.0800 49.5950 33.5700 49.6650 3 n386
deselectAll
selectWire 33.7150 47.6000 33.8550 51.1000 4 {BTMP[59]}
deselectAll
selectInst {ATMP_reg[59]}
deselectAll
selectInst {ATMP_reg[59]}
deselectAll
selectInst {BTMP_reg[59]}
deselectAll
selectWire 33.7150 47.6000 33.8550 51.1000 4 {BTMP[59]}
deselectAll
selectWire 31.4100 48.7550 32.4300 48.8250 3 CLK
deselectAll
selectWire 30.9150 48.8600 31.0550 50.2600 4 {STMP[61]}
zoomOut
zoomOut
zoomOut
pan -12.479 11.194
deselectAll
getPinAssignMode -pinEditInBatch -quiet
gui_select -rect {49.466 76.059 38.272 79.729}
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin {A[0]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[1]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[2]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[3]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[4]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[5]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[6]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[7]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[8]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[9]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[10]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[11]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[12]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[13]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[14]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[15]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[16]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[17]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[18]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[19]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[20]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[21]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[22]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[23]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[24]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[25]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[26]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[27]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[28]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[29]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[30]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[31]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[32]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[33]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[34]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[35]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[36]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[37]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[38]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[39]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[40]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[41]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[42]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[43]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[44]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[45]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[46]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[47]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[48]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[49]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[50]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[51]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[52]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[53]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[54]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[55]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[56]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[57]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[58]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[59]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[60]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[61]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[62]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[63]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[64]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[65]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[66]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[67]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[68]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[69]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[70]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[71]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[72]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[73]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[74]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[75]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[76]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[77]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[78]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[79]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[80]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[81]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[82]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[83]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[84]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[85]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[86]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[87]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[88]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[89]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[90]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[91]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[92]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[93]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[94]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[95]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[96]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[97]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[98]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[99]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[100]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[101]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[102]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[103]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[104]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[105]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[106]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[107]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[108]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[109]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[110]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[111]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[112]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[113]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[114]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[115]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[116]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[117]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[118]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[119]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[120]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[121]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[122]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[123]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[124]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[125]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[126]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {A[127]} -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin {B[0]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[1]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[2]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[3]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[4]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[5]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[6]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[7]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[8]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[9]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[10]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[11]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[12]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[13]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[14]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[15]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[16]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[17]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[18]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[19]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[20]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[21]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[22]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[23]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[24]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[25]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[26]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[27]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[28]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[29]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[30]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[31]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[32]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[33]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[34]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[35]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[36]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[37]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[38]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[39]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[40]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[41]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[42]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[43]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[44]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[45]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[46]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[47]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[48]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[49]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[50]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[51]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[52]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[53]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[54]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[55]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[56]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[57]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[58]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[59]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[60]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[61]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[62]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[63]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[64]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[65]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[66]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[67]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[68]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[69]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[70]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[71]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[72]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[73]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[74]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[75]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[76]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[77]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[78]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[79]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[80]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[81]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[82]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[83]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[84]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[85]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[86]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[87]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[88]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[89]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[90]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[91]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[92]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[93]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[94]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[95]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[96]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[97]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[98]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[99]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[100]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[101]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[102]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[103]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[104]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[105]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[106]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[107]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[108]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[109]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[110]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[111]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[112]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[113]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[114]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[115]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[116]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[117]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[118]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[119]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[120]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[121]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[122]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[123]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[124]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[125]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[126]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {B[127]} -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin Ci -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin CLK -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin Co -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin RST -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin {S[0]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[1]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[2]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[3]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[4]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[5]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[6]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[7]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[8]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[9]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[10]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[11]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[12]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[13]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[14]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[15]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[16]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[17]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[18]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[19]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[20]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[21]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[22]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[23]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[24]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[25]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[26]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[27]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[28]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[29]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[30]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[31]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[32]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[33]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[34]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[35]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[36]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[37]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[38]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[39]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[40]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[41]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[42]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[43]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[44]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[45]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[46]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[47]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[48]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[49]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[50]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[51]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[52]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[53]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[54]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[55]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[56]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[57]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[58]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[59]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[60]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[61]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[62]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[63]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[64]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[65]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[66]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[67]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[68]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[69]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[70]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[71]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[72]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[73]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[74]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[75]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[76]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[77]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[78]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[79]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[80]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[81]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[82]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[83]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[84]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[85]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[86]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[87]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[88]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[89]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[90]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[91]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[92]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[93]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[94]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[95]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[96]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[97]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[98]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[99]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[100]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[101]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[102]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[103]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[104]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[105]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[106]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[107]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[108]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[109]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[110]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[111]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[112]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[113]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[114]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[115]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[116]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[117]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[118]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[119]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[120]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[121]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[122]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[123]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[124]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[125]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[126]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[127]} -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
set ptngSprNoRefreshPins 1
setPtnPinStatus -cell SUM -pin {S[0]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[1]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[2]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[3]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[4]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[5]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[6]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[7]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[8]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[9]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[10]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[11]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[12]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[13]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[14]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[15]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[16]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[17]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[18]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[19]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[20]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[21]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[22]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[23]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[24]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[25]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[26]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[27]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[28]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[29]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[30]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[31]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[32]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[33]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[34]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[35]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[36]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[37]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[38]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[39]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[40]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[41]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[42]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[43]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[44]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[45]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[46]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[47]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[48]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[49]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[50]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[51]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[52]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[53]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[54]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[55]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[56]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[57]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[58]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[59]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[60]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[61]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[62]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[63]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[64]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[65]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[66]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[67]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[68]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[69]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[70]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[71]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[72]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[73]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[74]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[75]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[76]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[77]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[78]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[79]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[80]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[81]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[82]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[83]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[84]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[85]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[86]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[87]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[88]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[89]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[90]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[91]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[92]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[93]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[94]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[95]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[96]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[97]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[98]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[99]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[100]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[101]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[102]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[103]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[104]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[105]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[106]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[107]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[108]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[109]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[110]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[111]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[112]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[113]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[114]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[115]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[116]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[117]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[118]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[119]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[120]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[121]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[122]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[123]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[124]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[125]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[126]} -status unplaced -silent
setPtnPinStatus -cell SUM -pin {S[127]} -status unplaced -silent
set ptngSprNoRefreshPins 0
ptnSprRefreshPinsAndBlockages
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
zoomIn
pan 3.792 -22.082
pan 24.774 -5.138
pan -9.604 1.224
setLayerPreference mGrid -isVisible 1
setLayerPreference pGrid -isVisible 1
setLayerPreference userGrid -isVisible 1
setLayerPreference iGrid -isVisible 1
setLayerPreference fmGrid -isVisible 1
setLayerPreference fiGrid -isVisible 1
setLayerPreference fpGrid -isVisible 1
setLayerPreference gcell -isVisible 1
setLayerPreference trimGridObj -isVisible 1
setLayerPreference pgViaGridObj -isVisible 1
setLayerPreference mGrid -isVisible 0
setLayerPreference pGrid -isVisible 0
setLayerPreference userGrid -isVisible 0
setLayerPreference iGrid -isVisible 0
setLayerPreference fmGrid -isVisible 0
setLayerPreference fiGrid -isVisible 0
setLayerPreference fpGrid -isVisible 0
setLayerPreference gcell -isVisible 0
setLayerPreference trimGridObj -isVisible 0
setLayerPreference pgViaGridObj -isVisible 0
setLayerPreference pinDensityMap -isVisible 1
setLayerPreference pinDensityMap -isVisible 0
pan -5.668 -2.548
pan -1.820 -1.144
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 1.0 -pin Ci
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 1.0 -pin CLK
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 2 -spreadType center -spacing 1.0 -pin Co
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 1.0 -pin RST
setPinAssignMode -pinEditInBatch true
editPin -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch false
zoomOut
pan -10.607 18.406
pan -5.615 17.627
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
pan -1.404 -9.515
pan 1.872 2.808
zoomIn
zoomIn
pan 6.187 -5.598
pan 1.976 -4.107
pan -0.260 -4.575
pan -0.018 -3.345
pan -0.104 -6.101
pan -0.069 -5.321
pan -0.070 -4.436
pan -0.226 -1.283
selectWire 35.4000 40.5300 35.4700 77.3150 2 {A[56]}
deselectAll
selectObject IO_Pin {A[57]}
deselectAll
zoomOut
zoomOut
pan -8.891 35.252
zoomIn
zoomIn
pan -12.098 -4.628
pan -8.665 -2.253
pan -9.324 -3.171
zoomOut
zoomOut
pan 18.406 10.607
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin Ci
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin CLK
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 2 -spreadType center -spacing 0.19 -pin Co
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Bottom -layer 1 -spreadType center -spacing 0.14 -pin RST
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -unit MICRON -spreadDirection clockwise -side Top -layer 1 -spreadType center -spacing 0.14 -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch false
zoomIn
zoomIn
pan 3.432 -5.841
pan -1.265 -3.969
pan 0.537 -4.524
pan 0.607 -2.599
zoomOut
pan 5.356 -17.003
pan 4.784 -0.104
zoomOut
zoomOut
pan -6.551 39.308
zoomIn
zoomIn
zoomOut
pan 2.027 -38.372
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Left -layer 1 -spreadType side -pin {{B[0]} {B[1]} {B[2]} {B[3]} {B[4]} {B[5]} {B[6]} {B[7]} {B[8]} {B[9]} {B[10]} {B[11]} {B[12]} {B[13]} {B[14]} {B[15]} {B[16]} {B[17]} {B[18]} {B[19]} {B[20]} {B[21]} {B[22]} {B[23]} {B[24]} {B[25]} {B[26]} {B[27]} {B[28]} {B[29]} {B[30]} {B[31]} {B[32]} {B[33]} {B[34]} {B[35]} {B[36]} {B[37]} {B[38]} {B[39]} {B[40]} {B[41]} {B[42]} {B[43]} {B[44]} {B[45]} {B[46]} {B[47]} {B[48]} {B[49]} {B[50]} {B[51]} {B[52]} {B[53]} {B[54]} {B[55]} {B[56]} {B[57]} {B[58]} {B[59]} {B[60]} {B[61]} {B[62]} {B[63]} {B[64]} {B[65]} {B[66]} {B[67]} {B[68]} {B[69]} {B[70]} {B[71]} {B[72]} {B[73]} {B[74]} {B[75]} {B[76]} {B[77]} {B[78]} {B[79]} {B[80]} {B[81]} {B[82]} {B[83]} {B[84]} {B[85]} {B[86]} {B[87]} {B[88]} {B[89]} {B[90]} {B[91]} {B[92]} {B[93]} {B[94]} {B[95]} {B[96]} {B[97]} {B[98]} {B[99]} {B[100]} {B[101]} {B[102]} {B[103]} {B[104]} {B[105]} {B[106]} {B[107]} {B[108]} {B[109]} {B[110]} {B[111]} {B[112]} {B[113]} {B[114]} {B[115]} {B[116]} {B[117]} {B[118]} {B[119]} {B[120]} {B[121]} {B[122]} {B[123]} {B[124]} {B[125]} {B[126]} {B[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Top -layer 1 -spreadType side -pin {{A[0]} {A[1]} {A[2]} {A[3]} {A[4]} {A[5]} {A[6]} {A[7]} {A[8]} {A[9]} {A[10]} {A[11]} {A[12]} {A[13]} {A[14]} {A[15]} {A[16]} {A[17]} {A[18]} {A[19]} {A[20]} {A[21]} {A[22]} {A[23]} {A[24]} {A[25]} {A[26]} {A[27]} {A[28]} {A[29]} {A[30]} {A[31]} {A[32]} {A[33]} {A[34]} {A[35]} {A[36]} {A[37]} {A[38]} {A[39]} {A[40]} {A[41]} {A[42]} {A[43]} {A[44]} {A[45]} {A[46]} {A[47]} {A[48]} {A[49]} {A[50]} {A[51]} {A[52]} {A[53]} {A[54]} {A[55]} {A[56]} {A[57]} {A[58]} {A[59]} {A[60]} {A[61]} {A[62]} {A[63]} {A[64]} {A[65]} {A[66]} {A[67]} {A[68]} {A[69]} {A[70]} {A[71]} {A[72]} {A[73]} {A[74]} {A[75]} {A[76]} {A[77]} {A[78]} {A[79]} {A[80]} {A[81]} {A[82]} {A[83]} {A[84]} {A[85]} {A[86]} {A[87]} {A[88]} {A[89]} {A[90]} {A[91]} {A[92]} {A[93]} {A[94]} {A[95]} {A[96]} {A[97]} {A[98]} {A[99]} {A[100]} {A[101]} {A[102]} {A[103]} {A[104]} {A[105]} {A[106]} {A[107]} {A[108]} {A[109]} {A[110]} {A[111]} {A[112]} {A[113]} {A[114]} {A[115]} {A[116]} {A[117]} {A[118]} {A[119]} {A[120]} {A[121]} {A[122]} {A[123]} {A[124]} {A[125]} {A[126]} {A[127]}}
setPinAssignMode -pinEditInBatch true
editPin -pinWidth 0.07 -pinDepth 0.07 -fixOverlap 1 -spreadDirection clockwise -side Right -layer 1 -spreadType side -pin {{S[0]} {S[1]} {S[2]} {S[3]} {S[4]} {S[5]} {S[6]} {S[7]} {S[8]} {S[9]} {S[10]} {S[11]} {S[12]} {S[13]} {S[14]} {S[15]} {S[16]} {S[17]} {S[18]} {S[19]} {S[20]} {S[21]} {S[22]} {S[23]} {S[24]} {S[25]} {S[26]} {S[27]} {S[28]} {S[29]} {S[30]} {S[31]} {S[32]} {S[33]} {S[34]} {S[35]} {S[36]} {S[37]} {S[38]} {S[39]} {S[40]} {S[41]} {S[42]} {S[43]} {S[44]} {S[45]} {S[46]} {S[47]} {S[48]} {S[49]} {S[50]} {S[51]} {S[52]} {S[53]} {S[54]} {S[55]} {S[56]} {S[57]} {S[58]} {S[59]} {S[60]} {S[61]} {S[62]} {S[63]} {S[64]} {S[65]} {S[66]} {S[67]} {S[68]} {S[69]} {S[70]} {S[71]} {S[72]} {S[73]} {S[74]} {S[75]} {S[76]} {S[77]} {S[78]} {S[79]} {S[80]} {S[81]} {S[82]} {S[83]} {S[84]} {S[85]} {S[86]} {S[87]} {S[88]} {S[89]} {S[90]} {S[91]} {S[92]} {S[93]} {S[94]} {S[95]} {S[96]} {S[97]} {S[98]} {S[99]} {S[100]} {S[101]} {S[102]} {S[103]} {S[104]} {S[105]} {S[106]} {S[107]} {S[108]} {S[109]} {S[110]} {S[111]} {S[112]} {S[113]} {S[114]} {S[115]} {S[116]} {S[117]} {S[118]} {S[119]} {S[120]} {S[121]} {S[122]} {S[123]} {S[124]} {S[125]} {S[126]} {S[127]}}
setPinAssignMode -pinEditInBatch false
pan -5.304 32.757
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
pan 9.515 -0.312
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
zoomIn
zoomIn
zoomIn
zoomOut
zoomOut
zoomOut
pan 1.404 -6.240
zoomIn
zoomIn
pan 0.832 -2.617
zoomOut
pan -0.260 -3.484
pan -3.328 -11.907
pan 8.059 -4.992
zoomIn
pan 7.539 -2.496
selectInst {ATMP_reg[75]}
deselectAll
selectInst {ATMP_reg[75]}
deselectAll
selectInst {ATMP_reg[75]}
zoomOut
zoomIn
deselectAll
selectInst FILLER_2411
deselectAll
pan 1.607 -2.538
zoomOut
pan -0.575 4.905
pan -0.398 5.702
pan -4.641 4.287
fit
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
zoomIn
zoomIn
zoomIn
selectWire 39.7700 38.8150 39.8400 41.5450 2 FE_OFN6_n386
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectInst {ATMP_reg[90]}
deselectAll
selectWire 39.0350 24.2200 39.1750 56.7000 4 FE_PHN456_B_94
zoomOut
zoomOut
zoomOut
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
pan 2.378 -2.675
fit
saveDesign SUM_RCA
win
selectWire 47.9400 50.9950 48.0100 51.9050 2 {maprca/CTMP[85]}
deselectAll
set_analysis_view -setup {default} -hold {default}
reset_parasitics
extractRC
rcOut -setload SUM.setload -rc_corner high
rcOut -setres SUM.setres -rc_corner high
rcOut -spf SUM.spf -rc_corner high
rcOut -spef SUM.spef -rc_corner high
reset_parasitics
extractRC
rcOut -setload SUM.setload -rc_corner standard
rcOut -setres SUM.setres -rc_corner standard
rcOut -spf SUM.spf -rc_corner standard
rcOut -spef SUM.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -slackReports -numPaths 50 -prefix SUM_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix SUM_postRoute -outDir timingReports
gui_select -rect {27.743 54.869 48.763 48.377}
get_time_unit
report_timing -machine_readable -max_paths 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
selectInst maprca/FAI_41/U4
zoomSelected
editSelect -net maprca/FAI_41/n2
zoomSelected
selectInst maprca/FAI_41/U5
zoomSelected
editSelect -net {BTMP[0]}
zoomSelected
selectInst maprca/FAI_1/U2
zoomSelected
editSelect -net maprca/FAI_1/n3
zoomSelected
selectInst {BTMP_reg[0]}
zoomSelected
editSelect -net {BTMP[0]}
zoomSelected
fit
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile SUM.gateCount
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network SUM.sdf
