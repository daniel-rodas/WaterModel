class WaterMolecule extends Molecule {

  WaterMolecule()
  {
    atoms[0] = new HydrogenAtom();
    atoms[1] = new HydrogenAtom();
    atoms[2] = new OxygenAtom();
  }
  
  public Atom[] getAtom(){
    return atoms;
  }
  
  public void display( int X, int Y){
    
    println("Water Molecule is dispaying...");
  }
}
