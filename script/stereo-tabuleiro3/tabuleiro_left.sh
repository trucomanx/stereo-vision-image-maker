#!/bin/bash

#BMP
#Output_File_Type=S

mkdir tabuleiro_left

for num in -5 -4 -3 -2 -1 0 1 2 3 4 5
do
    povray	Output_File_Name=tabuleiro_left/tabuleiro_left$num.png \
			Input_File_Name=tabuleiro_left.pov \
			+K$num \
			Output_File_Type=N \
			+W400 +H300
done


