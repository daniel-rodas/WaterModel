
public class ElectronParticle extends Particle {

    private int potential;
    
    ElectronParticle(){
      
      location[0] = random( 300 ); // X
      location[1] = random( 300 ); // Y
      location[2] = random( 5  ); // Width
      location[3] = random( 5  ); // Height
      
    particleColor[0] = 255; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(255); // Alpha 
    draw();  
  }
    public void jump() {
    }
    
    public void display(){
      System.out.print("Hellow!");
    }
}
