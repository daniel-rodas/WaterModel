
public abstract class ParticleFactory
{
  protected PVector location = new PVector();
  ParticleFactory( PVector loc )
  {
    location.set( loc );
  }
  public abstract Particle getParticle();
}

