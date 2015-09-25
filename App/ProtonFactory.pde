
public class ProtonFactory implements ParticleFactory {

    public Particle getParticle() {
        return new ProtonParticle();
    }
}
