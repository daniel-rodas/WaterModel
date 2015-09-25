
abstract public class Atom implements AtomInterface {

    protected ArrayList<Particle> particles = new ArrayList<Particle>();
    protected ArrayList<Particle> protons = new ArrayList<Particle>();
    protected ArrayList<Particle> electrons = new ArrayList<Particle>();
    protected ArrayList<Particle> neutrons = new ArrayList<Particle>();

    private Object charge;
    
    public Atom( ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ) {
        protons = prot;
        electrons = elec;
        neutrons = neut;

    }
    
    //        Read more: http://javarevisited.blogspot.com/2011/05/example-of-arraylist-in-java-tutorial.html#ixzz3mdE9UR4o
    public ArrayList<Particle> getProtons() {
        
        return protons;
    }

    public ArrayList<Particle> getElectrons() {
        
        return electrons;
    }

    public ArrayList<Particle> getNeutrons() {
        
        return neutrons;
    }
}
