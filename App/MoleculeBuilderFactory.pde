

public class MoleculeBuilderFactory {
    
    /**
     *
     * @param numberOfAtoms
     * @param factory
     * @param newAtoms
     */
    protected void createAtoms( int numberOfAtoms, AtomBuilderInterface factory, ArrayList<AtomInterface> newAtoms ) {
                
        for (int i = 0; i < numberOfAtoms; i++){
          newAtoms.add( factory.getAtom() );
        }
    }
}
