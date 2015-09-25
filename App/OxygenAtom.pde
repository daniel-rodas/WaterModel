
public class OxygenAtom extends Atom implements AtomInterface {
  
  ProtonParticle protonOne;
    
    OxygenAtom( ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ){
        super(prot, elec, neut );
        System.out.println("Oxygen atom.");
    }

    public void combust() {
        System.out.println("Compuseting!");  
    }

    @Override
    public void jump(){
        System.out.println("Oxygen atom.");
    }
    
    public Particle getProtonOne()
    {
      return protonOne = (ProtonParticle) protons.get(0);
    }
}
