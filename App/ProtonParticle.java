import processing.core.PApplet;

public class ProtonParticle extends Particle {
   ProtonParticle (ParticlePApplet pApp)
    {
      super(pApp);
    }
    
    public void init()
    {
      pApplt.init();
    }
    
    public void setup()
    {
      pApplt.setup();
    }
    
    public void draw()
    {
      pApplt.draw();
    }
    
    public void printThisPApplet()
    {
      System.out.print(pApplt);
    }
}
