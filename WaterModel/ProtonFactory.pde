class ProtonFactory implements IParticleFactory {
  // http://www.javaworld.com/article/2077386/learn-java/factory-methods.html
  
  public Particle getParticle() {
            return new ProtonParticle();
      }

}
