
public class ElectronParticle extends Particle {

    private int potential;
    
    ElectronParticle(){
      
      location[0] = random( 60, 500 ); // X
      location[1] = random( 80, 300 ); // Y
      location[2] = random( 4, 9  ); // Width
      location[3] = location[2]; // Height
      
    particleColor[0] = 255; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(10, 150); // Alpha 
  }
    public void jump() {
    }
    
    public void display(){
      System.out.print("Hellow!");
    }
}
