
public class HydrogenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface 
{
  /**
   *
   */
  protected int numberOfProtons = 1;

  protected int numberOfElectrons = 1;

  protected int numberOfNeutrons = 0;

  /**
   *
   * @return Atom
   */
  @Override
  public AtomInterface getAtom( PVector loc )
  {
    location.set(loc);
    getParticles(numberOfProtons, numberOfElectrons, numberOfNeutrons);
    return new HydrogenAtom(loc, protons, electrons, neutrons );
  }
}


