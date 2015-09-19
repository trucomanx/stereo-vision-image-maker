#!/bin/bash

cd mono-tabuleiro/
./Make-tabuleiro.sh
cd ..

cd stereo-tabuleiro1/
./tabuleiro_right.sh
./tabuleiro_left.sh
cd ..

cd stereo-tabuleiro2/
./tabuleiro_right.sh
./tabuleiro_left.sh
cd ..

cd stereo-tabuleiro3/
./tabuleiro_right.sh
./tabuleiro_left.sh
cd ..
