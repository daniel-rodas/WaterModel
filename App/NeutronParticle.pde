
public class NeutronParticle extends Particle {
  
      NeutronParticle(){
      
      location[0] = random( - 30, 30 ); // X
      location[1] = random( - 30, 30 ); // Y
      location[2] = random( 5  ); // Width
      location[3] = random( 9  ); // Height
      
    particleColor[0] = 255; // Red
    particleColor[1] = 245; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(255); // Alpha 
    draw();  
  }

}
