
public class ProtonParticle extends Particle 
{
  ProtonParticle( PVector loc )
  {
    super(loc);
    
    size[0] = TWO_PI * 0.8; // 2.345243272; // Width
    size[1] = size[0] ;

    particleColor[0] = 30; // Red
    particleColor[1] = 45; // Green
    particleColor[2] = 250; // Blue
    particleColor[3] = random(10, 30); // Alpha
  }
}

