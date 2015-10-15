
public class AtomBuilderFactory 
{
  protected PVector location = new PVector();  
  protected ArrayList<Particle> protons = new ArrayList<Particle>();
  protected ArrayList<Particle> electrons = new ArrayList<Particle>();
  protected ArrayList<Particle> neutrons = new ArrayList<Particle>();

  public void getParticles(int numberOfProtons, int numberOfElectrons, int numberOfNeutrons ) 
  {
    createProtonParticles   ( numberOfProtons, new ProtonFactory(location) );
    createElectronParticles ( numberOfElectrons, new ElectronFactory(location) );
    createNeutronParticles  ( numberOfNeutrons, new NeutronFactory(location) );
  }

  protected void createProtonParticles( int numberOfParticles, ParticleFactory factory  ) 
  {               
    for (int i = 0; i < numberOfParticles; i++)
    {
      protons.add( factory.getParticle() );
    }
  }

  protected void createElectronParticles( int numberOfParticles, ParticleFactory factory   ) 
  {           
    for (int i = 0; i < numberOfParticles; i++)
    {
      electrons.add( factory.getParticle() );
    }
  }

  protected void createNeutronParticles( int numberOfParticles, ParticleFactory factory  ) 
  {        
    for (int i = 0; i < numberOfParticles; i++)
    {
      neutrons.add( factory.getParticle() );
    }
  }
}

