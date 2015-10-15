public class ConcreteStateSolid extends StateOfMatter 
{
  @Override
    public void ChangeState(Molecule molecule) 
  {
    atoms = molecule.getAtoms();
    stroke(204, 202, 250, 8);
    fill(189, 200, 250, 4);
    beginShape(TRIANGLE_STRIP);
    for ( int h = 0; h < atoms.size (); h++ )
    {
      a = (Atom) atoms.get(h);
      vertex(a.x, a.y);
    }
    endShape();    
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
      p.setTheta(TWO_PI);
      p.setX( p.getPolarX( 2 * sin(i), random(360) ) );
      p.setY( p.getPolarY( 2 * sin(i), random(360) ) );
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
      p.setTheta(TWO_PI);
      p.setX( p.getPolarX( 3 * sin(i), random(360) ) );
      p.setY( p.getPolarY( 10 * sin(i), random(360) ) );
    }
  }

  public void processElectrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {
      p = particle.get(i);
      
      p.setOscillation( 0.4 * cos(i) * random(-i, i)  );
      p.setX( p.getPolarX(  p.getTheta() * 0.03, random(-1 * 0 ) + cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 0.007, random(-2 * 2 ) + sin(i)  ) );
      p.update();
      p.draw();
    }
  }
}

