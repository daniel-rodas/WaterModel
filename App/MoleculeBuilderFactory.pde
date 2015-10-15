

public class MoleculeBuilderFactory 
{  
  protected PVector location = new PVector();

  /**
   *
   * @param numberOfAtoms
   * @param factory
   * @param newAtoms
   */
  protected void createAtoms( int numberOfAtoms, AtomBuilderInterface factory, ArrayList<AtomInterface> newAtoms ) 
  {    
    PVector loc = new PVector();
    for (int i = 0; i < numberOfAtoms; i++) 
    {
      loc.set(  location.x + random(60,80) * cos( random(1, 2) + i * 45 ), location.y + random(60,90) * sin( ( random(1, 2) + i * 45 ) )  );
      newAtoms.add( factory.getAtom(loc) );
    }
  }

  protected MolecularBond makeBond( AtomInterface atomA, AtomInterface atomB ) 
  {
    return new MolecularBond( atomA, atomB );
  }
}

