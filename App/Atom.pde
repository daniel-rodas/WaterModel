
abstract public class Atom extends PVector implements AtomInterface 
{
  protected ArrayList<Particle> protons = new ArrayList<Particle>();
  protected ArrayList<Particle> electrons = new ArrayList<Particle>();
  protected ArrayList<Particle> neutrons = new ArrayList<Particle>();

  protected Particle p;

  private Object charge;

  public Atom( PVector loc, ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ) 
  {
    this.set( loc );
    protons = prot;
    electrons = elec;
    neutrons = neut;
  }

  public void draw()
  {
    drawParticles( electrons );
    drawParticles( neutrons );
    drawParticles( protons );
  }

  public ArrayList<Particle> getProtons() 
  {
    return protons;
  }

  public ArrayList<Particle> getElectrons() 
  {
    return electrons;
  }

  public ArrayList<Particle> getNeutrons() 
  {
    return neutrons;
  }
  
  public PVector getLocation()
  {
    return this.get();
  }
  
  public void setLocation(PVector loc)
  {
    this.set(loc);
  }

  public void drawParticles( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.draw();
    }
  }
}

