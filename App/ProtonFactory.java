import processing.core.PApplet;

public class ProtonFactory implements ParticleFactory {

    public Particle getParticle() {
        return new ProtonParticle( new ParticlePApplet() );
    }
}
