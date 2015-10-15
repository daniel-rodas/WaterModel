public class ConcreteStateGas extends StateOfMatter 
{
  @Override
    public void ChangeState(Molecule molecule) 
  {
    atoms = molecule.getAtoms();

    for ( int n = 0; n < atoms.size (); n++ )
    {
      a = (Atom) atoms.get(n);

      particles = a.getElectrons();
      processElectrons(particles);

      particles = a.getNeutrons();
      processNeutrons(particles);

      particles = a.getProtons();
      processProtons(particles);
    }
  }

  public void processProtons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.setOscillation( cos(i) );
      p.setRadius( sin(i) + i * 1.2 * random(-i , i) );
      p.setX( p.getPolarX(  p.getTheta() * 0.093, p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 0.037, p.getTheta() * cos(i)  ) );
      p.update();
      p.draw();
    }
  }

  public void processNeutrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.setOscillation( cos(i) );
      p.setRadius( sin(i) + i  );
      p.setX( p.getPolarX(  p.getTheta() * 0.13, p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 0.005, p.getTheta() * cos(i)  ) );
      p.update();
    }
  }

  public void processElectrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.setOscillation( cos(i) );
      p.setRadius( sin(i) + i  );
      p.setX( p.getPolarX(  p.getTheta() * 0.003 ,  p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 0.07  ,  p.getTheta() * cos(i)  ) );
      p.update();
    }
  }
}

