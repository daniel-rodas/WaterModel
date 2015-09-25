
public class HydrogenAtomFactory extends AtomBuilderFactory implements AtomBuilderInterface {
    
    /**
     *
     */
    protected int numberOfProtons = 1;
        
    protected int numberOfElectrons = 1;
        
    protected int numberOfNeutrons = 0;

    /**
     *
     * @return Atom
     */
    @Override
    public AtomInterface getAtom() {
//      AtomBuilderFactory.getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);
//      return new HydrogenAtom(AtomBuilderFactory.protons, AtomBuilderFactory.electrons, AtomBuilderFactory.neutrons );


      getParticles(numberOfProtons,numberOfElectrons,numberOfNeutrons);

      return new HydrogenAtom( protons, electrons, neutrons );
    }
}
