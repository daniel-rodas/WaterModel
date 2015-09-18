class OxygenAtom extends Atom {
  
  OxygenAtom(){
    numberOfProtons = 8;
    numberOfElectrons = 8;
    particles[0] = new ProtonParticle();
    particles[1] = new ProtonParticle();
    particles[2] = new ProtonParticle();
    particles[3] = new ProtonParticle();
    particles[4] = new ProtonParticle();
    particles[5] = new ProtonParticle();
    particles[6] = new ProtonParticle();
    particles[7] = new ProtonParticle();

    particles[0] = new ElectronParticle();
    particles[1] = new ElectronParticle();
    particles[2] = new ElectronParticle();
    particles[3] = new ElectronParticle();
    particles[4] = new ElectronParticle();
    particles[5] = new ElectronParticle();
    particles[6] = new ElectronParticle();
    particles[7] = new ElectronParticle();    
  }

  public Atom[] getAtom(){
    return atoms;
  }
  
  public Particle[] getParticle(){
    return particles;
  }
}
