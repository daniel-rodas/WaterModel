import processing.core.PApplet;

public class NeutronFactory implements ParticleFactory {

    public Particle getParticle() {
        return new NeutronParticle( new ParticlePApplet() );
    }
}
