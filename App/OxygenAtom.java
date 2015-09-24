
import java.util.ArrayList;

public class OxygenAtom extends Atom implements AtomInterface {

    
    OxygenAtom( ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ){
        super(prot, elec, neut );
        System.out.println("Oxygen atom.");
    }

    /**
     *
     */
    public void combust() {
                      System.out.println(" | 1  2  3  4  5  6  7  8  9");
        System.out.println("----------------------------");
        System.out.println("HA!");
        System.out.println("Compuseting!");  
    }

    /**
     *
     */
    @Override
    public void jump(){
        System.out.println("Oxygen atom.");
    }
    
        
    public Particle getProtonOne()
    {
      return protons.get(0);
    }
}
