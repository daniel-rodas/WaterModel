
public class WaterMolecule extends Molecule {

  protected ArrayList<AtomInterface> hydrogens;  
  protected ArrayList<AtomInterface> oxygens;
  private int atomicNumber;

  WaterMolecule(  ArrayList<AtomInterface> hydros, ArrayList<AtomInterface> oxys) {
    hydrogens =  hydros;
    oxygens =  oxys;
  }

  public void init()
  {
  }

  public int getAtomicNumber() {
    return atomicNumber;
  }


  public void draw() 
  {
    super.draw();
    print("Hellooooo atoms !");

    for (int i = 0; i < hydrogens.size(); i++) 
    {
      print(i);
      print("Drawling hydrogen !");
      
      HydrogenAtom hydrogen = (HydrogenAtom) hydrogens.get(i);
      hydrogen.draw();
    }
    
    for (int i = 0; i < oxygens.size(); i++) 
    {
      print(i);
      print("Drawling oxygen !");
      OxygenAtom oxygen = (OxygenAtom) oxygens.get(i);
      oxygen.draw();
    }
  }

  public AtomInterface getHydrogen(int i ) {
    return hydrogens.get(i);
  }    
  public AtomInterface getOxygen(int i ) {
    return oxygens.get(i);
  }

  public AtomInterface getHydrogenOne()
  {
    return hydrogens.get(0);
  }

  public AtomInterface getHydrogenTwo()
  {
    return hydrogens.get(1);
  }

  public AtomInterface getOxygenOne()
  {
    return oxygens.get(0);
  }
}

