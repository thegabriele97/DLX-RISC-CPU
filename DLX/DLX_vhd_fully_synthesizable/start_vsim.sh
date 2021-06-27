#!/bin/sh

rm -rf work

source /software/scripts/init_questa10.7c

vlib work
vsim

rm -rf work
rm vsim.wlf
