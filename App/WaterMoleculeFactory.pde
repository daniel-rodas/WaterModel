
public class WaterMoleculeFactory extends MoleculeBuilderFactory implements MoleculeBuilderInterface {
    
    protected ArrayList<AtomInterface> oxygens = new ArrayList<AtomInterface>();
    
    protected ArrayList<AtomInterface> hydrogens = new ArrayList<AtomInterface>();
    
    protected Molecule molecule;
    
    /**
     *
     * @return Molecule
     */
    public Molecule getMolecule() {
        createAtoms( 2 , new HydrogenAtomFactory() , hydrogens ) ;
        createAtoms( 1 , new OxygenAtomFactory() , oxygens ) ;
        
        molecule = new WaterMolecule( hydrogens, oxygens );    
        molecule.bonds.add( makeBond( oxygens.get(0) , hydrogens.get(0) ) );
        molecule.bonds.add( makeBond( oxygens.get(0) , hydrogens.get(1) ) );
        
        return molecule;
  
    }

    /**
     *
     * @return ArrayList<ArrayList<AtomInterface>> 
     */

    @Override
    public void laugh() {
        System.out.print("Water Molecules Laughing!");
    }

}
