import processing.core.PApplet;

public class ElectronParticle extends Particle {

    private int potential;
    
    ElectronParticle (ParticlePApplet pApp)
    {
      super(pApp);
    }

    public void jump() {
    }
    
    public void display(){
      System.out.print("Hellow!");
    }
}
