
public class WaterMoleculeFactory extends MoleculeBuilderFactory implements MoleculeBuilderInterface
{
  protected ArrayList<AtomInterface> oxygens = new ArrayList<AtomInterface>();

  protected ArrayList<AtomInterface> hydrogens = new ArrayList<AtomInterface>();

  protected Molecule molecule;

  /**
   *
   * @return Molecule
   */
  public Molecule getMolecule( PVector loc ) 
  {
    location.set( loc );
    createAtoms( 1, new OxygenAtomFactory(), oxygens ) ;
    createAtoms( 2, new HydrogenAtomFactory(), hydrogens ) ;
    
    molecule = new WaterMolecule( loc, hydrogens, oxygens ); 
    molecule.bonds.add( makeBond( oxygens.get(0), hydrogens.get(0) ) );
    molecule.bonds.add( makeBond( oxygens.get(0), hydrogens.get(1) ) );

    return molecule;
  }
}

