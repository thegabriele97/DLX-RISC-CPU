#!/bin/sh

if [ ! -r "$1" ]; then
	echo "Usage: $0 <dlx_assembly_file>.asm"
	exit 1
fi

./assembler.sh $1

filename=$(basename $1)
filename="${filename%.*}"

assembler.bin/conv2memory ${1%/*}/$filename.bin > Src/test_bench_and_memory/mems/${filename}.asm.mem

rm ${1%/*}/$filename.bin
rm ${1%/*}/$filename.list
rm ${1%/*}/${filename}_dump.txt
