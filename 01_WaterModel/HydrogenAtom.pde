class HydrogenAtom extends Atom {
  HydrogenAtom(){
    numberOfProtons = 1;
    numberOfElectrons = 1;
    
    particles[0] = new ProtonParticle();
    particles[1] = new ElectronParticle();
  }
  
  public Atom[] getAtom(){
    return atoms;
  }
  
  public Particle[] getParticle(){
    
    return particles;
  }
}

