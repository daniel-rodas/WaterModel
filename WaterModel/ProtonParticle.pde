class ProtonParticle extends Particle {
  ProtonParticle(){
    particles[0] = new ProtonParticle();
  }
  
  public Particle[] getParticle(){
    return particles;
  }
}
