#!/bin/bash
for num in -5 -4 -3 -2 -1 0 1 2 3 4 5
do
	povray Output_File_Name=tablero_right/tablero_right$num.png Input_File_Name=tablero_right.pov +K$num
done
