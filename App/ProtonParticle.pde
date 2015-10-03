
public class ProtonParticle extends Particle {
  
  ProtonParticle(){

      location[0] = random( 3,  40 ) ; // X
      location[1] = random( 15 , 55) ; // Y
      location[2] =   random( 11, 22 ) ; // Width
      location[3] =  location[2] ; // Height
    
    particleColor[0] = 30; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 250; // Blue
    particleColor[3] = random(60 ,100); // Alpha 
 
  }
    
    public void goCrazy()
    {
      
    }
}
