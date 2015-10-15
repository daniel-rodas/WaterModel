
public class NeutronParticle extends Particle 
{
  NeutronParticle(PVector loc)
  {
    super(loc);
    
    size[0] = PI; // 1.0086654 * 2 ; // Width
    size[1] = size[0] ;

    particleColor[0] = 55; // Red
    particleColor[1] = 245; // Green
    particleColor[2] = 50; // Blue
    particleColor[3] = random(45); // Alpha
  }
}

