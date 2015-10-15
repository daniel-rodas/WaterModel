
public class ProtonFactory extends ParticleFactory 
{
  ProtonFactory(PVector loc)
  {
    super(loc);
  }

  public Particle getParticle() 
  {
    return new ProtonParticle(location);
  }
}

