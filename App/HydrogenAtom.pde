
public class HydrogenAtom extends Atom implements AtomInterface {
    
    HydrogenAtom( ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ){
        super(prot, elec, neut );
        System.out.println("Hdrogen atom Constructor.");
    }
    
    /**
     *
     */
    @Override
    public void jump(){
        System.out.println("Hdrogen atom.");
    }
    public void sparkle() {

        System.out.println("Sparkle!");
    }
}
