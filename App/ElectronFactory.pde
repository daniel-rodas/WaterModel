
public class ElectronFactory extends ParticleFactory
{
  ElectronFactory(PVector loc)
  {
    super(loc);
  }

  public Particle getParticle() 
  {
    return new ElectronParticle(location);
  }
}

