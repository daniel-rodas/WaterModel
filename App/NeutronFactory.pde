
public class NeutronFactory extends ParticleFactory
{
  NeutronFactory( PVector loc )
  {
    super(loc);
  }

  public Particle getParticle() 
  {
    return new NeutronParticle( location );
  }
}

