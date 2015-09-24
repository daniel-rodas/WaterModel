import processing.core.PApplet;

public class ElectronFactory implements ParticleFactory {

    public Particle getParticle() {
        return new ElectronParticle( new ParticlePApplet() );
    }
}
