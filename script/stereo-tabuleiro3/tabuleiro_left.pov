#include "colors.inc"
#include "textures.inc"
#include "shapes.inc" 
#include "glass.inc" 
#include "metals.inc" 
#include "woods.inc" 
#include "stones.inc"    // pre-defined scene elements 

////////////////////////////////////////////////////////////////////////////////

// TABULEIRO
#declare MEDIAH=0.6;	// Tabuleiro de 0.6*2 de lado -> 1.2m de lado
#declare PROFUNDO=2.0;	// Que tao longue esta o tabuleiro: 2.0m

// CAMERA
#declare ALT_CAMARA=MEDIAH;	// Camera a MEDIAH altura.
#declare POS_CAMARA=-0.3;	// Camera -0.3m na dereita
#declare ANG_CAMARA=75;

////////////////////////////////////////////////////////////////////////////////

camera {
   location  <POS_CAMARA, ALT_CAMARA, 0>
   look_at   <POS_CAMARA, ALT_CAMARA, PROFUNDO>
   angle ANG_CAMARA
}

// Piso
plane {//normal=<0, 1, 0>	y=0
	<0, 1, 0>, 0
	texture { T_Stone25 scale 4 }

}

// Pared
plane {//normal=<0, 1, 0>	y=0
	<0, 0, 1>, PROFUNDO*2
	texture { DMFLightOak }

}


box {
	<-MEDIAH, -MEDIAH, -0.01>, < MEDIAH, MEDIAH*0.665, 0.01>
	texture {
		pigment {
			checker
			color rgb<1.0, 1.0, 1.0>
			color rgb<0.0, 0.0, 0.0>
		}
		scale 0.20
	}
	rotate <0, clock, 0>
	translate <0.0, MEDIAH, PROFUNDO>

}


light_source {
   <0.0, 10*MEDIAH, 0>
   color White
} 
