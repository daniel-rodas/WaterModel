
public class HydrogenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface {
    
    /**
     *
     */
    protected static int numberOfProtons = 1;
        
    protected static int numberOfElectrons = 1;
        
    protected static int numberOfNeutrons = 0;

    /**
     *
     * @return Atom
     */
    @Override
    public AtomInterface getAtom() {
        AtomBuilderFactory.getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);
        return new HydrogenAtom(AtomBuilderFactory.protons, AtomBuilderFactory.electrons, AtomBuilderFactory.neutrons );
    }
}
