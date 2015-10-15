
public class ElectronParticle extends Particle 
{
  private int potential;

  ElectronParticle ( PVector loc )
  {
    super(loc);
    
    size[0] = PI / 2; // 1.34; // Width
    size[1] = size[0]; // Height

    particleColor[0] = 255; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(30, 50); // Alpha
  }
}

