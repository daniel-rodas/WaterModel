

public class Molecule 
{

  protected ArrayList<MolecularBond> bonds  = new ArrayList<MolecularBond>();


  float zoom = 1;
  float angle = 0;
  
  void draw()
  {

    scale(zoom);
    rotate(angle);
  }

  void keyPressed() 
  {
    if (key == CODED)
    {
      if (keyCode == UP)
      {
        zoom += 0.02;
      } else if (keyCode == DOWN)
      {
        zoom -= 0.02;
      } else if (keyCode == RIGHT)
      {
        angle += 0.02;
      } else if (keyCode == LEFT)
      {
        angle -= 0.02;
      }
    }

    if (key == ' ')
    {
      angle = 0;
      zoom = 1;
    }
  }
}

