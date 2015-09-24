import processing.core.PApplet;

public class Particle implements PAppletInterface {
  
  public ParticlePApplet pApplt;
  
  Particle(ParticlePApplet pApp){
    pApplt = pApp;
  }
        
  public PApplet getPApplet()
  {
    return (PApplet) pApplt;
  }
}
