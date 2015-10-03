
public class NeutronParticle extends Particle {
  
      NeutronParticle(){
      
      location[0] = random( 20, 30 ); // X
      location[1] = random( 10, 40 ); // Y
      location[2] = random( 9  ); // Width
      location[3] = location[2]; // Height
      
    particleColor[0] = 55; // Red
    particleColor[1] = 245; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(100); // Alpha   
  }

}
