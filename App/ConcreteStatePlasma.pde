public class ConcreteStatePlasma extends StateOfMatter 
{
  @Override
    public void ChangeState(Molecule molecule) 
  {
    atoms = molecule.getAtoms();

    for ( int n = 0; n < atoms.size (); n++ )
    {
      a = (Atom) atoms.get(n);
      fill(240, 180, 55, random(0, 3) );
      rectMode(CENTER);
      ellipse(a.x, a.y, sin(n+1) * 60 , cos(n) * 30 * random(0, 20));
      
      fill(220, 220, 155, random(0, 3) );
      rectMode(RADIUS);
      ellipse(a.x, a.y, sin(n+1) * 30 , cos(n) * 10 * random(0, 10));
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
      print("proton plasma");
      p = particle.get(i);
      p.setOscillation( cos(i) * 1.2 * random(-i , i));
      p.setRadius( sin(i) + i * 1.2 * random(-i , i)  );
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
      p.setOscillation( cos(i) * 1.2 * random(-i , i));
      p.setRadius( sin(i) + i  );
      p.setX( p.getPolarX(  p.getTheta() * 0.093, p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * 2.037, p.getTheta() * cos(i)  ) );
      p.update();
      p.draw();
    }
  }

  public void processElectrons( ArrayList<Particle> particle )
  {
    for ( int i = 0; i < particle.size (); i++ )
    {      
      p = particle.get(i);
      p.setOscillation( cos(i) * 1.2 * random(-i , i));
      p.setRadius( sin(i) + i  );
      p.setX( p.getPolarX(  p.getTheta() * 0.093, p.getTheta() * cos(i)  ) );
      p.setY( p.getPolarY(  p.getTheta() * PI, p.getTheta() * cos(i)  ) );
      p.update();
      p.draw();
    }
  }
}

