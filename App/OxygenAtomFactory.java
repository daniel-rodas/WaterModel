
public class OxygenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface {

    protected static int numberOfProtons = 8;
        
    protected static int numberOfElectrons = 8;
        
    protected static int numberOfNeutrons = 8;

    /**
     *
     * @return Atom
     */
    @Override
    public AtomInterface getAtom() {
        AtomBuilderFactory.getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);
        return new OxygenAtom(AtomBuilderFactory.protons, AtomBuilderFactory.electrons, AtomBuilderFactory.neutrons );
    }
    
    
}
