
public class OxygenAtom extends Atom implements AtomInterface {

  ProtonParticle protonOne;

  OxygenAtom( PVector loc, ArrayList<Particle> prot, ArrayList<Particle> elec, ArrayList<Particle> neut ) {
    super( loc, prot, elec, neut );
  }

  public Particle getProtonOne()
  {
    return protonOne = (ProtonParticle) protons.get(0);
  }
}

