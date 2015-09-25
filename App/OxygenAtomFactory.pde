
public class OxygenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface {

    protected int numberOfProtons = 8;
        
    protected int numberOfElectrons = 8;
        
    protected int numberOfNeutrons = 8;

    /**
     *
     * @return Atom
     */
    @Override
    public AtomInterface getAtom() {
//        AtomBuilderFactory.getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);
//        return new OxygenAtom(AtomBuilderFactory.protons, AtomBuilderFactory.electrons, AtomBuilderFactory.neutrons );
        getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);
        return new OxygenAtom(protons, electrons, neutrons );
    }
    
    
}
