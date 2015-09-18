class NeutronParticle extends Particle {
  NeutronParticle(){
    particles[0] = new NeutronParticle();
  }
  
  public Particle[] getParticle(){
    return particles;
  }
}
