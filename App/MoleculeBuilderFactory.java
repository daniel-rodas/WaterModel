
import java.util.ArrayList;

public class MoleculeBuilderFactory {
    
//    protected static ArrayList<ArrayList<AtomInterface>> atoms = new ArrayList<ArrayList<AtomInterface>>();
    
    /**
     *
     * @param numberOfAtoms
     * @param factory
     * @param newAtoms
     */
    protected static void createAtoms( int numberOfAtoms, AtomBuilderInterface factory, ArrayList<AtomInterface> newAtoms ) {
                
        for (int i = 0; i < numberOfAtoms; i++){
          newAtoms.add( factory.getAtom() );
        }
    }
}
