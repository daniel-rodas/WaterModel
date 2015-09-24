

import java.util.ArrayList;

public class AtomBuilderFactory {
    
//    protected static ArrayList<Particle> particles = new ArrayList<Particle>();
    
    protected static ArrayList<Particle> protons = new ArrayList<Particle>();
    protected static ArrayList<Particle> electrons = new ArrayList<Particle>();
    protected static ArrayList<Particle> neutrons = new ArrayList<Particle>();

    public static void getParticles(int numberOfProtons,int numberOfElectrons, int numberOfNeutrons ) {
        createProtonParticles(numberOfProtons, new ProtonFactory() );
        createElectronParticles(numberOfElectrons, new ElectronFactory() );
        createNeutronParticles(numberOfNeutrons, new NeutronFactory() );
    }
        
    protected static void createProtonParticles( int numberOfParticles, ParticleFactory factory ) {
                
        for (int i = 0; i < numberOfParticles; i++){
          protons.add( factory.getParticle() );
        }
    }
        
    protected static void createElectronParticles( int numberOfParticles, ParticleFactory factory ) {
                
        for (int i = 0; i < numberOfParticles; i++){
          electrons.add( factory.getParticle() );
        }
    }
        
    protected static void createNeutronParticles( int numberOfParticles, ParticleFactory factory ) {
                
        for (int i = 0; i < numberOfParticles; i++){
          neutrons.add( factory.getParticle() );
        }
    }
}
