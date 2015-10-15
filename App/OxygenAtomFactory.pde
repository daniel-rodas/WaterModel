
public class OxygenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface 
{

  protected int numberOfProtons = 8;

  protected int numberOfElectrons = 8;

  protected int numberOfNeutrons = 8;

  /**
   *
   * @return Atom
   */
  @Override
    public AtomInterface getAtom( PVector loc ) 
  {
    location = loc;
    getParticles( numberOfProtons, numberOfElectrons, numberOfNeutrons );
    return new OxygenAtom(loc, protons, electrons, neutrons );
  }
}

