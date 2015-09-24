import processing.core.PApplet;

import java.util.ArrayList;


public class WaterMolecule extends Molecule {

  protected ArrayList<AtomInterface> hydrogens;  
  protected ArrayList<AtomInterface> oxygens;
  private int atomicNumber;

    WaterMolecule(  ArrayList<AtomInterface> hydros, ArrayList<AtomInterface> oxys) {
         hydrogens =  hydros;
         oxygens =  oxys;
    }

    public int getAtomicNumber() {
        return atomicNumber;
    }

    public void talk() {
      
      
    }
    
    public AtomInterface getHydrogen(int i ){
      return hydrogens.get(i);
    }    
    public AtomInterface getOxygen(int i ){
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
