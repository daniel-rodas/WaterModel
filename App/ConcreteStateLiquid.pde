public class ConcreteStateLiquid extends StateOfMatter 
{
  @Override
    public void ChangeState(Molecule molecule) 
  {
    molecule = molecule;
    molecule.x = molecule.x + 10 * cos(frameCount);
    molecule.y = molecule.y + 12 * sin(frameCount);
    atoms = molecule.getAtoms();

    for ( int n = 0; n < atoms.size (); n++ )
    {
      a = (Atom) atoms.get(n);
      a.x = a.x + 1.4 * cos(frameCount);
      a.y = a.y + 1.8 * sin(frameCount);
      fill(120, 120, 255, random(0, 3) );
      ellipse(a.x, a.y, sin(n+1) * 60 , cos(n) * 30 * random(0, 6));

      particles = a.getElectrons();
      processElectrons(particles);

      particles = a.getNeutrons();
      processNeutrons(particles);

      particles = a.getProtons();
      processProtons(particles);
    }
  }

  public MolecularBond weakBonds(Atom atom, MolecularBond bond) {
    throw new UnsupportedOperationException("Not supported yet.");
  }

  public void processProtons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.origin.x = p.origin.x + 0.083 * sin(frameCount);
      p.origin.y = p.origin.y + 0.124 * cos(frameCount);
      p.setOscillation( cos(i) * 0.94 * random(-i, i) );
      p.setRadius( sin(i) + i + 0.6 );
      p.setX( p.getPolarX( p.getRadius() , p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY( p.getRadius() , p.getTheta() * cos(i)  ) );
      p.update();
      p.draw();
    }
  }

  public void processNeutrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      p.origin.x = p.origin.x + 0.05 * cos(frameCount);
      p.origin.y = p.origin.y + 0.24 * sin(frameCount);
      p.setOscillation( cos(i)  * 1.4 * random(-i, i) );
      p.setRadius( sin(i) + i + 0.4  );
      print(p.getTheta() + "\n");
      p.setX( p.getPolarX( p.getRadius() , p.getTheta() * cos(i) ) );
      p.setY( p.getPolarY( p.getRadius() , p.getTheta() * cos(i) ) );
      p.update();
      p.draw();
    }
  }

  public void processElectrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
//      p.origin.x = p.origin.x + 0.003 * cos(frameCount);
//      p.origin.y = p.origin.y + 0.004 * sin(frameCount);
      p.setOscillation( cos(i) * 2 * random(-i, i ) );
      p.setRadius( sin(i) + i + 3 * random(-i, i) );
      p.setX( p.getPolarX(  p.getTheta() * 0.003  * cos(i), p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 0.007  * cos(i), p.getTheta() * cos(i)  ) );
      p.update();
      p.draw();
    }
  }
}

