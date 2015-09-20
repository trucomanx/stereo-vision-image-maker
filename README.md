# Vision
gerador de imagens para o teste de stereo-vision.

## Estrutura de diretórios

- **`script/Make-All.sh`** Cria todas as imagens. É necessário ter instalado o 
programa POVRAY. Este arquivo só funciona em sistemas operativos basados em 
GNU/Linux.
- **`script/Clean-All.sh`** Apaga todas as imagens geradas. Este arquivo só 
funciona em sistemas operativos basados em GNU/Linux.
- **`script/mono-tabuleiro`**
    - **`tabuleiro.pov`** Código fonte da descrição de um tabuleiro.
    - **`Make-tabuleiro.sh`** Cria uma imagem a partir do arquivo 
`tabuleiro.pov`. O arquivo é criado numa pasta chamada `tabuleiro`.
    - **`Clean-tabuleiro.sh`** Apaga a imagem gerada a partir dos arquivos 
`tabuleiro.pov` e `Make-tabuleiro.sh`.
- **`script/stereo-tabuleiro*`**
    - **`image.png`** É uma imagem criada a partir da fonte `image.dia`. Esta 
imagem explica como é a cena gerada pelos arquivos `tabuleiro_right.sh` e 
`tabuleiro_left.sh`.
    - **`tabuleiro_right.sh`** Cria imagens de um tabuleiro a partir do arquivo 
fonte `tabuleiro_right.pov`. As imagens são salvadas na pasta `tabuleiro_right`.
    - **`tabuleiro_left.sh`** Cria imagens de um tabuleiro a partir do arquivo 
fonte `tabuleiro_left.pov`. As imagens são salvadas na pasta `tabuleiro_left`.
    - **`Clean-All.sh`** Apaga todas as imagens geradas por `tabuleiro_right.sh` 
e `tabuleiro_left.sh` desde `tabuleiro_right.pov`e `tabuleiro_left.pov` 
respetivamente.
