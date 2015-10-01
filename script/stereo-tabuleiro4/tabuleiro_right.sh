#!/bin/bash

#BMP
#Output_File_Type=S

mkdir tabuleiro_right

for num in -5 -4 -3 -2 -1 0 1 2 3 4 5
do
	povray	Output_File_Name=tabuleiro_right/tabuleiro_right$num.png \
			Input_File_Name=tabuleiro_right.pov \
			+K$num \
			Output_File_Type=N \
			+W400 +H300
done
