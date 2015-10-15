import java.util.Iterator;

public abstract class StateOfMatter 
{
  MolecularBond bond;
  Molecule molecule;
  
  ArrayList<Particle> particles ;
  Particle p;
  
  Atom a;
  protected ArrayList<AtomInterface> atoms = new ArrayList<AtomInterface>();
  public abstract void ChangeState(Molecule molecule);
  
  protected abstract void processProtons( ArrayList<Particle> particle );
  protected abstract void processNeutrons( ArrayList<Particle> particle );
  protected abstract void processElectrons( ArrayList<Particle> particle );
}

