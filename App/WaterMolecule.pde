
public class WaterMolecule extends Molecule
{
  protected ArrayList<AtomInterface> hydrogens;  
  protected ArrayList<AtomInterface> oxygens;
  protected OxygenAtom O1;
  protected HydrogenAtom H1;
  protected HydrogenAtom H2;
  private int atomicNumber;

  WaterMolecule( PVector loc, ArrayList<AtomInterface> hydros, ArrayList<AtomInterface> oxys) 
  {
    super( loc );
    hydrogens =  hydros;
    oxygens =  oxys;
    O1 = (OxygenAtom)   getOxygenOne();
    H1 = (HydrogenAtom) getHydrogenOne();
    H2 = (HydrogenAtom) getHydrogenTwo();
  }

  public int getAtomicNumber() {
    return atomicNumber;
  }

  void draw() 
  {
    drawAtoms( hydrogens );
    drawAtoms( oxygens );
  }

  public AtomInterface getHydrogen(int i ) 
  {
    return hydrogens.get(i);
  }

  public AtomInterface getOxygen(int i ) 
  {
    return oxygens.get(i);
  }

  public AtomInterface getHydrogenOne()
  {
    return hydrogens.get(0);
  }

  public AtomInterface getHydrogenTwo()
  {
    return hydrogens.get(1);
  }

  public AtomInterface getOxygenOne()
  {
    return oxygens.get(0);
  }

  void Explode()
  {
    ArrayList<Particle> electrons = new ArrayList<Particle>();

    PVector lastLoc = new PVector() ;
    for (int i = 0; i <  hydrogens.size (); i++) 
    {
      HydrogenAtom hydrogen = (HydrogenAtom) hydrogens.get(i);
      electrons = hydrogen.getElectrons();
      lastLoc.set( random(width), random(height) );
      for ( int f = 0; f <  electrons.size (); f++) 
      {
        print("Electron Particles are exploding ! \n ");
        p = electrons.get(f);
        if ( p.dist( lastLoc ) < 20 &&  p.dist( lastLoc ) > 10 )
        {
          fill( p.y, PI, p.x, p.y);
          arc( ( width /p.x ), ( height / p.y ), p.y, p.y, HALF_PI, p.y * PI );
          arc(50, ( height / p.y ), 60, ( width / p.x ), HALF_PI, PI);
          arc( p.y, ( width / p.x ), ( height / p.y ), 70, PI, PI+QUARTER_PI);
          arc(( width / p.x ), 55, ( width / p.x ), ( height / p.y ), PI+QUARTER_PI, TWO_PI);
        }

        lastLoc = p.getLocation();
      }
    }
  }

  public ArrayList<AtomInterface> getAtoms()
  {
    ArrayList<AtomInterface> atms = new ArrayList<AtomInterface>();

    for (int i = 0; i < hydrogens.size (); i++) 
    {
      atms.add( hydrogens.get(i) );
    }

    for (int i = 0; i < oxygens.size (); i++) 
    {
      atms.add(  oxygens.get(i) );
    }

    return atms;
  }
}

