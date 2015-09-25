
public class ProtonParticle extends Particle {
  
  ProtonParticle(){
    
      location[0] = (int) Math.floor( random( 90 ) ); // X
      location[1] = (int) Math.floor( random( 77 ) ); // Y
      location[2] = (int) Math.floor( random( 16 ) ); // Width
      location[3] = (int) Math.floor( random( 20 ) ); // Height
    
    particleColor[0] = 30; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 250; // Blue
    particleColor[3] = random(255); // Alpha 
    draw();  
  }

    
    public void changeColor()
    {
      particleColor[0] = random(255);
      particleColor[1] = random(255);
      particleColor[2] = random(255);
      particleColor[3] = random(255);
    }
    
    public void goCrazy()
    {
      
    }
}
