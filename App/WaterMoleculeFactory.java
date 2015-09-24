
import java.util.ArrayList;

public class WaterMoleculeFactory extends MoleculeBuilderFactory implements MoleculeBuilderInterface {
    
    protected static ArrayList<AtomInterface> oxygens = new ArrayList<AtomInterface>();
    
    protected static ArrayList<AtomInterface> hydrogens = new ArrayList<AtomInterface>();
    
    /**
     *
     * @return Molecule
     */
    public static Molecule getMolecule() {
        MoleculeBuilderFactory.createAtoms( 2 , new HydrogenAtomFactory() , hydrogens ) ;
        MoleculeBuilderFactory.createAtoms( 1 , new OxygenAtomFactory() , oxygens ) ;
//        
//        WaterMoleculeFactory.atoms.add(oxygens);
//        WaterMoleculeFactory.atoms.add(hydrogens);
        
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
