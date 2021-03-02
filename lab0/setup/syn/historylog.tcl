gui_start
help
analyze -library WORK -format vhdl {/home/ms21.16/ms-lab/lab0/setup/syn/constants.vhd}
analyze -library WORK -format vhdl {/home/ms21.16/ms-lab/lab0/setup/syn/iv.vhd /home/ms21.16/ms-lab/lab0/setup/syn/nd2.vhd /home/ms21.16/ms-lab/lab0/setup/syn/mux21.vhd}
analyze -library WORK -format vhdl {/home/ms21.16/ms-lab/lab0/setup/syn/nd2.vhd /home/ms21.16/ms-lab/lab0/setup/syn/iv.vhd /home/ms21.16/ms-lab/lab0/setup/syn/mux21.vhd}
analyze -library WORK -format vhdl {/home/ms21.16/ms-lab/lab0/setup/syn/iv.vhd /home/ms21.16/ms-lab/lab0/setup/syn/nd2.vhd /home/ms21.16/ms-lab/lab0/setup/syn/mux21.vhd}
elaborate MUX21 -architecture BEHAVIORAL_1 -library WORK
::cmenus::create_schematic
change_selection -name __slctBus18 -type {cell design} _sel280
change_selection -name __slctBus23 -type {cell design} _sel329
change_selection -name __slctBus74 -type {cell design} _sel1721
change_selection -name __slctBus171 -type {cell design} _sel1888
change_selection -name __slctBus176 -type {cell design} _sel2134
change_selection -name __slctBus922 -type {cell design} _sel2623
compile -exact_map
::cmenus::create_schematic
write -hierarchy -format ddc
write -hierarchy -format ddc
write -hierarchy -format ddc
write -hierarchy -format ddc -output /home/ms21.16/ms-lab/lab0/setup/syn/mux1.ddc
read_file -format ddc {/home/ms21.16/ms-lab/lab0/setup/syn/mux1.ddc}
write -hierarchy -format vhdl -output /home/ms21.16/ms-lab/lab0/setup/syn/mux1.vhdl