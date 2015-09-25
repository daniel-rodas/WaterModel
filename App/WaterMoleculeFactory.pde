
public class WaterMoleculeFactory extends MoleculeBuilderFactory implements MoleculeBuilderInterface {
    
    protected ArrayList<AtomInterface> oxygens = new ArrayList<AtomInterface>();
    
    protected ArrayList<AtomInterface> hydrogens = new ArrayList<AtomInterface>();
    
    /**
     *
     * @return Molecule
     */
    public Molecule getMolecule() {
        createAtoms( 2 , new HydrogenAtomFactory() , hydrogens ) ;
        createAtoms( 1 , new OxygenAtomFactory() , oxygens ) ;
        
        return new WaterMolecule( hydrogens, oxygens );
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
