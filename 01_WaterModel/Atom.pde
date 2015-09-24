abstract class Atom implements Charge {
  
  int numberOfNeutrons = 1;
  int numberOfProtons = 0;
  int numberOfElectrons = 1;
  int charge = 0;
  Atom[] atoms;
  Particle[] particles;
  
  
  NeutronParticle[] neutrons;
  ProtonParticle[] protons;
  ElectronParticle[] electorns;
  
  Atom(){
//    populateParticles(numberOfNeutrons, neutrons);
//    populateParticles(numberOfProtons);
//    populateParticles(numberOfElectrons);
  }
  
  public abstract Particle[] getParticle();
  public abstract Atom[] getAtom();
  
  protected void populateParticles(int numberOfParticles){
    int originalNumberOfParticles = numberOfParticles ;
    
    for (int i = 0; i < numberOfParticles; numberOfParticles--){
//      neutrons[i] = new P();
    }
    
    numberOfParticles = originalNumberOfParticles ;
  }
  
  public void polarize() {
    
        if (numberOfProtons < numberOfElectrons)
            charge = -1;
        else if (numberOfProtons > numberOfElectrons)
            charge = 1;
        else
            charge = 0;               
    }
    
  public int getCharge(){
    return charge;
  }

}
