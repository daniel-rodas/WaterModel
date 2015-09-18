class ElectronParticle extends Particle {
  ElectronParticle(){
    particles[0] = new ElectronParticle();
  }
  
  public Particle[] getParticle(){
    return particles;
  }
}
