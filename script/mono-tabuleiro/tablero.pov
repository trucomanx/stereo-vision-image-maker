#include "colors.inc"
#include "textures.inc"
#include "shapes.inc" 
#include "glass.inc" 
#include "metals.inc" 
#include "woods.inc" 
#include "stones.inc"    // pre-defined scene elements 

#declare MEDIAH=0.6;
#declare PROFUNDO=2.0;
#declare ANGULO_CAMARA=75;

camera {
   location  <0, MEDIAH, 0>
   look_at   <0, MEDIAH, PROFUNDO>
   angle ANGULO_CAMARA
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
	<-MEDIAH, -MEDIAH, -0.01>, < MEDIAH, MEDIAH, 0.01>
	texture {
		pigment {
			checker
			color rgb<1.0, 1.0, 1.0>
			color rgb<0.0, 0.0, 0.0>
		}
		scale 0.20
	}
	translate <0.0, MEDIAH, PROFUNDO>
}


light_source {
   <0.0, 10*MEDIAH, 0>
   color White
} 
